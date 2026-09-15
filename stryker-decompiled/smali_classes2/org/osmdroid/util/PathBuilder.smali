.class public Lorg/osmdroid/util/PathBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private mFirst:Z

.field private final mLatestPoint:Lorg/osmdroid/util/PointL;

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iput-object p1, p0, Lorg/osmdroid/util/PathBuilder;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 3

    iget-boolean v0, p0, Lorg/osmdroid/util/PathBuilder;->mFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/PathBuilder;->mFirst:Z

    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mPath:Landroid/graphics/Path;

    long-to-float v1, p1

    long-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/util/PathBuilder;->mPath:Landroid/graphics/Path;

    long-to-float v1, p1

    long-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/PathBuilder;->mFirst:Z

    return-void
.end method
