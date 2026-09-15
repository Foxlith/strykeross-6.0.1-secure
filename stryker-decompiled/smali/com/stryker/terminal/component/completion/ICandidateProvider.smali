.class public interface abstract Lcom/stryker/terminal/component/completion/ICandidateProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract canComplete(Ljava/lang/String;)Z
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public abstract provideCandidates(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/completion/CompletionCandidate;",
            ">;"
        }
    .end annotation
.end method
