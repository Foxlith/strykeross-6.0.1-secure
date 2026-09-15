.class Lcom/stryker/terminal/MainActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity;->setScreenKeyboardHintMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$7;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$7;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$400(Lcom/stryker/terminal/MainActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$7;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$400(Lcom/stryker/terminal/MainActivity;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$7;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$600(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/MainActivity$7;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-static {v1}, Lcom/stryker/terminal/MainActivity;->access$400(Lcom/stryker/terminal/MainActivity;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$7;->this$0:Lcom/stryker/terminal/MainActivity;

    sget v2, Lcom/stryker/terminal/xorg/R$string;->text_edit_click_here:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
