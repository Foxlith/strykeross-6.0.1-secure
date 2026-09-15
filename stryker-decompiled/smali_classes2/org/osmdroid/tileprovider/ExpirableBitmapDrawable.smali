.class public Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# static fields
.field public static final EXPIRED:I = -0x2

.field public static final NOT_FOUND:I = -0x4

.field public static final SCALED:I = -0x3

.field public static final UP_TO_DATE:I = -0x1

.field private static final defaultStatus:I = -0x1

.field private static final settableStatuses:[I


# instance fields
.field private mState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, -0x3

    const/4 v1, -0x4

    const/4 v2, -0x2

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->settableStatuses:[I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->mState:[I

    return-void
.end method

.method public static getState(Landroid/graphics/drawable/Drawable;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p0, v2

    sget-object v4, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->settableStatuses:[I

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    if-ne v3, v7, :cond_0

    return v3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static isDrawableExpired(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setDrawableExpired(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static setState(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method


# virtual methods
.method public getState()[I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->mState:[I

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->mState:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setState([I)Z
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->mState:[I

    const/4 p1, 0x1

    return p1
.end method
