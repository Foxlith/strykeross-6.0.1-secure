.class public final Lcom/stryker/terminal/utils/FullScreenHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/utils/FullScreenHelper$Companion;,
        Lcom/stryker/terminal/utils/FullScreenHelper$KeyBoardListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/utils/FullScreenHelper$Companion;


# instance fields
.field private final frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private fullScreen:Z

.field private final mChildOfContent:Landroid/view/View;

.field private mKeyBoardListener:Lcom/stryker/terminal/utils/FullScreenHelper$KeyBoardListener;

.field private mOriginHeight:I

.field private mPreHeight:I

.field private shouldSkipFirst:Z

.field private usableHeightPrevious:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/utils/FullScreenHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/utils/FullScreenHelper$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/utils/FullScreenHelper;->Companion:Lcom/stryker/terminal/utils/FullScreenHelper$Companion;

    return-void
.end method

.method private constructor <init>(Lf/q;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->fullScreen:Z

    iput-boolean p3, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->shouldSkipFirst:Z

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "content.getChildAt(0)"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/stryker/terminal/utils/a;

    invoke-direct {p3, p0}, Lcom/stryker/terminal/utils/a;-><init>(Lcom/stryker/terminal/utils/FullScreenHelper;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p1, p2}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public synthetic constructor <init>(Lf/q;ZZLkotlin/jvm/internal/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/stryker/terminal/utils/FullScreenHelper;-><init>(Lf/q;ZZ)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/stryker/terminal/utils/FullScreenHelper;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->fullScreen:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/stryker/terminal/utils/FullScreenHelper;->possiblyResizeChildOfContent()V

    :cond_0
    invoke-direct {p0}, Lcom/stryker/terminal/utils/FullScreenHelper;->monitorImeStatus()V

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/utils/FullScreenHelper;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/utils/FullScreenHelper;->_init_$lambda$0(Lcom/stryker/terminal/utils/FullScreenHelper;)V

    return-void
.end method

.method private final computeUsableHeight()I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private final monitorImeStatus()V
    .locals 5

    iget-object v0, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->shouldSkipFirst:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->shouldSkipFirst:Z

    iget v2, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mPreHeight:I

    if-nez v2, :cond_1

    iput v0, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mPreHeight:I

    iput v0, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mOriginHeight:I

    goto :goto_1

    :cond_1
    if-eq v2, v0, :cond_3

    iput v0, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mPreHeight:I

    iget v2, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mOriginHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mOriginHeight:I

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mKeyBoardListener:Lcom/stryker/terminal/utils/FullScreenHelper$KeyBoardListener;

    if-eqz v2, :cond_3

    invoke-static {v2}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v0}, Lcom/stryker/terminal/utils/FullScreenHelper$KeyBoardListener;->onKeyboardChange(ZI)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final possiblyResizeChildOfContent()V
    .locals 4

    invoke-direct {p0}, Lcom/stryker/terminal/utils/FullScreenHelper;->computeUsableHeight()I

    move-result v0

    iget v1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->usableHeightPrevious:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    sub-int/2addr v1, v2

    :cond_0
    iget-object v2, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iput v0, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->usableHeightPrevious:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final getFullScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->fullScreen:Z

    return v0
.end method

.method public final setFullScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->fullScreen:Z

    return-void
.end method

.method public final setKeyBoardListener(Lcom/stryker/terminal/utils/FullScreenHelper$KeyBoardListener;)V
    .locals 1

    const-string v0, "mKeyBoardListener"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/utils/FullScreenHelper;->mKeyBoardListener:Lcom/stryker/terminal/utils/FullScreenHelper$KeyBoardListener;

    return-void
.end method
