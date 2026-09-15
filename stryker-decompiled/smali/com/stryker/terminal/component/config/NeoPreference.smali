.class public final Lcom/stryker/terminal/component/config/NeoPreference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

.field public static final KEY_CURRENT_SESSION:Ljava/lang/String; = "neoterm_service_current_session"

.field public static final KEY_FONT_SIZE:Ljava/lang/String; = "neoterm_general_font_size"

.field public static final KEY_HAPPY_EGG:Ljava/lang/String; = "neoterm_fun_happy"

.field public static final KEY_SOURCES:Ljava/lang/String; = "neoterm_package_enabled_sources"

.field public static final KEY_SYSTEM_SHELL:Ljava/lang/String; = "neoterm_core_system_shell"

.field private static MAX_FONT_SIZE:I = 0x0

.field private static MIN_FONT_SIZE:I = 0x0

.field public static final VALUE_HAPPY_EGG_TRIGGER:I = 0x8

.field private static preference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-direct {v0}, Lcom/stryker/terminal/component/config/NeoPreference;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final symlinkLoginShell(Ljava/lang/String;)V
    .locals 3

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/shell"

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1, v0}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1c0

    invoke-static {v0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to symlink login shell: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Preference"

    invoke-virtual {v0, v2, v1}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public final findLoginProgram(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "loginProgramName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr/bin"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getCurrentSession(Lcom/stryker/terminal/services/NeoTermService;)Lcom/stryker/terminal/backend/TerminalSession;
    .locals 6

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "neoterm_service_current_session"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stryker/terminal/services/NeoTermService;->getSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/stryker/terminal/backend/TerminalSession;

    iget-object v5, v5, Lcom/stryker/terminal/backend/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-static {v5, v0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    check-cast v1, Lcom/stryker/terminal/backend/TerminalSession;

    return-object v1
.end method

.method public final getFontSize()I
    .locals 2

    const-string v0, "neoterm_general_font_size"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getInitialCommand()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_general_initial_command:I

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLoginShellName()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_general_shell:I

    const-string v1, "bash"

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLoginShellPath()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/stryker/terminal/component/config/NeoPreference;->getLoginShellName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/shell"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/component/config/NeoPreference;->findLoginProgram(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    const-string v2, "bash"

    invoke-virtual {v0, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->setLoginShellName(Ljava/lang/String;)Z

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/bin/bash"

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/config/NeoPreference;->symlinkLoginShell(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final getMAX_FONT_SIZE()I
    .locals 1

    sget v0, Lcom/stryker/terminal/component/config/NeoPreference;->MAX_FONT_SIZE:I

    return v0
.end method

.method public final getMIN_FONT_SIZE()I
    .locals 1

    sget v0, Lcom/stryker/terminal/component/config/NeoPreference;->MIN_FONT_SIZE:I

    return v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/stryker/terminal/component/config/NeoPreference;->MIN_FONT_SIZE:I

    const/16 p1, 0x100

    sput p1, Lcom/stryker/terminal/component/config/NeoPreference;->MAX_FONT_SIZE:I

    new-instance p1, Ljava/io/File;

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/etc/apt/sources.list"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lc3/a;->j(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lc3/a;->B(Ljava/nio/file/Path;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lq5/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lq5/h;->R1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    const-string v2, " "

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Lq5/h;->I1(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "deb"

    invoke-static {v0, v2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v2, Lcom/stryker/terminal/R$string;->key_package_source:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final isAutoCompletionEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_general_auto_completion:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isBackButtonBeMappedToEscapeEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_generaL_backspace_map_to_esc:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isBellEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_general_bell:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isExecveWrapperEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_general_use_execve_wrapper:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isExplicitExtraKeysWeightEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_ui_eks_weight_explicit:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isExtraKeysEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_ui_eks_enabled:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isFullScreenEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_ui_fullscreen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isHideToolbarEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_ui_hide_toolbar:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isNextTabEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_ui_next_tab_anim:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isSpecialVolumeKeysEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_general_volume_as_control:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final isWordBasedImeEnabled()Z
    .locals 2

    sget v0, Lcom/stryker/terminal/R$string;->key_general_enable_word_based_ime:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public final loadBoolean(IZ)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final loadBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final loadInt(II)I
    .locals 1

    .line 1
    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/component/config/NeoPreference;->loadInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final loadInt(Ljava/lang/String;I)I
    .locals 1

    .line 2
    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final loadString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/component/config/NeoPreference;->loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final loadString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public final setLoginShellName(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->findLoginProgram(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget v0, Lcom/stryker/terminal/R$string;->key_general_shell:I

    invoke-virtual {p0, v0, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->symlinkLoginShell(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final store(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "value"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "App.get().getString(key)"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/component/config/NeoPreference;->store(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final store(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    const-string v0, "key"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final storeCurrentSession(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->preference:Landroid/content/SharedPreferences;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "neoterm_service_current_session"

    iget-object p1, p1, Lcom/stryker/terminal/backend/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final validateFontSize(I)I
    .locals 2

    sget v0, Lcom/stryker/terminal/component/config/NeoPreference;->MIN_FONT_SIZE:I

    sget v1, Lcom/stryker/terminal/component/config/NeoPreference;->MAX_FONT_SIZE:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
