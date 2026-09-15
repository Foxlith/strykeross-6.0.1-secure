.class public Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;
.source "SourceFile"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mOffsetX:I

.field private final mOffsetY:I


# direct methods
.method public constructor <init>(DZLandroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;-><init>(DZ)V

    iput-object p4, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    iput p5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mOffsetX:I

    iput p6, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mOffsetY:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 3

    iget-object p2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mOffsetX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneBitmapDisplayer;->mOffsetY:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
