package com.stryker.terminal.component

import io.neolang.frontend.ConfigVisitor
import com.stryker.terminal.component.config.ConfigureComponent
import com.stryker.terminal.utils.NLog
import java.io.File
import java.io.FileFilter

interface ConfigFileBasedObject {
  @Throws(RuntimeException::class)
  fun onConfigLoaded(configVisitor: ConfigVisitor)
}

abstract class ConfigFileBasedComponent<out T : ConfigFileBasedObject>(protected val baseDir: String) : NeoComponent {
  companion object {
    private val TAG = ConfigFileBasedComponent::class.java.simpleName

    val NEOLANG_FILTER = FileFilter {
      it.extension == "nl"
    }
  }

  open val checkComponentFileWhenObtained = false

  override fun onServiceInit() {
    ensureBaseDir()
    onCheckComponentFiles()
  }

  /**
   * Makes sure [baseDir] is a directory before the component starts reading from it.
   *
   * A bare mkdirs() is not enough. exists() follows symlinks, so a link pointing nowhere reports
   * "absent" while the mkdir that follows fails with EEXIST, and a plain file sitting where a
   * directory belongs fails the same way — either one at any level of the path takes the whole
   * terminal down before it opens, with nothing in the message but the path. Walk the chain,
   * clear whatever is occupying a directory slot, and retry.
   *
   * A directory that still cannot be made is reported, not thrown: every onCheckComponentFiles()
   * below already falls back to its built-in defaults when the config files are unreadable, so
   * the terminal can open with default colours and keys. Throwing here instead turned a
   * cosmetic problem into "the terminal will not start at all".
   */
  private fun ensureBaseDir() {
    val dir = File(baseDir)
    if (dir.isDirectory) return

    val chain = generateSequence(dir.absoluteFile) { it.parentFile }.toList().asReversed()
    for (node in chain) {
      if (node.isDirectory) continue
      // Occupied by a file, or by a link whose target is gone: the parent listing still carries
      // the name even though exists() says otherwise.
      if (node.exists() || node.parentFile?.list()?.contains(node.name) == true) {
        NLog.w(TAG, "Clearing stale entry at ${node.absolutePath}")
        node.delete()
      }
      node.mkdir()
    }
    if (dir.isDirectory) return

    val parent = dir.absoluteFile.parentFile
    NLog.e(
      TAG,
      "Cannot create component config directory: ${dir.absolutePath}"
        + " (parent exists=${parent?.exists()}, isDir=${parent?.isDirectory}"
        + ", writable=${parent?.canWrite()}, freeBytes=${parent?.freeSpace ?: -1})"
        + " — continuing with built-in defaults"
    )
  }

  override fun onServiceDestroy() {
  }

  override fun onServiceObtained() {
    if (checkComponentFileWhenObtained) {
      onCheckComponentFiles()
    }
  }

  fun loadConfigure(file: File): T? {
    return try {
      val loaderService = ComponentManager.getComponent<ConfigureComponent>()
      val configure = loaderService.newLoader(file).loadConfigure()
        ?: throw RuntimeException("Parse configuration failed.")

      val configVisitor = configure.getVisitor()
      val componentObject = onCreateComponentObject(configVisitor)
      componentObject.onConfigLoaded(configVisitor)
      componentObject
    } catch (e: RuntimeException) {
      NLog.e(TAG, "Failed to load config: ${file.absolutePath}: ${e.localizedMessage}")
      null
    }
  }

  abstract fun onCheckComponentFiles()

  abstract fun onCreateComponentObject(configVisitor: ConfigVisitor): T
}

