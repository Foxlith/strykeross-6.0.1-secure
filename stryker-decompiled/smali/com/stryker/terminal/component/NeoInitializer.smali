.class public final Lcom/stryker/terminal/component/NeoInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/component/NeoInitializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/NeoInitializer;

    invoke-direct {v0}, Lcom/stryker/terminal/component/NeoInitializer;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/NeoInitializer;->INSTANCE:Lcom/stryker/terminal/component/NeoInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/utils/NLog;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/NeoInitializer;->initComponents()V

    return-void
.end method

.method public final initComponents()V
    .locals 5

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const-class v1, Lcom/stryker/terminal/component/config/ConfigureComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const-class v1, Lcom/stryker/terminal/component/codegen/CodeGenComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const-class v1, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const-class v1, Lcom/stryker/terminal/component/font/FontComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const-class v1, Lcom/stryker/terminal/component/userscript/UserScriptComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const-class v1, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const-class v1, Lcom/stryker/terminal/component/completion/CompletionComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const-class v1, Lcom/stryker/terminal/component/pm/PackageComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const-class v1, Lcom/stryker/terminal/component/session/SessionComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const-class v1, Lcom/stryker/terminal/component/profile/ProfileComponent;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ComponentManager;->registerComponent(Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/profile/ProfileComponent;

    const-string v1, "profile-shell"

    const-class v2, Lcom/stryker/terminal/component/session/ShellProfile;

    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/component/profile/ProfileComponent;->registerProfile(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
