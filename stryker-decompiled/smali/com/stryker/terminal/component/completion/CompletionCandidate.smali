.class public final Lcom/stryker/terminal/component/completion/CompletionCandidate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final completeString:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "completeString"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/completion/CompletionCandidate;->completeString:Ljava/lang/String;

    iput-object p1, p0, Lcom/stryker/terminal/component/completion/CompletionCandidate;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCompleteString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/CompletionCandidate;->completeString:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/CompletionCandidate;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/completion/CompletionCandidate;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/completion/CompletionCandidate;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/completion/CompletionCandidate;->displayName:Ljava/lang/String;

    return-void
.end method
