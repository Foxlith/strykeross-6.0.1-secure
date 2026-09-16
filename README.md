# StrykerOSS 6.0.1 — Secure (APK + fuentes)

Versión endurecida y mejorada de **StrykerOSS 6.0.1** para uso exclusivo en
**laboratorios propios o redes con autorización explícita**.

> ⚠️ **Aviso legal / ético:** este proyecto es exclusivamente educativo.
> Realizar ataques WPA/WPS, deauth o el uso de credenciales capturadas contra
> redes ajenas sin consentimiento es ilegal. Úsalo solo en tu propio equipo de
> pruebas o entornos autorizados. El autor no se hace responsable de un mal uso.

---

## Descarga

- **APK firmado:** `StrykerOSS-6.0.1-secure-v2.apk` (firmado debug,
  compatible con instalación desde "orígenes desconocidos").
- Requisitos: Android con **root** o **rootless (chroot/Kali NetHunter)**,
  y las herramientas de aire-ng (airodump-ng / aireplay-ng / airmon-ng) en el
  entorno de trabajo de Stryker.

## Cambios incluidos

### F1 — Seguridad (código ofuscado con R8, parches en smali)

1. **Decoder de SSID seguro** (`o4/a.smali`): se eliminó la evaluación de
   comandos shell (`echo -e "SSID: " ...`) del árbol ofuscado y se reemplazó
   por un decoder Java puro (`java.io.ByteArrayOutputStream` + `new String(..., "UTF-8")`)
   que interpreta secuencias `\xNN` **sin ejecutar shell** (previene inyección de comandos
   vía nombre de red).
2. **Filtro de caracteres de control**: el SSID que llega al diálogo se valida
   y rechaza si contiene bytes `0x00–0x1F` o `0x7F` (evita escape de la UI / logs).
   No afecta SSIDs UTF-8 legítimos.
3. **Saneado de `archiveCapture`** (verificado presente en el APK): solo
   caracteres `[A-Za-z0-9._-]`, tope de 120 caracteres.

### F2 — Ataques por red (parches en smali)

4. **Deauth dirigido** (`o4/p.smali` → `onFinished`): al capturar el
   handshake/PMKID, el deauth broadcast (`aireplay-ng -0 0 -a <bssid>`) se
   **detiene automáticamente** para no re-keyear el AP y dejar el handshake
   capturado válido para crackear.
5. **Restauración de monitor mode al cancelar** (`o4/p.smali` → `onCanceled`):
   cuando el ataque se cancela (usuario, error crítico o "target never showed
   up"), las interfaces (handshake y deauth) vuelven a modo managed
   (`Ll4/m;->b` = `airmon-ng stop` + `iw ... set type managed`), evitando
   quedarte sin WiFi en el móvil tras un intento.
6. **Autoconectar credencial guardada** (`t2/o.smali` + `t2/m.smali`):
   en la lista **"saved networks"** del dashboard, un **toque en la tarjeta**
   conecta inmediatamente con el SSID+contraseña guardados
   (usa la API Android `WifiManager.addNetwork/enableNetwork/reconnect`,
   `Ll4/l;->k`), con notificación visual. El toque largo sigue borrando la red.

### F3 — Fix crash de la terminal en español (bug de fábrica)

7. **`device_type` ya no se traduce** (`res/values-es/strings.xml`): el enum
   `de.mrapp.android.util.DisplayUtil$DeviceType` se resolvía con
   `context.getString(R.string.device_type)`, y en español la cadena era
   `"teléfono"` en vez de `"phone"` → `IllegalArgumentException
   (Invalid enum value) → crash-loop del TabSwitcher al abrir la terminal.
   Se eliminó la entrada localizada de `values-es`; el valor por defecto
   `"phone"` aplica en español y `values-sw600dp`/`values-sw720dp` (`phablet`/
   `tablet`) siguen intactos para pantallas grandes.
8. **`DeviceType.fromValue` blindado** (`DisplayUtil$DeviceType.smali`): si
   algún otro locale/localización devuelve un valor no mapeado, se devuelve
   `PHONE` en lugar de lanzar la excepción (la terminal nunca más entra en
   bucle de cierre por esto).

## Estructura

```
stryker-src/                    Fuentes Java de referencia (sin modificar)
stryker-decompiled/             Árbol smali ofuscado (con los parches F1+F2)
StrykerOSS-6.0.1-secure-v2.apk      APK final firmado (incluye F3)
```

## Verificación de los parches (contra el APK re-decodificado)

| Patch  | Patrón de verificación               | Resultado |
|--------|--------------------------------------|-----------|
| F1.1   | `ByteArrayOutputStream` en smali/o4/a.smali | 7 |
| F1.2   | `const/16 v4, 0x7f` en smali/o4/a.smali     | 1 |
| F2.2   | `Deauth stopped - handshake already captured` | 1 |
| F2.3   | `Ll4/m;->b(...)` en `o4/p.c()`               | presente |
| F2.1   | clase `Lt2/o;` + `Ll4/l;->k(...)`            | presente |
| F3.1   | `device_type` ausente en `res/values-es/strings.xml` | OK |
| F3.2   | `DisplayUtil$DeviceType;->PHONE` en `fromValue` (sin `IllegalArgumentException`) | presente |