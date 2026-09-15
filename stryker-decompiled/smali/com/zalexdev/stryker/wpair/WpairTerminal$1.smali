.class Lcom/zalexdev/stryker/wpair/WpairTerminal$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairTerminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$000(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$100(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
