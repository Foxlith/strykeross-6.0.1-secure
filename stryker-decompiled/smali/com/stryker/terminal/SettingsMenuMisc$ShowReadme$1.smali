.class Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$1;
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


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme;[Lf/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$1;->this$0:Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$1;->val$alertDismiss:[Lf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$ShowReadme$1;->val$alertDismiss:[Lf/n;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
