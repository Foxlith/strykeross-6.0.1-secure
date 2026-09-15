.class public abstract Lorg/osmdroid/util/LineBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private mIndex:I

.field private final mLines:[F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/osmdroid/util/LineBuilder;->mLines:[F

    return-void
.end method

.method private innerFlush()V
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/LineBuilder;->flush()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/util/LineBuilder;->mLines:[F

    iget v1, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    long-to-float p1, p1

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    long-to-float p1, p3

    aput p1, v0, v2

    array-length p1, v0

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lorg/osmdroid/util/LineBuilder;->innerFlush()V

    :cond_0
    return-void
.end method

.method public end()V
    .locals 0

    invoke-direct {p0}, Lorg/osmdroid/util/LineBuilder;->innerFlush()V

    return-void
.end method

.method public abstract flush()V
.end method

.method public getLines()[F
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/util/LineBuilder;->mLines:[F

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    return v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    return-void
.end method
