.class public final Landroidx/coordinatorlayout/widget/f;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:Landroidx/coordinatorlayout/widget/c;

.field public b:Z

.field public c:I

.field public d:I

.field public final e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public final q:Landroid/graphics/Rect;

.field public r:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/f;->b:Z

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->c:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->d:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/coordinatorlayout/widget/f;->e:I

    iput v1, p0, Landroidx/coordinatorlayout/widget/f;->f:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->g:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/f;->q:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/f;->b:Z

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->c:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->d:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/coordinatorlayout/widget/f;->e:I

    iput v1, p0, Landroidx/coordinatorlayout/widget/f;->f:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->g:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->h:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/coordinatorlayout/widget/f;->q:Landroid/graphics/Rect;

    sget-object v2, Lt/a;->b:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/f;->c:I

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/f;->f:I

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/coordinatorlayout/widget/f;->d:I

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/f;->e:I

    const/4 v1, 0x5

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/f;->g:I

    const/4 v1, 0x4

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->h:I

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/f;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/c;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/f;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/f;->b:Z

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->c:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->d:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->e:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->f:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->g:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/f;->q:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/f;->b:Z

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->c:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->d:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->e:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->f:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->g:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/f;->q:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/f;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/f;->b:Z

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->c:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->d:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->e:I

    iput v0, p0, Landroidx/coordinatorlayout/widget/f;->f:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->g:I

    iput p1, p0, Landroidx/coordinatorlayout/widget/f;->h:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/f;->q:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/f;->o:Z

    return p1

    :cond_1
    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/f;->n:Z

    return p1
.end method

.method public final b(Landroidx/coordinatorlayout/widget/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/c;->onDetachedFromLayoutParams()V

    :cond_0
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/f;->a:Landroidx/coordinatorlayout/widget/c;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/f;->r:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/f;->b:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/c;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/f;)V

    :cond_1
    return-void
.end method
