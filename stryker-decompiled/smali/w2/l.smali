.class public final synthetic Lw2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/widget/ProgressBar;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/widget/ProgressBar;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p7, p0, Lw2/l;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lw2/l;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lw2/l;->c:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    iput-object p3, p0, Lw2/l;->d:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p4, p0, Lw2/l;->e:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p5, p0, Lw2/l;->f:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p6, p0, Lw2/l;->g:Landroid/view/View;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw2/l;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    iget-object v4, v0, Lw2/l;->c:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    iget-object v5, v0, Lw2/l;->g:Landroid/view/View;

    .line 11
    .line 12
    iget-object v6, v0, Lw2/l;->f:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v7, v0, Lw2/l;->e:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v8, v0, Lw2/l;->d:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v9, v0, Lw2/l;->b:Ljava/lang/Object;

    .line 19
    .line 20
    packed-switch v1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    check-cast v9, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;

    .line 24
    .line 25
    check-cast v8, Landroid/widget/ImageView;

    .line 26
    .line 27
    check-cast v7, Landroid/widget/TextView;

    .line 28
    .line 29
    check-cast v6, Landroid/view/View;

    .line 30
    .line 31
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 32
    .line 33
    sget v1, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->d:I

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-virtual {v9, v4, v8, v7, v1}, Lcom/zalexdev/stryker/settings/SettingsHomeFragment;->f(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_0
    check-cast v9, Lcom/zalexdev/stryker/geomac/GeoMacInline;

    .line 47
    .line 48
    check-cast v4, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 49
    .line 50
    move-object v1, v8

    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    check-cast v7, Ljava/lang/String;

    .line 54
    .line 55
    check-cast v6, Lorg/osmdroid/api/IMapController;

    .line 56
    .line 57
    check-cast v5, Lorg/osmdroid/views/MapView;

    .line 58
    .line 59
    sget-object v8, Lcom/zalexdev/stryker/geomac/GeoMacInline;->c:Ljava/util/regex/Pattern;

    .line 60
    .line 61
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const v4, 0x7f1304ba

    .line 72
    .line 73
    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    iget-object v1, v9, Lcom/zalexdev/stryker/geomac/GeoMacInline;->a:Ll4/l;

    .line 77
    .line 78
    invoke-virtual {v9}, Lf/q;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :goto_0
    invoke-virtual {v1, v2}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_0
    :try_start_0
    const-string v3, " "

    .line 92
    .line 93
    const-string v8, ""

    .line 94
    .line 95
    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v8, ","

    .line 100
    .line 101
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    aget-object v2, v3, v2

    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 108
    .line 109
    .line 110
    move-result-wide v13

    .line 111
    const/4 v2, 0x1

    .line 112
    aget-object v3, v3, v2

    .line 113
    .line 114
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 115
    .line 116
    .line 117
    move-result-wide v11

    .line 118
    new-instance v3, Ly2/b;

    .line 119
    .line 120
    const-string v8, ""

    .line 121
    .line 122
    sget-object v15, Ly2/a;->a:Ly2/a;

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v18

    .line 128
    const/16 v20, 0x0

    .line 129
    .line 130
    move-object v10, v3

    .line 131
    move-wide/from16 v21, v11

    .line 132
    .line 133
    move-object v11, v7

    .line 134
    move-object v12, v8

    .line 135
    move-wide/from16 v23, v13

    .line 136
    .line 137
    move-object v8, v15

    .line 138
    move-wide/from16 v15, v21

    .line 139
    .line 140
    move-object/from16 v17, v8

    .line 141
    .line 142
    invoke-direct/range {v10 .. v20}, Ly2/b;-><init>(Ljava/lang/String;Ljava/lang/String;DDLy2/a;JLjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v10, v9, Lcom/zalexdev/stryker/geomac/GeoMacInline;->b:Lz2/a;

    .line 146
    .line 147
    invoke-virtual {v10, v3}, Lz2/a;->f(Ly2/b;)V

    .line 148
    .line 149
    .line 150
    new-instance v3, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    new-instance v10, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 156
    .line 157
    new-instance v11, Lorg/osmdroid/util/GeoPoint;

    .line 158
    .line 159
    move-object/from16 v18, v5

    .line 160
    .line 161
    move-wide/from16 v4, v21

    .line 162
    .line 163
    move-wide/from16 v13, v23

    .line 164
    .line 165
    invoke-direct {v11, v13, v14, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 166
    .line 167
    .line 168
    invoke-direct {v10, v7, v1, v11}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v9, v8}, La3/a;->b(Landroid/content/Context;Ly2/a;)Landroid/graphics/drawable/BitmapDrawable;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v10, v7}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    new-instance v7, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;

    .line 182
    .line 183
    new-instance v8, Lw2/m;

    .line 184
    .line 185
    move-object v10, v8

    .line 186
    move-object v11, v9

    .line 187
    move-object v12, v6

    .line 188
    move-wide/from16 v23, v13

    .line 189
    .line 190
    move-wide v15, v4

    .line 191
    move-object/from16 v17, v1

    .line 192
    .line 193
    invoke-direct/range {v10 .. v17}, Lw2/m;-><init>(Lcom/zalexdev/stryker/geomac/GeoMacInline;Lorg/osmdroid/api/IMapController;DDLjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-direct {v7, v3, v8, v9}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v2}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->setFocusItemsOnTap(Z)V

    .line 200
    .line 201
    .line 202
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    .line 210
    .line 211
    move-wide/from16 v2, v23

    .line 212
    .line 213
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v6, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 217
    .line 218
    .line 219
    const-wide/high16 v1, 0x4032000000000000L    # 18.0

    .line 220
    .line 221
    invoke-interface {v6, v1, v2}, Lorg/osmdroid/api/IMapController;->setZoom(D)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .line 223
    .line 224
    goto :goto_1

    .line 225
    :catch_0
    iget-object v1, v9, Lcom/zalexdev/stryker/geomac/GeoMacInline;->a:Ll4/l;

    .line 226
    .line 227
    invoke-virtual {v9}, Lf/q;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const v3, 0x7f1304ba

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :goto_1
    return-void

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
