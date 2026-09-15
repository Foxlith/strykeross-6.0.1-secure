.class Lcom/stryker/terminal/MainActivity$2Callback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field Parent:Lcom/stryker/terminal/MainActivity;

.field public text:Landroid/text/SpannedString;

.field final synthetic this$0:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$2Callback;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$2Callback;->Parent:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v0}, Lcom/stryker/terminal/MainActivity;->setUpStatusLabel()V

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$2Callback;->Parent:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$700(Lcom/stryker/terminal/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/MainActivity$2Callback;->Parent:Lcom/stryker/terminal/MainActivity;

    invoke-static {v0}, Lcom/stryker/terminal/MainActivity;->access$700(Lcom/stryker/terminal/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/MainActivity$2Callback;->text:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
