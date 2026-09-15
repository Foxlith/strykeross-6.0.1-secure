.class Lcom/stryker/terminal/MainActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/stryker/terminal/MainActivity$5;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$5$1;->this$1:Lcom/stryker/terminal/MainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$5$1;->this$1:Lcom/stryker/terminal/MainActivity$5;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$5;->val$keyboard:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$5$1;->this$1:Lcom/stryker/terminal/MainActivity$5;

    iget-object v0, v0, Lcom/stryker/terminal/MainActivity$5;->val$keyboard:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
