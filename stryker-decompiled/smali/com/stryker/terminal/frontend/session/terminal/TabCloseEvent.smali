.class public final Lcom/stryker/terminal/frontend/session/terminal/TabCloseEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final termTab:Lcom/stryker/terminal/ui/term/TermTab;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/term/TermTab;)V
    .locals 1

    const-string v0, "termTab"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TabCloseEvent;->termTab:Lcom/stryker/terminal/ui/term/TermTab;

    return-void
.end method


# virtual methods
.method public final getTermTab()Lcom/stryker/terminal/ui/term/TermTab;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TabCloseEvent;->termTab:Lcom/stryker/terminal/ui/term/TermTab;

    return-object v0
.end method
