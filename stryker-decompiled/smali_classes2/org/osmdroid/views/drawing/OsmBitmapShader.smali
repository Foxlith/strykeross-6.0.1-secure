.class public Lorg/osmdroid/views/drawing/OsmBitmapShader;
.super Landroid/graphics/BitmapShader;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final sPoint:Lorg/osmdroid/util/PointL;


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    sput-object v0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Lorg/osmdroid/util/PointL;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapHeight:I

    return-void
.end method


# virtual methods
.method public onDrawCycle(Lorg/osmdroid/views/Projection;)V
    .locals 6

    sget-object v0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->sPoint:Lorg/osmdroid/util/PointL;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    iget-object p1, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    iget-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    neg-long v1, v1

    iget v3, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapWidth:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-float v1, v1

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->y:J

    neg-long v2, v2

    iget v0, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mBitmapHeight:I

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p1, p0, Lorg/osmdroid/views/drawing/OsmBitmapShader;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
