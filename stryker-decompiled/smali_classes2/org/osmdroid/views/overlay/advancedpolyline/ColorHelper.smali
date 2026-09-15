.class public Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor(FFF)I
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v2, v1

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    sub-float/2addr p2, p1

    const/high16 p1, 0x42700000    # 60.0f

    div-float p1, p0, p1

    rem-float/2addr p1, v0

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr v2, p1

    mul-float/2addr v2, v1

    float-to-int p0, p0

    div-int/lit8 p0, p0, 0x3c

    const/high16 p1, 0x437f0000    # 255.0f

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    move p0, v0

    move p1, p0

    move v1, p1

    goto :goto_3

    :pswitch_0
    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-float v1, p2, p1

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v2, p2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_3

    :pswitch_1
    add-float/2addr v2, p2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-float v2, p2, p1

    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v1, v2

    goto :goto_3

    :pswitch_2
    mul-float p0, p2, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-float/2addr v2, p2

    mul-float/2addr v2, p1

    goto :goto_1

    :pswitch_3
    mul-float p0, p2, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    goto :goto_0

    :pswitch_4
    add-float/2addr v2, p2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_2
    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_3

    :pswitch_5
    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-float/2addr v2, p2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2

    :goto_3
    const/16 p2, 0xff

    invoke-static {p0, v0, p2}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(III)I

    move-result p0

    invoke-static {v1, v0, p2}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(III)I

    move-result v1

    invoke-static {p1, v0, p2}, Lorg/osmdroid/views/overlay/advancedpolyline/ColorHelper;->constrain(III)I

    move-result p1

    invoke-static {p0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static constrain(FFF)F
    .locals 1

    .line 1
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private static constrain(III)I
    .locals 0

    .line 2
    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method
