.class public final Lcom/stryker/terminal/component/completion/ProviderDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/completion/MarkScoreListener;


# instance fields
.field private detectedProvider:Lcom/stryker/terminal/component/completion/ICandidateProvider;

.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/ICandidateProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stryker/terminal/component/completion/ICandidateProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "providers"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/completion/ProviderDetector;->providers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final detectBest()Lcom/stryker/terminal/component/completion/ICandidateProvider;
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/ProviderDetector;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/component/completion/ProviderDetector;->providers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/completion/ICandidateProvider;

    :goto_0
    iput-object v0, p0, Lcom/stryker/terminal/component/completion/ProviderDetector;->detectedProvider:Lcom/stryker/terminal/component/completion/ICandidateProvider;

    return-object v0
.end method

.method public final getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/ICandidateProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/ProviderDetector;->providers:Ljava/util/List;

    return-object v0
.end method

.method public onMarkScore(I)V
    .locals 0

    return-void
.end method
