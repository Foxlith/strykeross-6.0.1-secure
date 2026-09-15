.class public final Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/component/session/XSession;->showScreenKeyboardWithoutTextInputField(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

.field final synthetic $keyboard:I

.field final synthetic this$0:Lcom/stryker/terminal/component/session/XSession;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;Lcom/stryker/terminal/component/session/XSession;I)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    iput-object p2, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    iput p3, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$keyboard:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 0

    const-string p1, "p2"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPress(I)V
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v3, v1, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v3, :cond_2

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    if-ne p1, v1, :cond_2

    return-void

    :cond_3
    const v0, 0x186a0

    if-le p1, v0, :cond_4

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-static {v0}, Lcom/stryker/terminal/component/session/XSession;->access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v3, 0x3b

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Lf/q;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :cond_4
    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-static {v0}, Lcom/stryker/terminal/component/session/XSession;->access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lf/q;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method public onRelease(I)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-virtual {p1, v1}, Lcom/stryker/terminal/component/session/XSession;->showScreenKeyboardWithoutTextInputField(I)V

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x3b

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->getShift()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->setShift(Z)V

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->getShift()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->getAlt()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-static {p1}, Lcom/stryker/terminal/component/session/XSession;->access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;

    move-result-object p1

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Lf/q;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-static {p1}, Lcom/stryker/terminal/component/session/XSession;->access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;

    move-result-object p1

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :goto_0
    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    iget v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$keyboard:I

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->changeKeyboard(I)V

    return-void

    :cond_2
    const/4 v0, -0x6

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->getAlt()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->setAlt(Z)V

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->getAlt()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-static {p1}, Lcom/stryker/terminal/component/session/XSession;->access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;

    move-result-object p1

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {p1, v1}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->setShift(Z)V

    :goto_1
    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    iget v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$keyboard:I

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->changeKeyboard(I)V

    return-void

    :cond_4
    if-gez p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v5, v4, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v5, :cond_6

    iget-object v5, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v1

    if-ne p1, v5, :cond_6

    iget-boolean v0, v4, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->getStickyKeys()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-static {v0}, Lcom/stryker/terminal/component/session/XSession;->access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;

    move-result-object v0

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Lf/q;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->getStickyKeys()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-static {v0}, Lcom/stryker/terminal/component/session/XSession;->access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    :goto_2
    return-void

    :cond_8
    const v0, 0x186a0

    if-le p1, v0, :cond_9

    sub-int/2addr p1, v0

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-static {v4}, Lcom/stryker/terminal/component/session/XSession;->access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;

    move-result-object v4

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, p1, v5}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->this$0:Lcom/stryker/terminal/component/session/XSession;

    invoke-static {p1}, Lcom/stryker/terminal/component/session/XSession;->access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;

    move-result-object p1

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->getStickyKeys()Ljava/util/TreeSet;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {p1}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object p1

    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v1

    if-ne v2, v3, :cond_a

    iget-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    if-eqz v2, :cond_a

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;->$builtinKeyboard:Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    goto :goto_4

    :cond_b
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method
