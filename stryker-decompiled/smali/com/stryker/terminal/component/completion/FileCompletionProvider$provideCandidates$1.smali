.class final Lcom/stryker/terminal/component/completion/FileCompletionProvider$provideCandidates$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/component/completion/FileCompletionProvider;->provideCandidates(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/l;"
    }
.end annotation


# instance fields
.field final synthetic $partName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/completion/FileCompletionProvider$provideCandidates$1;->$partName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/io/File;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "pathname"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pathname.name"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/FileCompletionProvider$provideCandidates$1;->$partName:Ljava/lang/String;

    const-string v1, "partName"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/completion/FileCompletionProvider$provideCandidates$1;->invoke(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
