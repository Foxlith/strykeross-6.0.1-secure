.class public final Lcom/stryker/terminal/component/session/XSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/xorg/NeoXorgViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;,
        Lcom/stryker/terminal/component/session/XSession$SimpleKeyListener;
    }
.end annotation


# instance fields
.field private final mActivity:Lf/q;

.field private final mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

.field private mSessionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf/q;Lcom/stryker/terminal/component/session/XSessionData;)V
    .locals 1

    .line 1
    const-string v0, "mActivity"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mSessionData"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    iput-object p2, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    const-string p1, ""

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionName:Ljava/lang/String;

    sget-boolean p1, Lcom/stryker/terminal/Globals;->InhibitSuspend:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    invoke-virtual {p2, p0}, Lcom/stryker/terminal/component/session/XSessionData;->setClient(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    invoke-static {p0}, Lcom/stryker/terminal/NeoXorgSettings;->init(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/XSessionData;->getAudioThread()Lcom/stryker/terminal/NeoAudioThread;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/stryker/terminal/NeoAudioThread;

    invoke-direct {p1, p0}, Lcom/stryker/terminal/NeoAudioThread;-><init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/component/session/XSessionData;->setAudioThread(Lcom/stryker/terminal/NeoAudioThread;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/component/session/XSession;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/component/session/XSession;->showScreenKeyboardWithoutTextInputField$lambda$1(Lcom/stryker/terminal/component/session/XSession;Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

.method public static final synthetic access$getMActivity$p(Lcom/stryker/terminal/component/session/XSession;)Lf/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    return-object p0
.end method

.method public static synthetic b(ILandroid/view/inputmethod/InputMethodManager;Lcom/stryker/terminal/component/session/XSession;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/component/session/XSession;->showScreenKeyboardWithoutTextInputField$lambda$0(ILandroid/view/inputmethod/InputMethodManager;Lcom/stryker/terminal/component/session/XSession;)V

    return-void
.end method

.method public static synthetic c(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/component/session/XSession;->showScreenKeyboard$lambda$4$lambda$3(Landroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic d(Lcom/stryker/terminal/component/session/XSession;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/component/session/XSession;->setScreenKeyboardHintMessage$lambda$2(Lcom/stryker/terminal/component/session/XSession;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/component/session/XSession;->showScreenKeyboard$lambda$4(Landroid/widget/EditText;)V

    return-void
.end method

.method private static final setScreenKeyboardHintMessage$lambda$2(Lcom/stryker/terminal/component/session/XSession;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    sget p1, Lcom/stryker/terminal/xorg/R$string;->text_edit_click_here:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private static final showScreenKeyboard$lambda$4(Landroid/widget/EditText;)V
    .locals 9

    const-string v0, "$screenKeyboard"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    new-instance v0, Lcom/stryker/terminal/component/session/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/stryker/terminal/component/session/a;-><init>(Landroid/widget/EditText;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final showScreenKeyboard$lambda$4$lambda$3(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "$screenKeyboard"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private static final showScreenKeyboardWithoutTextInputField$lambda$0(ILandroid/view/inputmethod/InputMethodManager;Lcom/stryker/terminal/component/session/XSession;)V
    .locals 2

    const-string v0, "$inputManager"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/XSession;->getGLView()Lcom/stryker/terminal/NeoGLView;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/XSession;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;

    iget-object v0, p2, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p0}, Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;->changeKeyboard(I)V

    new-instance v0, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/stryker/terminal/component/session/XSession$showScreenKeyboardWithoutTextInputField$1$1;-><init>(Lcom/stryker/terminal/component/session/XSession$BuiltInKeyboardView;Lcom/stryker/terminal/component/session/XSession;I)V

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    iget-object p0, p2, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/session/XSessionData;->setScreenKeyboard(Landroid/view/View;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x2

    const/16 v0, 0x50

    const/4 v1, -0x1

    invoke-direct {p0, v1, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p1, p2, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSessionData;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {p2}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private static final showScreenKeyboardWithoutTextInputField$lambda$1(Lcom/stryker/terminal/component/session/XSession;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputManager"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/XSessionData;->setScreenKeyboard(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getGLView()Lcom/stryker/terminal/NeoGLView;

    move-result-object p0

    invoke-static {p0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getContext()Lf/q;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lf/q;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    return-object v0
.end method

.method public getGLView()Lcom/stryker/terminal/NeoGLView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    return-object v0
.end method

.method public final getMSessionData()Lcom/stryker/terminal/component/session/XSessionData;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    return-object v0
.end method

.method public final getMSessionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionName:Ljava/lang/String;

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public hideScreenKeyboard()V
    .locals 8

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->isKeyboardWithoutTextInputShown()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/stryker/terminal/Globals;->TextInputKeyboard:I

    invoke-virtual {p0, v1}, Lcom/stryker/terminal/component/session/XSession;->showScreenKeyboardWithoutTextInputField(I)V

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/EditText;

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/XSessionData;->getTextInput()Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v2}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.EditText"

    invoke-static {v2, v3}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/stryker/terminal/NeoRenderer;->callNativeTextInput(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit v1

    invoke-static {}, Lcom/stryker/terminal/NeoRenderer;->callNativeTextInputFinished()V

    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/XSessionData;->setScreenKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getGLView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getGLView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getGLView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    :goto_1
    monitor-exit v1

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public initScreenOrientation()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/stryker/terminal/Globals;->AutoDetectOrientation:Z

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public isKeyboardWithoutTextInputShown()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getKeyboardWithoutTextInputShown()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isRunningOnOUYA()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "tv.ouya"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    iget-object v2, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    const-string v3, "uimode"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/stryker/terminal/Globals;->OuyaEmulation:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public isScreenKeyboardShown()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/NeoGLView;->exitApp()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/XSessionData;->setPaused(Z)V

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/NeoGLView;->onPause()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/NeoGLView;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/XSessionData;->setPaused(Z)V

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setMSessionName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionName:Ljava/lang/String;

    return-void
.end method

.method public setScreenKeyboardHintMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/component/session/XSessionData;->setScreenKeyboardHintMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    new-instance v0, Lf/n0;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/component/session/XSession;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setSystemMousePointerVisible(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getGLView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x3e8

    :goto_0
    invoke-static {v1, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    :goto_1
    return-void
.end method

.method public showScreenKeyboard(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/stryker/terminal/Globals;->CompatibilityHacksTextInputEmulatesHwKeyboard:Z

    if-eqz v0, :cond_0

    sget p1, Lcom/stryker/terminal/Globals;->TextInputKeyboard:I

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/session/XSession;->showScreenKeyboardWithoutTextInputField(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    const/4 v2, 0x0

    const v3, 0x1030218

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboardHintMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    sget v2, Lcom/stryker/terminal/xorg/R$string;->text_edit_click_here:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    new-instance p1, Lcom/stryker/terminal/component/session/XSession$SimpleKeyListener;

    invoke-direct {p1, p0}, Lcom/stryker/terminal/component/session/XSession$SimpleKeyListener;-><init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1060003

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x106000f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->isRunningOnOUYA()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/stryker/terminal/Globals;->TvBorders:Z

    if-eqz p1, :cond_3

    const/16 p1, 0x64

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/component/session/XSessionData;->setScreenKeyboard(Landroid/view/View;)V

    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSessionData;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/session/XSessionData;->getScreenKeyboard()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    new-instance p1, Lcom/stryker/terminal/component/session/a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/stryker/terminal/component/session/a;-><init>(Landroid/widget/EditText;I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showScreenKeyboardWithoutTextInputField(I)V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession;->mActivity:Lf/q;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->isKeyboardWithoutTextInputShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/stryker/terminal/component/session/XSessionData;->setKeyboardWithoutTextInputShown(Z)V

    new-instance v1, Lcom/stryker/terminal/component/session/b;

    invoke-direct {v1, p1, v0, p0}, Lcom/stryker/terminal/component/session/b;-><init>(ILandroid/view/inputmethod/InputMethodManager;Lcom/stryker/terminal/component/session/XSession;)V

    invoke-virtual {p0, v1}, Lcom/stryker/terminal/component/session/XSession;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession;->mSessionData:Lcom/stryker/terminal/component/session/XSessionData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/stryker/terminal/component/session/XSessionData;->setKeyboardWithoutTextInputShown(Z)V

    new-instance p1, Lf/n0;

    const/16 v1, 0x9

    invoke-direct {p1, p0, v0, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/session/XSession;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getGLView()Lcom/stryker/terminal/NeoGLView;

    move-result-object p1

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->isKeyboardWithoutTextInputShown()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/NeoGLView;->callNativeScreenKeyboardShown(I)V

    return-void
.end method

.method public updateScreenOrientation()V
    .locals 2

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSession;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/stryker/terminal/NeoAccelerometerReader;->setGyroInvertedOrientation(Z)V

    return-void
.end method
