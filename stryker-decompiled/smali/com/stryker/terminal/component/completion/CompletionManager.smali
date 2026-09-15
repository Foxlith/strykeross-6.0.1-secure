.class public final Lcom/stryker/terminal/component/completion/CompletionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/component/completion/CompletionManager;

.field private static final candidateProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stryker/terminal/component/completion/ICandidateProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/completion/CompletionManager;

    invoke-direct {v0}, Lcom/stryker/terminal/component/completion/CompletionManager;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/completion/CompletionManager;->INSTANCE:Lcom/stryker/terminal/component/completion/CompletionManager;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/completion/CompletionManager;->candidateProviders:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final detectProviders(Ljava/lang/String;)Lcom/stryker/terminal/component/completion/ProviderDetector;
    .locals 4

    sget-object v0, Lcom/stryker/terminal/component/completion/CompletionManager;->candidateProviders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stryker/terminal/component/completion/ICandidateProvider;

    invoke-interface {v3, p1}, Lcom/stryker/terminal/component/completion/ICandidateProvider;->canComplete(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p1, Lcom/stryker/terminal/component/completion/ProviderDetector;

    invoke-direct {p1, v1}, Lcom/stryker/terminal/component/completion/ProviderDetector;-><init>(Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public final getProvider(Ljava/lang/String;)Lcom/stryker/terminal/component/completion/ICandidateProvider;
    .locals 1

    const-string v0, "providerName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/completion/CompletionManager;->candidateProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/component/completion/ICandidateProvider;

    return-object p1
.end method

.method public final registerProvider(Lcom/stryker/terminal/component/completion/ICandidateProvider;)V
    .locals 2

    const-string v0, "provider"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/completion/CompletionManager;->candidateProviders:Ljava/util/Map;

    invoke-interface {p1}, Lcom/stryker/terminal/component/completion/ICandidateProvider;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final tryCompleteFor(Ljava/lang/String;)Lcom/stryker/terminal/component/completion/CompletionResult;
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/component/completion/CompletionManager;->detectProviders(Ljava/lang/String;)Lcom/stryker/terminal/component/completion/ProviderDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/component/completion/ProviderDetector;->detectBest()Lcom/stryker/terminal/component/completion/ICandidateProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/stryker/terminal/component/completion/ICandidateProvider;->provideCandidates(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lx4/o;->a:Lx4/o;

    :cond_1
    new-instance v1, Lcom/stryker/terminal/component/completion/CompletionResult;

    invoke-direct {v1, p1, v0}, Lcom/stryker/terminal/component/completion/CompletionResult;-><init>(Ljava/util/List;Lcom/stryker/terminal/component/completion/MarkScoreListener;)V

    return-object v1
.end method

.method public final unregisterProvider(Lcom/stryker/terminal/component/completion/ICandidateProvider;)V
    .locals 1

    .line 1
    const-string v0, "provider"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/stryker/terminal/component/completion/ICandidateProvider;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/completion/CompletionManager;->unregisterProvider(Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterProvider(Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "providerName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/completion/CompletionManager;->candidateProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
