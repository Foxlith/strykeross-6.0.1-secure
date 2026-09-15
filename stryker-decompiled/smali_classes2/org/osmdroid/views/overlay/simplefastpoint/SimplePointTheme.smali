.class public final Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;


# instance fields
.field private mLabelled:Z

.field private final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mStyled:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;-><init>(Ljava/util/List;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;-><init>(Ljava/util/List;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;ZZ)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mPoints:Ljava/util/List;

    iput-boolean p2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mLabelled:Z

    iput-boolean p3, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mStyled:Z

    return-void
.end method


# virtual methods
.method public get(I)Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/api/IGeoPoint;

    return-object p1
.end method

.method public isLabelled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mLabelled:Z

    return v0
.end method

.method public isStyled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mStyled:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimplePointTheme;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
