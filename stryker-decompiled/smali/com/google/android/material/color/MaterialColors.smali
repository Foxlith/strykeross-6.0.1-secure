.class public Lcom/google/android/material/color/MaterialColors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALPHA_DISABLED:F = 0.38f

.field public static final ALPHA_DISABLED_LOW:F = 0.12f

.field public static final ALPHA_FULL:F = 1.0f

.field public static final ALPHA_LOW:F = 0.32f

.field public static final ALPHA_MEDIUM:F = 0.54f

.field private static final TONE_ACCENT_CONTAINER_DARK:I = 0x1e

.field private static final TONE_ACCENT_CONTAINER_LIGHT:I = 0x5a

.field private static final TONE_ACCENT_DARK:I = 0x50

.field private static final TONE_ACCENT_LIGHT:I = 0x28

.field private static final TONE_ON_ACCENT_CONTAINER_DARK:I = 0x5a

.field private static final TONE_ON_ACCENT_CONTAINER_LIGHT:I = 0xa

.field private static final TONE_ON_ACCENT_DARK:I = 0x14

.field private static final TONE_ON_ACCENT_LIGHT:I = 0x64


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compositeARGBWithAlpha(II)I
    .locals 1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Lz/d;->e(II)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/content/Context;II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getColor(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/view/View;I)I
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/view/View;II)I
    .locals 0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static getColorRole(II)I
    .locals 2

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/color/utilities/Hct;->setTone(D)V

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result p0

    return p0
.end method

.method public static getColorRoles(IZ)Lcom/google/android/material/color/ColorRoles;
    .locals 4

    .line 1
    const/16 v0, 0x5a

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/material/color/ColorRoles;

    const/16 v1, 0x28

    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v2

    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v0

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result p0

    invoke-direct {p1, v1, v2, v0, p0}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/material/color/ColorRoles;

    const/16 v1, 0x50

    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v2

    const/16 v3, 0x1e

    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v3

    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result p0

    invoke-direct {p1, v1, v2, v3, p0}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    :goto_0
    return-object p1
.end method

.method public static getColorRoles(Landroid/content/Context;I)Lcom/google/android/material/color/ColorRoles;
    .locals 2

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->isLightTheme:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/material/color/MaterialColors;->getColorRoles(IZ)Lcom/google/android/material/color/ColorRoles;

    move-result-object p0

    return-object p0
.end method

