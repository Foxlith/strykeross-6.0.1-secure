.class public final Lcom/stryker/terminal/component/completion/CompletionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/CompletionCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private scoreMarker:Lcom/stryker/terminal/component/completion/MarkScoreListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/stryker/terminal/component/completion/MarkScoreListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/CompletionCandidate;",
            ">;",
            "Lcom/stryker/terminal/component/completion/MarkScoreListener;",
            ")V"
        }
    .end annotation

    const-string v0, "candidates"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scoreMarker"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/completion/CompletionResult;->candidates:Ljava/util/List;

    iput-object p2, p0, Lcom/stryker/terminal/component/completion/CompletionResult;->scoreMarker:Lcom/stryker/terminal/component/completion/MarkScoreListener;

    return-void
.end method


# virtual methods
.method public final getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/CompletionCandidate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/CompletionResult;->candidates:Ljava/util/List;

    return-object v0
.end method

.method public final getScoreMarker()Lcom/stryker/terminal/component/completion/MarkScoreListener;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/CompletionResult;->scoreMarker:Lcom/stryker/terminal/component/completion/MarkScoreListener;

    return-object v0
.end method

.method public final hasResult()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/CompletionResult;->candidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final markScore(I)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/CompletionResult;->scoreMarker:Lcom/stryker/terminal/component/completion/MarkScoreListener;

    invoke-interface {v0, p1}, Lcom/stryker/terminal/component/completion/MarkScoreListener;->onMarkScore(I)V

    return-void
.end method

.method public final setScoreMarker(Lcom/stryker/terminal/component/completion/MarkScoreListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/completion/CompletionResult;->scoreMarker:Lcom/stryker/terminal/component/completion/MarkScoreListener;

    return-void
.end method
