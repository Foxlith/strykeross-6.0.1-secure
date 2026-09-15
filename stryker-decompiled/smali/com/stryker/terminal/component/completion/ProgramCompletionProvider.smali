.class public final Lcom/stryker/terminal/component/completion/ProgramCompletionProvider;
.super Lcom/stryker/terminal/component/completion/FileCompletionProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/component/completion/FileCompletionProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public generateDesc(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "<Program>"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/stryker/terminal/component/completion/FileCompletionProvider;->generateDesc(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    const-string v0, "NeoTermProvider.ProgramCompletionProvider"

    return-object v0
.end method
