.class final Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;
.super Landroidx/appcompat/widget/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RepeatableButtonWidget"
.end annotation


# instance fields
.field private final LONG_CLICK_ACTION_INTERVAL:J

.field private isMotionEventUp:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x64

    iput-wide p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->LONG_CLICK_ACTION_INTERVAL:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->isMotionEventUp:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget$mHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget$mHandler$1;-><init>(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/stryker/terminal/frontend/session/view/extrakey/a;

    invoke-direct {p1, p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/a;-><init>(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p1, Lcom/stryker/terminal/frontend/session/view/extrakey/b;

    invoke-direct {p1, p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/b;-><init>(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;Landroid/view/View;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->isMotionEventUp:Z

    iget-object p0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return p1
.end method

.method private static final _init_$lambda$1(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iput-boolean p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->isMotionEventUp:Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->_init_$lambda$0(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLONG_CLICK_ACTION_INTERVAL$p(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;)J
    .locals 2

    iget-wide v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->LONG_CLICK_ACTION_INTERVAL:J

    return-wide v0
.end method

.method public static final synthetic access$isMotionEventUp$p(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->isMotionEventUp:Z

    return p0
.end method

.method public static synthetic b(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->_init_$lambda$1(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getMHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public final setMHandler(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->mHandler:Landroid/os/Handler;

    return-void
.end method
