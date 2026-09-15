.class public final Lcom/stryker/terminal/ui/term/SessionRemover;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/ui/term/SessionRemover;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/ui/term/SessionRemover;

    invoke-direct {v0}, Lcom/stryker/terminal/ui/term/SessionRemover;-><init>()V

    sput-object v0, Lcom/stryker/terminal/ui/term/SessionRemover;->INSTANCE:Lcom/stryker/terminal/ui/term/SessionRemover;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final removeFinishedSession(Lcom/stryker/terminal/services/NeoTermService;Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/stryker/terminal/services/NeoTermService;->removeTermSession(Lcom/stryker/terminal/backend/TerminalSession;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private final removeFinishedSession(Lcom/stryker/terminal/services/NeoTermService;Lcom/stryker/terminal/component/session/XSession;)V
    .locals 0

    .line 2
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/stryker/terminal/services/NeoTermService;->removeXSession(Lcom/stryker/terminal/component/session/XSession;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final removeSession(Lcom/stryker/terminal/services/NeoTermService;Lcom/stryker/terminal/ui/term/TermTab;)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalSession;->finishIfRunning()V

    :cond_0
    invoke-virtual {p2}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/ui/term/SessionRemover;->removeFinishedSession(Lcom/stryker/terminal/services/NeoTermService;Lcom/stryker/terminal/backend/TerminalSession;)V

    invoke-virtual {p2}, Lcom/stryker/terminal/ui/term/TermTab;->cleanup()V

    return-void
.end method

.method public final removeXSession(Lcom/stryker/terminal/services/NeoTermService;Lcom/stryker/terminal/ui/term/XSessionTab;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/stryker/terminal/ui/term/XSessionTab;->getSession()Lcom/stryker/terminal/component/session/XSession;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/ui/term/SessionRemover;->removeFinishedSession(Lcom/stryker/terminal/services/NeoTermService;Lcom/stryker/terminal/component/session/XSession;)V

    return-void
.end method
