.class public final Lcom/google/android/material/color/utilities/TonalPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field chroma:D

.field hue:D


# direct methods
.method private constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    iput-wide p1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iput-wide p3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    return-void
.end method

.method public static final fromHct(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method

.method public static final fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1

    new-instance v0, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DD)V

    return-object v0
.end method

.method public static final fromInt(I)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHct(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getChroma()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    return-wide v0
.end method

.method public getHct(D)Lcom/google/android/material/color/utilities/Hct;
    .locals 6

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p1

    return-object p1
.end method

.method public getHue()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    return-wide v0
.end method

.method public tone(I)I
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    int-to-double v5, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
