.class public final Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;
.super Landroid/inputmethodservice/KeyboardView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/component/session/XSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuiltInKeyboardView"
.end annotation


# instance fields
.field private alt:Z

.field private shift:Z

.field private stickyKeys:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->stickyKeys:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public final changeKeyboard(I)V
    .locals 5

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->shift:Z

    iget-boolean v1, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->alt:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    new-instance v1, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/stryker/terminal/NeoTextInput;->TextInputKeyboardList:[[I

    aget-object v0, v4, v0

    aget p1, v0, p1

    invoke-direct {v1, v3, p1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/KeyboardView;->setProximityCorrectionEnabled(Z)V

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->stickyKeys:Ljava/util/TreeSet;

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const-string v0, "ev"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v9, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final getAlt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->alt:Z

    return v0
.end method

.method public final getShift()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->shift:Z

    return v0
.end method

.method public final getStickyKeys()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->stickyKeys:Ljava/util/TreeSet;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "event"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "event"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final setAlt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->alt:Z

    return-void
.end method

.method public final setShift(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->shift:Z

    return-void
.end method

.method public final setStickyKeys(Ljava/util/TreeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->stickyKeys:Ljava/util/TreeSet;

    return-void
.end method
