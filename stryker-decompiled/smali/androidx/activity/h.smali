.class public abstract Landroidx/activity/h;
.super Lv/n;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/y0;
.implements Landroidx/lifecycle/i;
.implements Lb1/f;
.implements Landroidx/activity/q;
.implements Landroidx/activity/result/h;


# static fields
.field private static final ACTIVITY_RESULT_TAG:Ljava/lang/String; = "android:support:activity-result"


# instance fields
.field private final mActivityResultRegistry:Landroidx/activity/result/g;

.field private mContentLayoutId:I

.field final mContextAwareHelper:Lc/a;

.field private mDefaultFactory:Landroidx/lifecycle/v0;

.field private mDispatchingOnMultiWindowModeChanged:Z

.field private mDispatchingOnPictureInPictureModeChanged:Z

.field private final mLifecycleRegistry:Landroidx/lifecycle/v;

.field private final mMenuHostHelper:Landroidx/core/view/s;

.field private final mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOnBackPressedDispatcher:Landroidx/activity/p;

.field private final mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lg0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lg0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lg0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lg0/a;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lg0/a;",
            ">;"
        }
    .end annotation
.end field

.field final mSavedStateRegistryController:Lb1/e;

.field private mViewModelStore:Landroidx/lifecycle/x0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lv/n;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lc/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/activity/h;->mContextAwareHelper:Lc/a;

    .line 10
    .line 11
    new-instance v0, Landroidx/core/view/s;

    .line 12
    .line 13
    new-instance v1, Landroidx/activity/b;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/core/view/s;-><init>(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/activity/h;->mMenuHostHelper:Landroidx/core/view/s;

    .line 23
    .line 24
    new-instance v0, Landroidx/lifecycle/v;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Landroidx/activity/h;->mLifecycleRegistry:Landroidx/lifecycle/v;

    .line 30
    .line 31
    new-instance v0, Lb1/e;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lb1/e;-><init>(Lb1/f;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Landroidx/activity/h;->mSavedStateRegistryController:Lb1/e;

    .line 37
    .line 38
    new-instance v1, Landroidx/activity/p;

    .line 39
    .line 40
    new-instance v3, Landroidx/activity/d;

    .line 41
    .line 42
    invoke-direct {v3, p0, v2}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v3}, Landroidx/activity/p;-><init>(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Landroidx/activity/h;->mOnBackPressedDispatcher:Landroidx/activity/p;

    .line 49
    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Landroidx/activity/h;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    .line 57
    new-instance v1, Landroidx/activity/e;

    .line 58
    .line 59
    move-object v3, p0

    .line 60
    check-cast v3, Landroidx/fragment/app/a0;

    .line 61
    .line 62
    invoke-direct {v1, v3}, Landroidx/activity/e;-><init>(Landroidx/fragment/app/a0;)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Landroidx/activity/h;->mActivityResultRegistry:Landroidx/activity/result/g;

    .line 66
    .line 67
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Landroidx/activity/h;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    .line 74
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Landroidx/activity/h;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    .line 81
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Landroidx/activity/h;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    .line 88
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Landroidx/activity/h;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    .line 95
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Landroidx/activity/h;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 101
    .line 102
    iput-boolean v2, p0, Landroidx/activity/h;->mDispatchingOnMultiWindowModeChanged:Z

    .line 103
    .line 104
    iput-boolean v2, p0, Landroidx/activity/h;->mDispatchingOnPictureInPictureModeChanged:Z

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/activity/h;->getLifecycle()Landroidx/lifecycle/o;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/activity/h;->getLifecycle()Landroidx/lifecycle/o;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Landroidx/activity/ComponentActivity$3;

    .line 117
    .line 118
    invoke-direct {v2, v3}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/fragment/app/a0;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroidx/activity/h;->getLifecycle()Landroidx/lifecycle/o;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v2, Landroidx/activity/ComponentActivity$4;

    .line 129
    .line 130
    invoke-direct {v2, v3}, Landroidx/activity/ComponentActivity$4;-><init>(Landroidx/fragment/app/a0;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroidx/activity/h;->getLifecycle()Landroidx/lifecycle/o;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v2, Landroidx/activity/ComponentActivity$5;

    .line 141
    .line 142
    invoke-direct {v2, v3}, Landroidx/activity/ComponentActivity$5;-><init>(Landroidx/fragment/app/a0;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lb1/e;->a()V

    .line 149
    .line 150
    .line 151
    invoke-interface {p0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroidx/lifecycle/v;

    .line 156
    .line 157
    iget-object v0, v0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/n;

    .line 158
    .line 159
    const-string v1, "lifecycle.currentState"

    .line 160
    .line 161
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 165
    .line 166
    if-eq v0, v1, :cond_1

    .line 167
    .line 168
    sget-object v1, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 169
    .line 170
    if-ne v0, v1, :cond_0

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string v1, "Failed requirement."

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v0

    .line 185
    :cond_1
    :goto_0
    invoke-interface {p0}, Lb1/f;->getSavedStateRegistry()Lb1/d;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lb1/d;->b()Lb1/c;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-nez v0, :cond_2

    .line 194
    .line 195
    new-instance v0, Landroidx/lifecycle/n0;

    .line 196
    .line 197
    invoke-interface {p0}, Lb1/f;->getSavedStateRegistry()Lb1/d;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-direct {v0, v1, v3}, Landroidx/lifecycle/n0;-><init>(Lb1/d;Landroidx/fragment/app/a0;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {p0}, Lb1/f;->getSavedStateRegistry()Lb1/d;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 209
    .line 210
    invoke-virtual {v1, v2, v0}, Lb1/d;->c(Ljava/lang/String;Lb1/c;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {p0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    new-instance v2, Landroidx/lifecycle/SavedStateHandleAttacher;

    .line 218
    .line 219
    invoke-direct {v2, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/n0;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 223
    .line 224
    .line 225
    :cond_2
    invoke-virtual {p0}, Landroidx/activity/h;->getSavedStateRegistry()Lb1/d;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    new-instance v1, Landroidx/lifecycle/j0;

    .line 230
    .line 231
    const/4 v2, 0x2

    .line 232
    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;I)V

    .line 233
    .line 234
    .line 235
    const-string v2, "android:support:activity-result"

    .line 236
    .line 237
    invoke-virtual {v0, v2, v1}, Lb1/d;->c(Ljava/lang/String;Lb1/c;)V

    .line 238
    .line 239
    .line 240
    new-instance v0, Landroidx/activity/c;

    .line 241
    .line 242
    invoke-direct {v0, v3}, Landroidx/activity/c;-><init>(Landroidx/fragment/app/a0;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v0}, Landroidx/activity/h;->addOnContextAvailableListener(Lc/b;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 250
    .line 251
    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    .line 252
    .line 253
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v0
.end method

.method public static a(Landroidx/activity/h;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/activity/h;->getSavedStateRegistry()Lb1/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android:support:activity-result"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lb1/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/activity/h;->mActivityResultRegistry:Landroidx/activity/result/g;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v1, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string v3, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iput-object v3, p0, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    .line 42
    .line 43
    const-string v3, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/util/Random;

    .line 50
    .line 51
    iput-object v3, p0, Landroidx/activity/result/g;->a:Ljava/util/Random;

    .line 52
    .line 53
    const-string v3, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v3, p0, Landroidx/activity/result/g;->h:Landroid/os/Bundle;

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-ge v0, v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v5, p0, Landroidx/activity/result/g;->c:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    iget-object v7, p0, Landroidx/activity/result/g;->b:Ljava/util/HashMap;

    .line 84
    .line 85
    if-eqz v6, :cond_1

    .line 86
    .line 87
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_1

    .line 98
    .line 99
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic access$001(Landroidx/activity/h;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public static b(Landroidx/activity/h;)Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/activity/h;->mActivityResultRegistry:Landroidx/activity/result/g;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/activity/result/g;->c:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    .line 26
    .line 27
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/activity/result/g;->e:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Landroidx/activity/result/g;->h:Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/os/Bundle;

    .line 63
    .line 64
    const-string v2, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT"

    .line 70
    .line 71
    iget-object p0, p0, Landroidx/activity/result/g;->a:Ljava/util/Random;

    .line 72
    .line 73
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/h;->c()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/u;)V
    .locals 2

    iget-object p1, p0, Landroidx/activity/h;->mMenuHostHelper:Landroidx/core/view/s;

    .line 1
    iget-object v0, p1, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/core/view/s;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/u;Landroidx/lifecycle/t;)V
    .locals 0

    .line 3
    iget-object p1, p0, Landroidx/activity/h;->mMenuHostHelper:Landroidx/core/view/s;

    invoke-virtual {p1, p2}, Landroidx/core/view/s;->a(Landroidx/lifecycle/t;)V

    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/u;Landroidx/lifecycle/t;Landroidx/lifecycle/n;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 4
    iget-object p1, p0, Landroidx/activity/h;->mMenuHostHelper:Landroidx/core/view/s;

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/s;->b(Landroidx/lifecycle/t;Landroidx/lifecycle/n;)V

    return-void
.end method

.method public final addOnConfigurationChangedListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnContextAvailableListener(Lc/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mContextAwareHelper:Lc/a;

    .line 2
    .line 3
    iget-object v1, v0, Lc/a;->b:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lc/a;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lc/b;->a(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, v0, Lc/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final addOnMultiWindowModeChangedListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnNewIntentListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnPictureInPictureModeChangedListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOnTrimMemoryListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0a06a6

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const v1, 0x7f0a06a9

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "<this>"

    .line 38
    .line 39
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const v2, 0x7f0a06a8

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const v1, 0x7f0a06a7

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public ensureViewModelStore()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/h;->mViewModelStore:Landroidx/lifecycle/x0;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/g;->b:Landroidx/lifecycle/x0;

    iput-object v0, p0, Landroidx/activity/h;->mViewModelStore:Landroidx/lifecycle/x0;

    :cond_0
    iget-object v0, p0, Landroidx/activity/h;->mViewModelStore:Landroidx/lifecycle/x0;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/x0;

    invoke-direct {v0}, Landroidx/lifecycle/x0;-><init>()V

    iput-object v0, p0, Landroidx/activity/h;->mViewModelStore:Landroidx/lifecycle/x0;

    :cond_1
    return-void
.end method

.method public final getActivityResultRegistry()Landroidx/activity/result/g;
    .locals 1

    iget-object v0, p0, Landroidx/activity/h;->mActivityResultRegistry:Landroidx/activity/result/g;

    return-object v0
.end method

.method public getDefaultViewModelCreationExtras()Lu0/b;
    .locals 4

    .line 1
    new-instance v0, Lu0/d;

    .line 2
    .line 3
    sget-object v1, Lu0/a;->b:Lu0/a;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lu0/d;-><init>(Lu0/b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v0, Lu0/b;->a:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    sget-object v1, Landroidx/lifecycle/t0;->a:Landroidx/lifecycle/t0;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    sget-object v1, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/t0;

    .line 26
    .line 27
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    sget-object v1, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/t0;

    .line 31
    .line 32
    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    sget-object v1, Landroidx/lifecycle/k;->c:Landroidx/lifecycle/t0;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0;
    .locals 3

    iget-object v0, p0, Landroidx/activity/h;->mDefaultFactory:Landroidx/lifecycle/v0;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/p0;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, p0, v2}, Landroidx/lifecycle/p0;-><init>(Landroid/app/Application;Lb1/f;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/activity/h;->mDefaultFactory:Landroidx/lifecycle/v0;

    :cond_1
    iget-object v0, p0, Landroidx/activity/h;->mDefaultFactory:Landroidx/lifecycle/v0;

    return-object v0
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/g;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/o;
    .locals 1

    iget-object v0, p0, Landroidx/activity/h;->mLifecycleRegistry:Landroidx/lifecycle/v;

    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/p;
    .locals 1

    iget-object v0, p0, Landroidx/activity/h;->mOnBackPressedDispatcher:Landroidx/activity/p;

    return-object v0
.end method

.method public final getSavedStateRegistry()Lb1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mSavedStateRegistryController:Lb1/e;

    .line 2
    .line 3
    iget-object v0, v0, Lb1/e;->b:Lb1/d;

    .line 4
    .line 5
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/x0;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/h;->ensureViewModelStore()V

    iget-object v0, p0, Landroidx/activity/h;->mViewModelStore:Landroidx/lifecycle/x0;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidateMenu()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/h;->mActivityResultRegistry:Landroidx/activity/result/g;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/h;->mOnBackPressedDispatcher:Landroidx/activity/p;

    invoke-virtual {v0}, Landroidx/activity/p;->b()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidx/activity/h;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg0/a;

    invoke-interface {v1, p1}, Lg0/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mSavedStateRegistryController:Lb1/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb1/e;->b(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/h;->mContextAwareHelper:Lc/a;

    .line 7
    .line 8
    iput-object p0, v0, Lc/a;->b:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, v0, Lc/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lc/b;

    .line 27
    .line 28
    invoke-interface {v1, p0}, Lc/b;->a(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Lv/n;->onCreate(Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Landroidx/lifecycle/i0;->c(Landroid/app/Activity;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lv1/f;->D()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/activity/h;->mOnBackPressedDispatcher:Landroidx/activity/p;

    .line 45
    .line 46
    invoke-static {p0}, Landroidx/activity/f;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p1, Landroidx/activity/p;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/activity/p;->c()V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget p1, p0, Landroidx/activity/h;->mContentLayoutId:I

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroidx/activity/h;->setContentView(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/activity/h;->mMenuHostHelper:Landroidx/core/view/s;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    throw p1

    .line 33
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p2, 0x0

    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/activity/h;->mMenuHostHelper:Landroidx/core/view/s;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return p2

    .line 27
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    throw p1

    .line 36
    :cond_2
    return p2
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/activity/h;->mDispatchingOnMultiWindowModeChanged:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/activity/h;->mDispatchingOnMultiWindowModeChanged:Z

    iget-object v0, p0, Landroidx/activity/h;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg0/a;

    new-instance v2, Lv/v;

    invoke-direct {v2, p1, p2}, Lv/v;-><init>(ZLandroid/content/res/Configuration;)V

    invoke-interface {v1, v2}, Lg0/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/activity/h;->mDispatchingOnMultiWindowModeChanged:Z

    throw p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroidx/activity/h;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg0/a;

    invoke-interface {v1, p1}, Lg0/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mMenuHostHelper:Landroidx/core/view/s;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    throw p1
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/activity/h;->mDispatchingOnPictureInPictureModeChanged:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroidx/activity/h;->mDispatchingOnPictureInPictureModeChanged:Z

    iget-object v0, p0, Landroidx/activity/h;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg0/a;

    new-instance v2, Lv/v;

    invoke-direct {v2, p1, p2}, Lv/v;-><init>(ZLandroid/content/res/Configuration;)V

    invoke-interface {v1, v2}, Lg0/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/activity/h;->mDispatchingOnPictureInPictureModeChanged:Z

    throw p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/activity/h;->mMenuHostHelper:Landroidx/core/view/s;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/core/view/s;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    throw p1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    iget-object v0, p0, Landroidx/activity/h;->mActivityResultRegistry:Landroidx/activity/result/g;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/activity/h;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/activity/h;->mViewModelStore:Landroidx/lifecycle/x0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/activity/g;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object v1, v2, Landroidx/activity/g;->b:Landroidx/lifecycle/x0;

    .line 18
    .line 19
    :cond_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v2, Landroidx/activity/g;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, v2, Landroidx/activity/g;->a:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v1, v2, Landroidx/activity/g;->b:Landroidx/lifecycle/x0;

    .line 33
    .line 34
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/activity/h;->getLifecycle()Landroidx/lifecycle/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/lifecycle/v;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroidx/lifecycle/v;

    .line 10
    .line 11
    sget-object v1, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 12
    .line 13
    const-string v2, "setCurrentState"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroidx/lifecycle/v;->d(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->f(Landroidx/lifecycle/n;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0, p1}, Lv/n;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/activity/h;->mSavedStateRegistryController:Lb1/e;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lb1/e;->c(Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-object v0, p0, Landroidx/activity/h;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg0/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lg0/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peekAvailableContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mContextAwareHelper:Lc/a;

    .line 2
    .line 3
    iget-object v0, v0, Lc/a;->b:Landroid/content/Context;

    .line 4
    .line 5
    return-object v0
.end method

.method public final registerForActivityResult(Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/a;",
            "Landroidx/activity/result/b;",
            ")",
            "Landroidx/activity/result/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mActivityResultRegistry:Landroidx/activity/result/g;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/activity/h;->registerForActivityResult(Ld/a;Landroidx/activity/result/g;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    return-object p1
.end method

.method public final registerForActivityResult(Ld/a;Landroidx/activity/result/g;Landroidx/activity/result/b;)Landroidx/activity/result/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/a;",
            "Landroidx/activity/result/g;",
            "Landroidx/activity/result/b;",
            ")",
            "Landroidx/activity/result/c;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "activity_rq#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/activity/h;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p0, p1, p3}, Landroidx/activity/result/g;->c(Ljava/lang/String;Landroidx/lifecycle/t;Ld/a;Landroidx/activity/result/b;)Landroidx/activity/result/d;

    move-result-object p1

    return-object p1
.end method

.method public removeMenuProvider(Landroidx/core/view/u;)V
    .locals 0

    iget-object p1, p0, Landroidx/activity/h;->mMenuHostHelper:Landroidx/core/view/s;

    invoke-virtual {p1}, Landroidx/core/view/s;->c()V

    return-void
.end method

.method public final removeOnConfigurationChangedListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnContextAvailableListener(Lc/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mContextAwareHelper:Lc/a;

    .line 2
    .line 3
    iget-object v0, v0, Lc/a;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final removeOnMultiWindowModeChangedListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnMultiWindowModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnNewIntentListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnNewIntentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnPictureInPictureModeChangedListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnPictureInPictureModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeOnTrimMemoryListener(Lg0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/h;->mOnTrimMemoryListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportFullyDrawn()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroidx/lifecycle/k;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "reportFullyDrawn() for ComponentActivity"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public setContentView(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/h;->c()V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Landroidx/activity/h;->c()V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroidx/activity/h;->c()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
