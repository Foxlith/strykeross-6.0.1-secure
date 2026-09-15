.class public final Lcom/stryker/terminal/component/session/ShellProfile;
.super Lcom/stryker/terminal/component/profile/NeoProfile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/session/ShellProfile$Companion;
    }
.end annotation


# static fields
.field private static final AUTO_COMPLETION:Ljava/lang/String; = "auto-completion"

.field private static final BACK_KEY_TO_ESC:Ljava/lang/String; = "back-key-esc"

.field private static final BELL:Ljava/lang/String; = "bell"

.field private static final COLOR_SCHEME:Ljava/lang/String; = "color-scheme"

.field public static final Companion:Lcom/stryker/terminal/component/session/ShellProfile$Companion;

.field private static final EXECVE_WRAPPER:Ljava/lang/String; = "execve-wrapper"

.field private static final EXTRA_KEYS:Ljava/lang/String; = "extra-keys"

.field private static final FONT:Ljava/lang/String; = "font"

.field private static final INITIAL_COMMAND:Ljava/lang/String; = "init-command"

.field private static final LOGIN_SHELL:Ljava/lang/String; = "login-shell"

.field public static final PROFILE_META_NAME:Ljava/lang/String; = "profile-shell"

.field private static final SPECIAL_VOLUME_KEYS:Ljava/lang/String; = "special-volume-keys"

.field private static final WORD_BASED_IME:Ljava/lang/String; = "word-based-ime"


# instance fields
.field private enableAutoCompletion:Z

.field private enableBackKeyToEscape:Z

.field private enableBell:Z

.field private enableExecveWrapper:Z

.field private enableExtraKeys:Z

.field private enableSpecialVolumeKeys:Z

.field private enableWordBasedIme:Z

.field private initialCommand:Ljava/lang/String;

.field private loginShell:Ljava/lang/String;

.field private profileColorScheme:Ljava/lang/String;

.field private profileFont:Ljava/lang/String;

.field private final profileMetaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/session/ShellProfile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/session/ShellProfile$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/component/session/ShellProfile;->Companion:Lcom/stryker/terminal/component/session/ShellProfile$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/stryker/terminal/component/profile/NeoProfile;-><init>()V

    const-string v0, "profile-shell"

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileMetaName:Ljava/lang/String;

    const-string v0, "bash"

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->loginShell:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->initialCommand:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExecveWrapper:Z

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExtraKeys:Z

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const-class v1, Lcom/stryker/terminal/component/font/FontComponent;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v1

    check-cast v1, Lcom/stryker/terminal/component/font/FontComponent;

    const-class v5, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-static {v0, v5, v2, v3, v4}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/font/FontComponent;->getCurrentFontName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileFont:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getCurrentColorSchemeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileColorScheme:Ljava/lang/String;

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->getLoginShellPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->loginShell:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->getInitialCommand()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->initialCommand:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->isBellEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBell:Z

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->isExecveWrapperEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExecveWrapper:Z

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->isSpecialVolumeKeysEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableSpecialVolumeKeys:Z

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->isAutoCompletionEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableAutoCompletion:Z

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->isBackButtonBeMappedToEscapeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBackKeyToEscape:Z

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->isExtraKeysEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExtraKeys:Z

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->isWordBasedImeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableWordBasedIme:Z

    return-void
.end method


# virtual methods
.method public final getEnableAutoCompletion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableAutoCompletion:Z

    return v0
.end method

.method public final getEnableBackKeyToEscape()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBackKeyToEscape:Z

    return v0
.end method

.method public final getEnableBell()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBell:Z

    return v0
.end method

.method public final getEnableExecveWrapper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExecveWrapper:Z

    return v0
.end method

.method public final getEnableExtraKeys()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExtraKeys:Z

    return v0
.end method

.method public final getEnableSpecialVolumeKeys()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableSpecialVolumeKeys:Z

    return v0
.end method

.method public final getEnableWordBasedIme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableWordBasedIme:Z

    return v0
.end method

.method public final getInitialCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->initialCommand:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoginShell()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->loginShell:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileColorScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileColorScheme:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileFont:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileMetaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileMetaName:Ljava/lang/String;

    return-object v0
.end method

.method public onConfigLoaded(Lt4/a;)V
    .locals 2

    .line 1
    const-string v0, "configVisitor"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/stryker/terminal/component/profile/NeoProfile;->onConfigLoaded(Lt4/a;)V

    const-string v0, "login-shell"

    iget-object v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->loginShell:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileString(Lt4/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->loginShell:Ljava/lang/String;

    const-string v0, "init-command"

    iget-object v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->initialCommand:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileString(Lt4/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->initialCommand:Ljava/lang/String;

    const-string v0, "bell"

    iget-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBell:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileBoolean(Lt4/a;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBell:Z

    const-string v0, "execve-wrapper"

    iget-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExecveWrapper:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileBoolean(Lt4/a;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExecveWrapper:Z

    const-string v0, "special-volume-keys"

    iget-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableSpecialVolumeKeys:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileBoolean(Lt4/a;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableSpecialVolumeKeys:Z

    const-string v0, "auto-completion"

    iget-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableAutoCompletion:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileBoolean(Lt4/a;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableAutoCompletion:Z

    const-string v0, "back-key-esc"

    iget-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBackKeyToEscape:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileBoolean(Lt4/a;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBackKeyToEscape:Z

    const-string v0, "extra-keys"

    iget-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExtraKeys:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileBoolean(Lt4/a;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExtraKeys:Z

    const-string v0, "word-based-ime"

    iget-boolean v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableWordBasedIme:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileBoolean(Lt4/a;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableWordBasedIme:Z

    const-string v0, "font"

    iget-object v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileFont:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileString(Lt4/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileFont:Ljava/lang/String;

    const-string v0, "color-scheme"

    iget-object v1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileColorScheme:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileString(Lt4/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileColorScheme:Ljava/lang/String;

    return-void
.end method

.method public final setEnableAutoCompletion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableAutoCompletion:Z

    return-void
.end method

.method public final setEnableBackKeyToEscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBackKeyToEscape:Z

    return-void
.end method

.method public final setEnableBell(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableBell:Z

    return-void
.end method

.method public final setEnableExecveWrapper(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExecveWrapper:Z

    return-void
.end method

.method public final setEnableExtraKeys(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableExtraKeys:Z

    return-void
.end method

.method public final setEnableSpecialVolumeKeys(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableSpecialVolumeKeys:Z

    return-void
.end method

.method public final setEnableWordBasedIme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->enableWordBasedIme:Z

    return-void
.end method

.method public final setInitialCommand(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->initialCommand:Ljava/lang/String;

    return-void
.end method

.method public final setLoginShell(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->loginShell:Ljava/lang/String;

    return-void
.end method

.method public final setProfileColorScheme(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileColorScheme:Ljava/lang/String;

    return-void
.end method

.method public final setProfileFont(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellProfile;->profileFont:Ljava/lang/String;

    return-void
.end method