.method public static getColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->resolveColorStateList(Landroid/content/Context;Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p0

    :goto_1
    return-object p2
.end method

.method public static getColorStateListOrNull(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_1

    invoke-static {p0, v1}, Lx/g;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static harmonize(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/Blend;->harmonize(II)I

    move-result p0

    return p0
.end method

.method public static harmonizeWithPrimary(Landroid/content/Context;I)I
    .locals 2

    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    const-class v1, Lcom/google/android/material/color/MaterialColors;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result p0

    return p0
.end method

.method public static isColorLight(I)Z
    .locals 20

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    sget-object v1, Lz/d;->a:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, [D

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-array v2, v3, [D

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    array-length v6, v2

    .line 32
    if-ne v6, v3, :cond_4

    .line 33
    .line 34
    int-to-double v6, v1

    .line 35
    const-wide v8, 0x406fe00000000000L    # 255.0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    div-double/2addr v6, v8

    .line 41
    const-wide v10, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmpg-double v1, v6, v10

    .line 47
    .line 48
    const-wide v12, 0x4003333333333333L    # 2.4

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const-wide v14, 0x3ff0e147ae147ae1L    # 1.055

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    const-wide v16, 0x3fac28f5c28f5c29L    # 0.055

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    const-wide v18, 0x4029d70a3d70a3d7L    # 12.92

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    if-gez v1, :cond_1

    .line 69
    .line 70
    div-double v6, v6, v18

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    add-double v6, v6, v16

    .line 74
    .line 75
    div-double/2addr v6, v14

    .line 76
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    :goto_0
    int-to-double v3, v4

    .line 81
    div-double/2addr v3, v8

    .line 82
    cmpg-double v1, v3, v10

    .line 83
    .line 84
    if-gez v1, :cond_2

    .line 85
    .line 86
    div-double v3, v3, v18

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    add-double v3, v3, v16

    .line 90
    .line 91
    div-double/2addr v3, v14

    .line 92
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    :goto_1
    int-to-double v0, v5

    .line 97
    div-double/2addr v0, v8

    .line 98
    cmpg-double v5, v0, v10

    .line 99
    .line 100
    if-gez v5, :cond_3

    .line 101
    .line 102
    div-double v0, v0, v18

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    add-double v0, v0, v16

    .line 106
    .line 107
    div-double/2addr v0, v14

    .line 108
    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    :goto_2
    const-wide v8, 0x3fda64c2f837b4a2L    # 0.4124

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    mul-double/2addr v8, v6

    .line 118
    const-wide v10, 0x3fd6e2eb1c432ca5L    # 0.3576

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    mul-double/2addr v10, v3

    .line 124
    add-double/2addr v10, v8

    .line 125
    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    mul-double/2addr v8, v0

    .line 131
    add-double/2addr v8, v10

    .line 132
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 133
    .line 134
    mul-double/2addr v8, v10

    .line 135
    const/4 v5, 0x0

    .line 136
    aput-wide v8, v2, v5

    .line 137
    .line 138
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    mul-double/2addr v8, v6

    .line 144
    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    mul-double/2addr v12, v3

    .line 150
    add-double/2addr v12, v8

    .line 151
    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    mul-double/2addr v8, v0

    .line 157
    add-double/2addr v8, v12

    .line 158
    mul-double/2addr v8, v10

    .line 159
    const/4 v12, 0x1

    .line 160
    aput-wide v8, v2, v12

    .line 161
    .line 162
    const-wide v13, 0x3f93c36113404ea5L    # 0.0193

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    mul-double/2addr v6, v13

    .line 168
    const-wide v13, 0x3fbe83e425aee632L    # 0.1192

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    mul-double/2addr v3, v13

    .line 174
    add-double/2addr v3, v6

    .line 175
    const-wide v6, 0x3fee6a7ef9db22d1L    # 0.9505

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    mul-double/2addr v0, v6

    .line 181
    add-double/2addr v0, v3

    .line 182
    mul-double/2addr v0, v10

    .line 183
    const/4 v3, 0x2

    .line 184
    aput-wide v0, v2, v3

    .line 185
    .line 186
    div-double/2addr v8, v10

    .line 187
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 188
    .line 189
    cmpl-double v0, v8, v0

    .line 190
    .line 191
    if-lez v0, :cond_6

    .line 192
    .line 193
    move v0, v12

    .line 194
    goto :goto_3

    .line 195
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 196
    .line 197
    const-string v1, "outXyz must have a length of 3."

    .line 198
    .line 199
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :cond_5
    const/4 v5, 0x0

    .line 204
    :cond_6
    move v0, v5

    .line 205
    :goto_3
    return v0
.end method

.method public static layer(II)I
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lz/d;->c(II)I

    move-result p0

    return p0
.end method

.method public static layer(IIF)I
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Lz/d;->e(II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result p0

    return p0
.end method

.method public static layer(Landroid/view/View;II)I
    .locals 1

    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/MaterialColors;->layer(Landroid/view/View;IIF)I

    move-result p0

    return p0
.end method

.method public static layer(Landroid/view/View;IIF)I
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result p1

    invoke-static {p0, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result p0

    invoke-static {p1, p0, p3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result p0

    return p0
.end method

.method private static resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I
    .locals 1

    .line 1
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lx/g;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 13
    .line 14
    return p0
.end method

.method private static resolveColorStateList(Landroid/content/Context;Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;
    .locals 1

    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lx/g;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    iget p0, p1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method
