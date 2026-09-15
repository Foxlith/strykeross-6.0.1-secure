.class Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog$1;->this$0:Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;->access$000(Lcom/zalexdev/stryker/wpair/WpairDeviceDialog;)V

    return-void
.end method
