.class Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroidx/recyclerview/widget/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/k0;"
    }
.end annotation


# static fields
.field private static final STATE_ACTION_VIEWS:Ljava/lang/String; = "android:menu:action_views"

.field private static final STATE_CHECKED_ITEM:Ljava/lang/String; = "android:menu:checked"

.field private static final VIEW_TYPE_HEADER:I = 0x3

.field private static final VIEW_TYPE_NORMAL:I = 0x0

.field private static final VIEW_TYPE_SEPARATOR:I = 0x2

.field private static final VIEW_TYPE_SUBHEADER:I = 0x1


# instance fields
.field private checkedItem:Landroidx/appcompat/view/menu/q;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/k0;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->adjustItemPositionForA11yDelegate(I)I

    move-result p0

    return p0
.end method

.method private adjustItemPositionForA11yDelegate(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object p1, p1, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    return v1
.end method

.method private appendTransparentIconIfMissing(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepareMenuItems()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v3, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    .line 19
    .line 20
    invoke-direct {v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/o;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/o;->getVisibleItems()Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, -0x1

    .line 40
    move v5, v3

    .line 41
    move v6, v5

    .line 42
    move v7, v6

    .line 43
    :goto_0
    if-ge v5, v2, :cond_e

    .line 44
    .line 45
    iget-object v8, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 46
    .line 47
    iget-object v8, v8, Lcom/google/android/material/internal/NavigationMenuPresenter;->menu:Landroidx/appcompat/view/menu/o;

    .line 48
    .line 49
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/o;->getVisibleItems()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    check-cast v8, Landroidx/appcompat/view/menu/q;

    .line 58
    .line 59
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/q;->isChecked()Z

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/q;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/q;->isCheckable()Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_2

    .line 73
    .line 74
    invoke-virtual {v8, v3}, Landroidx/appcompat/view/menu/q;->g(Z)V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/q;->hasSubMenu()Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    if-eqz v9, :cond_9

    .line 82
    .line 83
    iget-object v9, v8, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    .line 84
    .line 85
    invoke-interface {v9}, Landroid/view/Menu;->hasVisibleItems()Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_d

    .line 90
    .line 91
    if-eqz v5, :cond_3

    .line 92
    .line 93
    iget-object v10, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 94
    .line 95
    new-instance v11, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 96
    .line 97
    iget-object v12, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 98
    .line 99
    iget v12, v12, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 100
    .line 101
    invoke-direct {v11, v12, v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v10, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 108
    .line 109
    new-instance v11, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 110
    .line 111
    invoke-direct {v11, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/q;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    iget-object v10, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-interface {v9}, Landroid/view/Menu;->size()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    move v12, v3

    .line 128
    move v13, v12

    .line 129
    :goto_1
    if-ge v12, v11, :cond_8

    .line 130
    .line 131
    invoke-interface {v9, v12}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    check-cast v14, Landroidx/appcompat/view/menu/q;

    .line 136
    .line 137
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/q;->isVisible()Z

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    if-eqz v15, :cond_7

    .line 142
    .line 143
    if-nez v13, :cond_4

    .line 144
    .line 145
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/q;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    if-eqz v15, :cond_4

    .line 150
    .line 151
    move v13, v1

    .line 152
    :cond_4
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/q;->isCheckable()Z

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    if-eqz v15, :cond_5

    .line 157
    .line 158
    invoke-virtual {v14, v3}, Landroidx/appcompat/view/menu/q;->g(Z)V

    .line 159
    .line 160
    .line 161
    :cond_5
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/q;->isChecked()Z

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    if-eqz v15, :cond_6

    .line 166
    .line 167
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/q;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    iget-object v15, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 171
    .line 172
    new-instance v1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 173
    .line 174
    invoke-direct {v1, v14}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/q;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    goto :goto_1

    .line 184
    :cond_8
    if-eqz v13, :cond_d

    .line 185
    .line 186
    iget-object v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-direct {v0, v10, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_9
    iget v1, v8, Landroidx/appcompat/view/menu/q;->b:I

    .line 197
    .line 198
    if-eq v1, v4, :cond_b

    .line 199
    .line 200
    iget-object v4, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/q;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    if-eqz v4, :cond_a

    .line 211
    .line 212
    const/4 v6, 0x1

    .line 213
    goto :goto_2

    .line 214
    :cond_a
    move v6, v3

    .line 215
    :goto_2
    if-eqz v5, :cond_c

    .line 216
    .line 217
    add-int/lit8 v7, v7, 0x1

    .line 218
    .line 219
    iget-object v4, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 220
    .line 221
    new-instance v9, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    .line 222
    .line 223
    iget-object v10, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 224
    .line 225
    iget v10, v10, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingSeparator:I

    .line 226
    .line 227
    invoke-direct {v9, v10, v10}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_b
    if-nez v6, :cond_c

    .line 235
    .line 236
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/q;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    if-eqz v4, :cond_c

    .line 241
    .line 242
    iget-object v4, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    invoke-direct {v0, v7, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    .line 249
    .line 250
    .line 251
    const/4 v6, 0x1

    .line 252
    :cond_c
    :goto_3
    new-instance v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 253
    .line 254
    invoke-direct {v4, v8}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroidx/appcompat/view/menu/q;)V

    .line 255
    .line 256
    .line 257
    iput-boolean v6, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    .line 258
    .line 259
    iget-object v8, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move v4, v1

    .line 265
    :cond_d
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 266
    .line 267
    const/4 v1, 0x1

    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :cond_e
    iput-boolean v3, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    .line 271
    .line 272
    return-void
.end method

.method private setAccessibilityDelegate(Landroid/view/View;IZ)V
    .locals 1

    new-instance v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter$1;-><init>(Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;IZ)V

    invoke-static {p1, v0}, Landroidx/core/view/c1;->o(Landroid/view/View;Landroidx/core/view/c;)V

    return-void
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/q;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, v1, Landroidx/appcompat/view/menu/q;->a:I

    .line 11
    .line 12
    const-string v2, "android:menu:checked"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v2, :cond_3

    .line 30
    .line 31
    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    .line 38
    .line 39
    instance-of v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/q;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/q;->getActionView()Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v5, 0x0

    .line 57
    :goto_1
    if-eqz v5, :cond_2

    .line 58
    .line 59
    new-instance v6, Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 60
    .line 61
    invoke-direct {v6}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 65
    .line 66
    .line 67
    iget v4, v4, Landroidx/appcompat/view/menu/q;->a:I

    .line 68
    .line 69
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const-string v2, "android:menu:action_views"

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method

.method public getCheckedItem()Landroidx/appcompat/view/menu/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/q;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/q;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRowCount()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v3, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v3

    if-eqz v3, :cond_1

    if-ne v3, v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;I)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->dividerInsetStart:I

    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v2, v2, Lcom/google/android/material/internal/NavigationMenuPresenter;->dividerInsetEnd:I

    invoke-virtual {p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/q;

    move-result-object v0

    .line 2
    iget-object v0, v0, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->subheaderTextAppearance:I

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 5
    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->subheaderInsetStart:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v3, v3, Lcom/google/android/material/internal/NavigationMenuPresenter;->subheaderInsetEnd:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->subheaderColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setAccessibilityDelegate(Landroid/view/View;IZ)V

    goto/16 :goto_2

    :cond_5
    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->textAppearance:I

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {p1, v0}, Landroidx/core/view/k0;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 7
    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemForeground:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/ForegroundLinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    iget-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v2, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemHorizontalPadding:I

    iget v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemVerticalPadding:I

    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconPadding:I

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-boolean v2, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->hasCustomItemIconSize:Z

    if-eqz v2, :cond_a

    iget v1, v1, Lcom/google/android/material/internal/NavigationMenuPresenter;->itemIconSize:I

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    :cond_a
    iget-object v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    invoke-static {v1}, Lcom/google/android/material/internal/NavigationMenuPresenter;->access$000(Lcom/google/android/material/internal/NavigationMenuPresenter;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Landroidx/appcompat/view/menu/q;I)V

    goto/16 :goto_0

    :goto_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
    .locals 2

    .line 2
    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object p2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object p2, p2, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lcom/google/android/material/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_2
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_3
    new-instance p2, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Lcom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/p1;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;)V
    .locals 1

    .line 2
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->recycle()V

    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "android:menu:checked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v5, v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/q;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, v4, Landroidx/appcompat/view/menu/q;->a:I

    if-ne v5, v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroidx/appcompat/view/menu/q;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    :cond_2
    const-string v0, "android:menu:action_views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v3, v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    check-cast v2, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v2}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroidx/appcompat/view/menu/q;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/q;->getActionView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    iget v2, v2, Landroidx/appcompat/view/menu/q;->a:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public setCheckedItem(Landroidx/appcompat/view/menu/q;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/q;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/q;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/q;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->checkedItem:Landroidx/appcompat/view/menu/q;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/q;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->updateSuspended:Z

    return-void
.end method

.method public update()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    return-void
.end method
