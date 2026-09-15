.class public final Lcom/stryker/terminal/component/completion/CompletionComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/NeoComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceDestroy()V
    .locals 0

    return-void
.end method

.method public onServiceInit()V
    .locals 2

    sget-object v0, Lcom/stryker/terminal/component/completion/CompletionManager;->INSTANCE:Lcom/stryker/terminal/component/completion/CompletionManager;

    new-instance v1, Lcom/stryker/terminal/component/completion/FileCompletionProvider;

    invoke-direct {v1}, Lcom/stryker/terminal/component/completion/FileCompletionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/completion/CompletionManager;->registerProvider(Lcom/stryker/terminal/component/completion/ICandidateProvider;)V

    new-instance v1, Lcom/stryker/terminal/component/completion/ProgramCompletionProvider;

    invoke-direct {v1}, Lcom/stryker/terminal/component/completion/ProgramCompletionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/completion/CompletionManager;->registerProvider(Lcom/stryker/terminal/component/completion/ICandidateProvider;)V

    return-void
.end method

.method public onServiceObtained()V
    .locals 0

    return-void
.end method
