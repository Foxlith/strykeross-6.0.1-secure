.class public final synthetic Lcom/zalexdev/stryker/wpair/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zalexdev/stryker/wpair/FastPairExploit$ResultCallback;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/wpair/FastPairExploit;

.field public final synthetic b:[I

.field public final synthetic c:Lcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;

.field public final synthetic d:I

.field public final synthetic e:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/wpair/FastPairExploit;[ILcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;I[Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/c;->a:Lcom/zalexdev/stryker/wpair/FastPairExploit;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/c;->b:[I

    iput-object p3, p0, Lcom/zalexdev/stryker/wpair/c;->c:Lcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;

    iput p4, p0, Lcom/zalexdev/stryker/wpair/c;->d:I

    iput-object p5, p0, Lcom/zalexdev/stryker/wpair/c;->e:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/c;->a:Lcom/zalexdev/stryker/wpair/FastPairExploit;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/c;->b:[I

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/c;->c:Lcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;

    iget v3, p0, Lcom/zalexdev/stryker/wpair/c;->d:I

    iget-object v4, p0, Lcom/zalexdev/stryker/wpair/c;->e:[Ljava/lang/Runnable;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/zalexdev/stryker/wpair/FastPairExploit;->k(Lcom/zalexdev/stryker/wpair/FastPairExploit;[ILcom/zalexdev/stryker/wpair/FastPairExploit$FloodProgress;I[Ljava/lang/Runnable;Lcom/zalexdev/stryker/wpair/FastPairExploit$Result;)V

    return-void
.end method
