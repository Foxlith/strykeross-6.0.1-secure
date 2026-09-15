.class public Lorg/osmdroid/util/SpeechBalloonHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CORNER_BOTTOM:I = 0x8

.field public static final CORNER_INSIDE:I = -0x1

.field public static final CORNER_LEFT:I = 0x1

.field public static final CORNER_NONE:I = 0x0

.field public static final CORNER_RIGHT:I = 0x2

.field public static final CORNER_TOP:I = 0x4


# instance fields
.field private mPoint:Lorg/osmdroid/util/PointL;

.field private mRect:Lorg/osmdroid/util/RectL;

.field private final mTrianglePoint:Lorg/osmdroid/util/PointL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    return-void
.end method

.method private checkIntersection(Lorg/osmdroid/util/PointL;)I
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct {p0, v2, v3, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionY(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-direct {p0, v2, v3, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionY(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x8

    return p1

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-direct {p0, v2, v3, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionX(JLorg/osmdroid/util/PointL;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v0, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v2, p0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v2, v2, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-direct {p0, v2, v3, p1}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersectionX(JLorg/osmdroid/util/PointL;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private checkIntersectionX(JLorg/osmdroid/util/PointL;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v17, p3

    iget-object v3, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v1, v1

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v3, v3

    iget-object v7, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v5, v7, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v5, v5

    iget-wide v7, v7, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v7, v7

    move-wide/from16 v9, p1

    long-to-double v13, v9

    move-wide v9, v13

    iget-object v15, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v11, v15, Lorg/osmdroid/util/RectL;->top:J

    long-to-double v11, v11

    move-wide/from16 v18, v1

    iget-wide v0, v15, Lorg/osmdroid/util/RectL;->bottom:J

    long-to-double v0, v0

    move-wide v15, v0

    move-wide/from16 v1, v18

    invoke-static/range {v1 .. v17}, Lorg/osmdroid/util/SegmentIntersection;->intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v0

    return v0
.end method

.method private checkIntersectionY(JLorg/osmdroid/util/PointL;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v17, p3

    iget-object v3, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v3, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v1, v1

    iget-wide v3, v3, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v3, v3

    iget-object v7, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    iget-wide v5, v7, Lorg/osmdroid/util/PointL;->x:J

    long-to-double v5, v5

    iget-wide v7, v7, Lorg/osmdroid/util/PointL;->y:J

    long-to-double v7, v7

    iget-object v13, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iget-wide v9, v13, Lorg/osmdroid/util/RectL;->left:J

    long-to-double v9, v9

    move-wide/from16 v11, p1

    long-to-double v11, v11

    move-wide v15, v11

    iget-wide v13, v13, Lorg/osmdroid/util/RectL;->right:J

    long-to-double v13, v13

    invoke-static/range {v1 .. v17}, Lorg/osmdroid/util/SegmentIntersection;->intersection(DDDDDDDDLorg/osmdroid/util/PointL;)Z

    move-result v1

    return v1
.end method

.method private computeCirclePoint(Lorg/osmdroid/util/PointL;DDZ)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v1}, Lorg/osmdroid/util/RectL;->centerX()J

    move-result-wide v2

    iget-object v1, v0, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v1}, Lorg/osmdroid/util/RectL;->centerY()J

    move-result-wide v4

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    int-to-double v6, v1

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    add-double v8, v6, p4

    move-wide v6, p2

    move-object v10, p1

    invoke-static/range {v2 .. v10}, Lorg/osmdroid/util/MyMath;->computeCirclePoint(JJDDLorg/osmdroid/util/PointL;)V

    return-void
.end method


# virtual methods
.method public compute(Lorg/osmdroid/util/RectL;Lorg/osmdroid/util/PointL;DLorg/osmdroid/util/PointL;Lorg/osmdroid/util/PointL;)I
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iput-object v0, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    iput-object v1, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v1, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v4, v1, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/osmdroid/util/RectL;->contains(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v0}, Lorg/osmdroid/util/RectL;->centerX()J

    move-result-wide v8

    iget-object v0, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mRect:Lorg/osmdroid/util/RectL;

    invoke-virtual {v0}, Lorg/osmdroid/util/RectL;->centerY()J

    move-result-wide v10

    iget-object v0, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mPoint:Lorg/osmdroid/util/PointL;

    iget-wide v12, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v14, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-static/range {v8 .. v15}, Lorg/osmdroid/util/MyMath;->computeAngle(JJJJ)D

    move-result-wide v8

    iget-object v1, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move-wide v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/SpeechBalloonHelper;->computeCirclePoint(Lorg/osmdroid/util/PointL;DDZ)V

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersection(Lorg/osmdroid/util/PointL;)I

    move-result v10

    iget-object v1, v7, Lorg/osmdroid/util/SpeechBalloonHelper;->mTrianglePoint:Lorg/osmdroid/util/PointL;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/SpeechBalloonHelper;->computeCirclePoint(Lorg/osmdroid/util/PointL;DDZ)V

    move-object/from16 v0, p6

    invoke-direct {v7, v0}, Lorg/osmdroid/util/SpeechBalloonHelper;->checkIntersection(Lorg/osmdroid/util/PointL;)I

    move-result v0

    if-ne v10, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    or-int/2addr v0, v10

    return v0
.end method
