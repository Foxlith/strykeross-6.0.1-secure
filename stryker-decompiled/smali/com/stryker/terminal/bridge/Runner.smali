.class public Lcom/stryker/terminal/bridge/Runner;
.super Lf/q;
.source "SourceFile"


# static fields
.field public static activity:Lf/q;

.field public static context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/q;-><init>()V

    return-void
.end method

.method public static run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/hilled.pwnterm/files/usr/bin/kali"

    invoke-static {v0, p0}, Lcom/stryker/terminal/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/stryker/terminal/bridge/Runner;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static run_cmd_activity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/hilled.pwnterm/files/usr/bin/kali"

    invoke-static {v0, p0}, Lcom/stryker/terminal/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/stryker/terminal/bridge/Runner;->activity:Lf/q;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static run_cmd_android(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/hilled.pwnterm/files/usr/bin/android-su"

    invoke-static {v0, p0}, Lcom/stryker/terminal/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/stryker/terminal/bridge/Runner;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static run_cmd_android_aactivity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/hilled.pwnterm/files/usr/bin/android-su"

    invoke-static {v0, p0}, Lcom/stryker/terminal/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/stryker/terminal/bridge/Runner;->activity:Lf/q;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
