.class final Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nambimobile/widgets/efab/ExpandableFab;->manualIconAnimation(JFFLj5/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $currentRotationDegrees:Lkotlin/jvm/internal/m;

.field final synthetic $matrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;


# direct methods
.method public constructor <init>(Lcom/nambimobile/widgets/efab/ExpandableFab;Landroid/graphics/Matrix;Lkotlin/jvm/internal/m;)V
    .locals 0

    iput-object p1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    iput-object p2, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;->$matrix:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;->$currentRotationDegrees:Lkotlin/jvm/internal/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;->this$0:Lcom/nambimobile/widgets/efab/ExpandableFab;

    iget-object v3, p0, Lcom/nambimobile/widgets/efab/ExpandableFab$manualIconAnimation$1$1;->$currentRotationDegrees:Lkotlin/jvm/internal/m;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v3, v3, Lkotlin/jvm/internal/m;->a:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v1, v3, v4, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void
.end method
