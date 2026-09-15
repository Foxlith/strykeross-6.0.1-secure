.class public final Lcom/stryker/terminal/utils/Terminals;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/utils/Terminals;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/utils/Terminals;

    invoke-direct {v0}, Lcom/stryker/terminal/utils/Terminals;-><init>()V

    sput-object v0, Lcom/stryker/terminal/utils/Terminals;->INSTANCE:Lcom/stryker/terminal/utils/Terminals;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic setupTerminalView$default(Lcom/stryker/terminal/utils/Terminals;Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/utils/Terminals;->setupTerminalView(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V

    return-void
.end method


# virtual methods
.method public final createSession(Landroid/content/Context;Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;
    .locals 5

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameter"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lcom/stryker/terminal/component/session/SessionComponent;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/session/SessionComponent;

    invoke-virtual {v0, p1, p2}, Lcom/stryker/terminal/component/session/SessionComponent;->createSession(Landroid/content/Context;Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/component/session/ShellTermSession;

    move-result-object p1

    return-object p1
.end method

.method public final createSession(Lf/q;Lcom/stryker/terminal/component/session/XParameter;)Lcom/stryker/terminal/component/session/XSession;
    .locals 5

    .line 2
    const-string v0, "activity"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameter"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-class v3, Lcom/stryker/terminal/component/session/SessionComponent;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/session/SessionComponent;

    invoke-virtual {v0, p1, p2}, Lcom/stryker/terminal/component/session/SessionComponent;->createSession(Landroid/content/Context;Lcom/stryker/terminal/component/session/XParameter;)Lcom/stryker/terminal/component/session/XSession;

    move-result-object p1

    return-object p1
.end method

.method public final escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x6

    const-string v6, "\"\\$`!"

    invoke-static {v6, v4, v2, v2, v5}, Lq5/h;->t1(Ljava/lang/CharSequence;CIZI)I

    move-result v5

    if-ltz v5, :cond_1

    const/16 v5, 0x5c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.toString()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setupExtraKeysView(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 5

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const-class v1, Lcom/stryker/terminal/component/font/FontComponent;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/font/FontComponent;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/font/FontComponent;->getCurrentFont()Lcom/stryker/terminal/component/font/NeoFont;

    move-result-object v1

    invoke-virtual {v0, v4, p1, v1}, Lcom/stryker/terminal/component/font/FontComponent;->applyFont(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/component/font/NeoFont;)V

    return-void
.end method

.method public final setupTerminalView(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->getFontSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setTextSize(I)V

    :goto_0
    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-class v3, Lcom/stryker/terminal/component/font/FontComponent;

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/font/FontComponent;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/font/FontComponent;->getCurrentFont()Lcom/stryker/terminal/component/font/NeoFont;

    move-result-object v1

    invoke-virtual {v0, p1, v4, v1}, Lcom/stryker/terminal/component/font/FontComponent;->applyFont(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/component/font/NeoFont;)V

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setTerminalViewClient(Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V

    :cond_1
    return-void
.end method
