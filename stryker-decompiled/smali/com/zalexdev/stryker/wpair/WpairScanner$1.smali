.class Lcom/zalexdev/stryker/wpair/WpairScanner$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairScanner;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairScanner;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairScanner;

    invoke-static {v1, v0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->access$000(Lcom/zalexdev/stryker/wpair/WpairScanner;Landroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScanFailed(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scan failed with error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WpairScanner"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairScanner$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairScanner;

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->access$100(Lcom/zalexdev/stryker/wpair/WpairScanner;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scan failed code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/zalexdev/stryker/wpair/WpairLog;->info(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairScanner;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zalexdev/stryker/wpair/WpairScanner;->access$202(Lcom/zalexdev/stryker/wpair/WpairScanner;Z)Z

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairScanner$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairScanner;

    invoke-static {p1, p2}, Lcom/zalexdev/stryker/wpair/WpairScanner;->access$000(Lcom/zalexdev/stryker/wpair/WpairScanner;Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method
