.class public final synthetic Lcom/zalexdev/stryker/wpair/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/wpair/WpairFragment;

.field public final synthetic b:Lcom/zalexdev/stryker/wpair/FastPairDevice;

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(IILcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/zalexdev/stryker/wpair/q;->a:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iput-object p3, p0, Lcom/zalexdev/stryker/wpair/q;->b:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iput-boolean p5, p0, Lcom/zalexdev/stryker/wpair/q;->c:Z

    iput p1, p0, Lcom/zalexdev/stryker/wpair/q;->d:I

    iput p2, p0, Lcom/zalexdev/stryker/wpair/q;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/q;->d:I

    iget v1, p0, Lcom/zalexdev/stryker/wpair/q;->e:I

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/q;->b:Lcom/zalexdev/stryker/wpair/FastPairDevice;

    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/q;->a:Lcom/zalexdev/stryker/wpair/WpairFragment;

    iget-boolean v4, p0, Lcom/zalexdev/stryker/wpair/q;->c:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/WpairFragment;->z(IILcom/zalexdev/stryker/wpair/FastPairDevice;Lcom/zalexdev/stryker/wpair/WpairFragment;Z)V

    return-void
.end method
