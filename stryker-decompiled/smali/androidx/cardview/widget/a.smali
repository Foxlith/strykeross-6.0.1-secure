.class public final Landroidx/cardview/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/cardview/widget/c;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:Landroidx/cardview/widget/CardView;


# direct methods
.method public constructor <init>(Landroidx/cardview/widget/CardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    iget v1, v0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    if-le p1, v1, :cond_0

    invoke-static {v0, p1}, Landroidx/cardview/widget/CardView;->access$101(Landroidx/cardview/widget/CardView;I)V

    :cond_0
    iget p1, v0, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    if-le p2, p1, :cond_1

    invoke-static {v0, p2}, Landroidx/cardview/widget/CardView;->access$201(Landroidx/cardview/widget/CardView;I)V

    :cond_1
    return-void
.end method

.method public final b(IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/a;->b:Landroidx/cardview/widget/CardView;

    iget-object v1, v0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->access$001(Landroidx/cardview/widget/CardView;IIII)V

    return-void
.end method
