.class Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme;

.field final synthetic val$alertDismiss:[Lf/n;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme;Ljava/lang/String;Lcom/stryker/terminal/MainActivity;[Lf/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$2;->this$0:Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$2;->val$p:Lcom/stryker/terminal/MainActivity;

    iput-object p4, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$2;->val$alertDismiss:[Lf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$2;->val$url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$2;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$2;->val$alertDismiss:[Lf/n;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
