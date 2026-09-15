.class public final Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget$mHandler$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget$mHandler$1;->this$0:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget$mHandler$1;->this$0:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;

    invoke-static {p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->access$isMotionEventUp$p(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget$mHandler$1;->this$0:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget$mHandler$1;->this$0:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->performClick()Z

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget$mHandler$1;->this$0:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;

    invoke-static {p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->access$getLONG_CLICK_ACTION_INTERVAL$p(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;)J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
