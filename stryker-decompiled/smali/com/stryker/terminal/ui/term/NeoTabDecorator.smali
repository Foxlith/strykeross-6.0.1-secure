.class public final Lcom/stryker/terminal/ui/term/NeoTabDecorator;
.super Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/ui/term/NeoTabDecorator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/ui/term/NeoTabDecorator$Companion;

.field private static VIEW_TYPE_COUNT:I

.field private static final VIEW_TYPE_TERM:I

.field private static final VIEW_TYPE_X:I


# instance fields
.field private final context:Lcom/stryker/terminal/ui/term/NeoTermActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/ui/term/NeoTabDecorator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/ui/term/NeoTabDecorator$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->Companion:Lcom/stryker/terminal/ui/term/NeoTabDecorator$Companion;

    sget v0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_TERM:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_COUNT:I

    sput v1, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_X:I

    return-void
.end method

.method public constructor <init>(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->context:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->bindXSessionView$lambda$4$lambda$3$lambda$2$lambda$1(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/FrameLayout;Lcom/stryker/terminal/component/session/XSessionData;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->bindXSessionView$lambda$4$lambda$3$lambda$2(Landroid/widget/FrameLayout;Lcom/stryker/terminal/component/session/XSessionData;)V

    return-void
.end method

.method private final bindTerminalView(Lcom/stryker/terminal/ui/term/TermTab;Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->initializeViewWith(Lcom/stryker/terminal/frontend/session/terminal/TermUiPresenter;Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getProfile()Lcom/stryker/terminal/component/session/ShellProfile;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/ShellProfile;->getEnableWordBasedIme()Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    invoke-virtual {p2, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setEnableWordBasedIme(Z)V

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getViewClient()Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setTerminalViewClient(Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->attachSession(Lcom/stryker/terminal/backend/TerminalSession;)Z

    sget-object p1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v1, Lcom/stryker/terminal/R$string;->key_general_auto_completion:I

    invoke-virtual {p1, v1, p3}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getOnAutoCompleteListener()Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->createAutoCompleteListener(Lcom/stryker/terminal/frontend/session/view/TerminalView;)Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->setOnAutoCompleteListener(Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;)V

    :cond_2
    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getOnAutoCompleteListener()Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setOnAutoCompleteListener(Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;)V

    :cond_3
    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getViewClient()Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/stryker/terminal/backend/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;->updateExtraKeys(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method private final bindXSessionView(Lcom/stryker/terminal/ui/term/XSessionTab;)V
    .locals 4

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/XSessionTab;->getSessionData()Lcom/stryker/terminal/component/session/XSessionData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSessionData;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_1

    sget v0, Lcom/stryker/terminal/R$id;->xorg_video_layout:I

    invoke-virtual {p0, v0}, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/component/session/XSessionData;->setVideoLayout(Landroid/widget/FrameLayout;)V

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->setViewLayerType(Landroid/view/View;)Lw4/h;

    :cond_1
    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSessionData;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/stryker/terminal/ui/term/b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v0, v3}, Lcom/stryker/terminal/ui/term/b;-><init>(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private static final bindXSessionView$lambda$4(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;)V
    .locals 3

    const-string v0, "$sessionData"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$videoLayout"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getClient()Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/stryker/terminal/ui/term/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/stryker/terminal/ui/term/b;-><init>(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;I)V

    invoke-interface {v0, v1}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final bindXSessionView$lambda$4$lambda$3(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;)V
    .locals 4

    const-string v0, "$sessionData"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$videoLayout"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stryker/terminal/NeoGLView;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getClient()Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/stryker/terminal/NeoGLView;-><init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/component/session/XSessionData;->setGlView(Lcom/stryker/terminal/NeoGLView;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->setViewLayerType(Landroid/view/View;)Lw4/h;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->context:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/stryker/terminal/NeoGLView;->callNativeScreenVisibleRect(IIII)V

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/stryker/terminal/ui/term/c;

    invoke-direct {v0, p2, p0}, Lcom/stryker/terminal/ui/term/c;-><init>(Landroid/widget/FrameLayout;Lcom/stryker/terminal/component/session/XSessionData;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static final bindXSessionView$lambda$4$lambda$3$lambda$2(Landroid/widget/FrameLayout;Lcom/stryker/terminal/component/session/XSessionData;)V
    .locals 10

    const-string v0, "$videoLayout"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sessionData"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v7, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int v8, v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    new-instance v9, Lcom/stryker/terminal/ui/term/a;

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, v0

    move v4, v8

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/stryker/terminal/ui/term/a;-><init>(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;III)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v9, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v9, Lcom/stryker/terminal/ui/term/a;

    const/4 v6, 0x1

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/stryker/terminal/ui/term/a;-><init>(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;III)V

    const-wide/16 v0, 0x258

    invoke-virtual {p0, v9, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final bindXSessionView$lambda$4$lambda$3$lambda$2$lambda$0(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;II)V
    .locals 1

    const-string v0, "$sessionData"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$r"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/stryker/terminal/NeoGLView;->callNativeScreenVisibleRect(IIII)V

    :cond_0
    return-void
.end method

.method private static final bindXSessionView$lambda$4$lambda$3$lambda$2$lambda$1(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;II)V
    .locals 1

    const-string v0, "$sessionData"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$r"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/session/XSessionData;->getGlView()Lcom/stryker/terminal/NeoGLView;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iget p2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/stryker/terminal/NeoGLView;->callNativeScreenVisibleRect(IIII)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->bindXSessionView$lambda$4(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private final createAutoCompleteListener(Lcom/stryker/terminal/frontend/session/view/TerminalView;)Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;
    .locals 1

    new-instance v0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->bindXSessionView$lambda$4$lambda$3$lambda$2$lambda$0(Lcom/stryker/terminal/component/session/XSessionData;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public static synthetic e(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->bindXSessionView$lambda$4$lambda$3(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private final setViewLayerType(Landroid/view/View;)Lw4/h;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    sget-object v0, Lw4/h;->a:Lw4/h;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getContext()Lcom/stryker/terminal/ui/term/NeoTermActivity;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->context:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    return-object v0
.end method

.method public getViewType(Lde/mrapp/android/tabswitcher/Tab;I)I
    .locals 0

    const-string p2, "tab"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/stryker/terminal/ui/term/TermTab;

    if-eqz p2, :cond_0

    sget p1, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_TERM:I

    return p1

    :cond_0
    instance-of p1, p1, Lcom/stryker/terminal/ui/term/XSessionTab;

    if-eqz p1, :cond_1

    sget p1, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_X:I

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getViewTypeCount()I
    .locals 1

    sget v0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_COUNT:I

    return v0
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    const-string v0, "inflater"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_TERM:I

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    sget p3, Lcom/stryker/terminal/R$layout;->ui_term:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/stryker/terminal/R$id;->terminal_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/stryker/terminal/frontend/session/view/TerminalView;

    sget p3, Lcom/stryker/terminal/R$id;->extra_keys:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    sget-object v0, Lcom/stryker/terminal/utils/Terminals;->INSTANCE:Lcom/stryker/terminal/utils/Terminals;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, p2, v2, v3, v2}, Lcom/stryker/terminal/utils/Terminals;->setupTerminalView$default(Lcom/stryker/terminal/utils/Terminals;Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;ILjava/lang/Object;)V

    invoke-virtual {v0, p3}, Lcom/stryker/terminal/utils/Terminals;->setupExtraKeysView(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const-class v4, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    invoke-static {v0, v4, v1, v3, v2}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getCurrentColorScheme()Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->applyColorScheme(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_X:I

    if-ne p3, v0, :cond_2

    sget p3, Lcom/stryker/terminal/R$layout;->ui_xorg:I

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "{\n        inflater.infla\u2026g, parent, false)\n      }"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown view type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onShowTab(Landroid/content/Context;Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/View;Lde/mrapp/android/tabswitcher/Tab;IILandroid/os/Bundle;)V
    .locals 0

    const-string p7, "context"

    invoke-static {p1, p7}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tabSwitcher"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tab"

    invoke-static {p4, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->context:Lcom/stryker/terminal/ui/term/NeoTermActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result p3

    const/4 p7, 0x0

    if-eqz p3, :cond_0

    move-object p3, p7

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lde/mrapp/android/tabswitcher/Tab;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTabIndex()I

    move-result p2

    if-eq p2, p5, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    sget p3, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_TERM:I

    if-ne p6, p3, :cond_3

    check-cast p4, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p4, p1}, Lcom/stryker/terminal/ui/term/TermTab;->setToolbar(Landroidx/appcompat/widget/Toolbar;)V

    sget p1, Lcom/stryker/terminal/R$id;->terminal_view:I

    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;

    if-eqz p2, :cond_2

    invoke-direct {p0, p4, p1, p7}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->bindTerminalView(Lcom/stryker/terminal/ui/term/TermTab;Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    goto :goto_2

    :cond_2
    sget p2, Lcom/stryker/terminal/R$id;->extra_keys:I

    invoke-virtual {p0, p2}, Lde/mrapp/android/util/view/AbstractViewHolderAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    invoke-direct {p0, p4, p1, p2}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->bindTerminalView(Lcom/stryker/terminal/ui/term/TermTab;Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_3
    sget p2, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->VIEW_TYPE_X:I

    if-ne p6, p2, :cond_4

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    check-cast p4, Lcom/stryker/terminal/ui/term/XSessionTab;

    invoke-direct {p0, p4}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->bindXSessionView(Lcom/stryker/terminal/ui/term/XSessionTab;)V

    :cond_4
    :goto_2
    return-void
.end method
