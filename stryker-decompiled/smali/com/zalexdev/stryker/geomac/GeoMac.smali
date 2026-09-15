.class public Lcom/zalexdev/stryker/geomac/GeoMac;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic r:I


# instance fields
.field public final a:Landroidx/fragment/app/x0;

.field public b:Ll4/l;

.field public c:Landroid/content/Context;

.field public d:Landroidx/fragment/app/a0;

.field public e:Lz2/a;

.field public f:Lorg/osmdroid/views/MapView;

.field public g:Lorg/osmdroid/api/IMapController;

.field public h:Lorg/osmdroid/views/overlay/ItemizedIconOverlay;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public n:Ly2/a;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroidx/fragment/app/x0;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    iput-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->a:Landroidx/fragment/app/x0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->n:Ly2/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->q:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->h:Lorg/osmdroid/views/overlay/ItemizedIconOverlay;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->h:Lorg/osmdroid/views/overlay/ItemizedIconOverlay;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->i:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->j:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    invoke-virtual {v2}, Lz2/a;->b()V

    .line 33
    .line 34
    .line 35
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object v4, v2, Lz2/a;->c:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit v2

    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sget-object v5, Ly2/a;->d:Ly2/a;

    .line 52
    .line 53
    sget-object v6, Ly2/a;->c:Ly2/a;

    .line 54
    .line 55
    if-eqz v4, :cond_7

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ly2/b;

    .line 62
    .line 63
    iget-boolean v7, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->q:Z

    .line 64
    .line 65
    if-eqz v7, :cond_3

    .line 66
    .line 67
    iget-object v7, v4, Ly2/b;->e:Ly2/a;

    .line 68
    .line 69
    if-eq v7, v6, :cond_4

    .line 70
    .line 71
    if-ne v7, v5, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    iget-object v5, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->n:Ly2/a;

    .line 75
    .line 76
    if-eqz v5, :cond_4

    .line 77
    .line 78
    iget-object v6, v4, Ly2/b;->e:Ly2/a;

    .line 79
    .line 80
    if-ne v6, v5, :cond_2

    .line 81
    .line 82
    :cond_4
    :goto_1
    iget-object v5, v4, Ly2/b;->b:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v6, v4, Ly2/b;->a:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v5, :cond_6

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    iget-object v5, v4, Ly2/b;->b:Ljava/lang/String;

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_6
    :goto_2
    move-object v5, v6

    .line 99
    :goto_3
    new-instance v7, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 100
    .line 101
    new-instance v8, Lorg/osmdroid/util/GeoPoint;

    .line 102
    .line 103
    iget-wide v9, v4, Ly2/b;->c:D

    .line 104
    .line 105
    iget-wide v11, v4, Ly2/b;->d:D

    .line 106
    .line 107
    invoke-direct {v8, v9, v10, v11, v12}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 108
    .line 109
    .line 110
    invoke-direct {v7, v5, v6, v8}, Lorg/osmdroid/views/overlay/OverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/api/IGeoPoint;)V

    .line 111
    .line 112
    .line 113
    iget-object v5, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 114
    .line 115
    iget-object v6, v4, Ly2/b;->e:Ly2/a;

    .line 116
    .line 117
    invoke-static {v5, v6}, La3/a;->b(Landroid/content/Context;Ly2/a;)Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v7, v5}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 122
    .line 123
    .line 124
    sget-object v5, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 125
    .line 126
    invoke-virtual {v7, v5}, Lorg/osmdroid/views/overlay/OverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_7
    new-instance v1, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;

    .line 137
    .line 138
    new-instance v2, Lw2/k;

    .line 139
    .line 140
    invoke-direct {v2, p0}, Lw2/k;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 144
    .line 145
    invoke-direct {v1, v0, v2, v4}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iput-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->h:Lorg/osmdroid/views/overlay/ItemizedIconOverlay;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    .line 151
    .line 152
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->h:Lorg/osmdroid/views/overlay/ItemizedIconOverlay;

    .line 157
    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    .line 171
    .line 172
    invoke-virtual {v1, v6}, Lz2/a;->a(Ly2/a;)I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    iget-object v2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    .line 177
    .line 178
    invoke-virtual {v2, v5}, Lz2/a;->a(Ly2/a;)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    iget-object v3, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    .line 183
    .line 184
    sget-object v4, Ly2/a;->b:Ly2/a;

    .line 185
    .line 186
    invoke-virtual {v3, v4}, Lz2/a;->a(Ly2/a;)I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    iget-object v4, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->l:Landroid/widget/TextView;

    .line 191
    .line 192
    new-instance v5, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v6, " \u00b7 "

    .line 201
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, "S "

    .line 209
    .line 210
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    add-int/2addr v1, v2

    .line 214
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v1, "C"

    .line 218
    .line 219
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->k:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    const v2, 0x7f13020f

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    monitor-exit v2

    .line 252
    throw v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->k:Landroid/widget/TextView;

    const v2, 0x7f130212

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lw2/h;

    invoke-direct {v2, p0, p1, v1}, Lw2/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string p1, "geomac-lookup"

    invoke-direct {v0, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "GeoMac"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    const v0, 0x7f1301fe

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->a:Landroidx/fragment/app/x0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 13
    .line 14
    const-string v1, "StrykerOSS"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onPause()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onResume()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->d:Landroidx/fragment/app/a0;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Ll4/l;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->b:Ll4/l;

    .line 19
    .line 20
    new-instance p2, Lz2/a;

    .line 21
    .line 22
    invoke-direct {p2, v0}, Lz2/a;-><init>(Ll4/l;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->e:Lz2/a;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->c:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {p2, v1, v2}, Lorg/osmdroid/config/IConfigurationProvider;->load(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 44
    .line 45
    .line 46
    const p2, 0x7f0a0224

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lorg/osmdroid/views/MapView;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    iget-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->b:Ll4/l;

    .line 65
    .line 66
    const-string v3, "geomac_satellite"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 78
    .line 79
    :goto_0
    invoke-virtual {p2, v2}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    .line 83
    .line 84
    invoke-virtual {p2, v0}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->f:Lorg/osmdroid/views/MapView;

    .line 88
    .line 89
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iput-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->g:Lorg/osmdroid/api/IMapController;

    .line 94
    .line 95
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 96
    .line 97
    invoke-interface {p2, v2, v3}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 98
    .line 99
    .line 100
    const p2, 0x7f0a0223

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    check-cast p2, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->k:Landroid/widget/TextView;

    .line 110
    .line 111
    const p2, 0x7f0a021e

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Landroid/widget/TextView;

    .line 119
    .line 120
    iput-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->l:Landroid/widget/TextView;

    .line 121
    .line 122
    const p2, 0x7f0a0217

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 130
    .line 131
    iput-object p2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->m:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 132
    .line 133
    const p2, 0x7f0a0222

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 141
    .line 142
    const v2, 0x7f0a0221

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 150
    .line 151
    new-instance v3, Lcom/google/android/material/snackbar/a;

    .line 152
    .line 153
    const/16 v4, 0xf

    .line 154
    .line 155
    invoke-direct {v3, p0, v2, v4}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    new-instance p2, Lw2/d;

    .line 162
    .line 163
    invoke-direct {p2, p0, v2}, Lw2/d;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 167
    .line 168
    .line 169
    const p2, 0x7f0a021f

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Lcom/google/android/material/chip/ChipGroup;

    .line 177
    .line 178
    new-instance v3, Lv/f;

    .line 179
    .line 180
    const/16 v4, 0xa

    .line 181
    .line 182
    invoke-direct {v3, p0, v4}, Lv/f;-><init>(Ljava/lang/Object;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/ChipGroup;->setOnCheckedStateChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;)V

    .line 186
    .line 187
    .line 188
    const v2, 0x7f0a0215

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 196
    .line 197
    const v3, 0x7f0a0216

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 205
    .line 206
    const v4, 0x7f0a0214

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 214
    .line 215
    const v5, 0x7f0a0213

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 223
    .line 224
    new-instance v6, Lw2/f;

    .line 225
    .line 226
    const/4 v7, 0x0

    .line 227
    invoke-direct {v6, p0, v7}, Lw2/f;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    new-instance v2, Lw2/f;

    .line 234
    .line 235
    invoke-direct {v2, p0, v0}, Lw2/f;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    new-instance v2, Lw2/f;

    .line 242
    .line 243
    invoke-direct {v2, p0, v1}, Lw2/f;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    new-instance v1, Lw2/f;

    .line 250
    .line 251
    const/4 v2, 0x3

    .line 252
    invoke-direct {v1, p0, v2}, Lw2/f;-><init>(Lcom/zalexdev/stryker/geomac/GeoMac;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->b:Ll4/l;

    .line 259
    .line 260
    if-nez v1, :cond_1

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_1
    const-string v2, "geomac_cracked_filter"

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    iget-object v2, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->b:Ll4/l;

    .line 270
    .line 271
    const-string v3, "geomac_filter"

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    if-eqz v1, :cond_2

    .line 278
    .line 279
    const v7, 0x7f0a0219

    .line 280
    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-nez v1, :cond_6

    .line 288
    .line 289
    :try_start_0
    invoke-static {v2}, Ly2/a;->valueOf(Ljava/lang/String;)Ly2/a;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 294
    .line 295
    .line 296
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    if-eqz v1, :cond_5

    .line 298
    .line 299
    if-eq v1, v0, :cond_4

    .line 300
    .line 301
    const/4 v0, 0x4

    .line 302
    if-eq v1, v0, :cond_3

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_3
    const v7, 0x7f0a021b

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_4
    const v7, 0x7f0a021c

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :cond_5
    const v7, 0x7f0a021a

    .line 314
    .line 315
    .line 316
    :catch_0
    :cond_6
    :goto_1
    if-eqz v7, :cond_7

    .line 317
    .line 318
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    check-cast p1, Lcom/google/android/material/chip/ChipGroup;

    .line 323
    .line 324
    invoke-virtual {p1, v7}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    .line 325
    .line 326
    .line 327
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/zalexdev/stryker/geomac/GeoMac;->d()V

    .line 328
    .line 329
    .line 330
    iget-object p1, p0, Lcom/zalexdev/stryker/geomac/GeoMac;->a:Landroidx/fragment/app/x0;

    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    sget-object p1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 336
    .line 337
    const-string p2, "GeoMac"

    .line 338
    .line 339
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    .line 341
    .line 342
    return-void
.end method
