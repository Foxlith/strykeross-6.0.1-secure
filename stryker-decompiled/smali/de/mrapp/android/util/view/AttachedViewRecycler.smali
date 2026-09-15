.class public Lde/mrapp/android/util/view/AttachedViewRecycler;
.super Lde/mrapp/android/util/view/AbstractViewRecycler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ItemType:",
        "Ljava/lang/Object;",
        "ParamType:",
        "Ljava/lang/Object;",
        ">",
        "Lde/mrapp/android/util/view/AbstractViewRecycler<",
        "TItemType;TParamType;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TItemType;>;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItemType;>;"
        }
    .end annotation
.end field

.field private final parent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lde/mrapp/android/util/view/AttachedViewRecycler;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lde/mrapp/android/util/view/AttachedViewRecycler;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/Comparator<",
            "TItemType;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2}, Lde/mrapp/android/util/view/AbstractViewRecycler;-><init>(Landroid/view/LayoutInflater;)V

    const-string p2, "The parent may not be null"

    invoke-static {p1, p2}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->comparator:Ljava/util/Comparator;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Comparator<",
            "TItemType;>;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lde/mrapp/android/util/view/AttachedViewRecycler;-><init>(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final varargs inflate(Ljava/lang/Object;Z[Ljava/lang/Object;)Lg0/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;Z[TParamType;)",
            "Lg0/c;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    const-string v0, "The array may not be null"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "No adapter has been set"

    .line 11
    .line 12
    const-class v2, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getView(Ljava/lang/Object;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewType(Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lde/mrapp/android/util/view/AbstractViewRecycler;->pollUnusedView(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    const-string p2, " using view type "

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v5, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    .line 51
    .line 52
    move-object v6, p1

    .line 53
    move v7, v2

    .line 54
    move-object v8, p3

    .line 55
    invoke-virtual/range {v3 .. v8}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/Object;I[Ljava/lang/Object;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v5, "Inflated view to visualize item "

    .line 70
    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {v1, v3, p2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v6, "Reusing view to visualize item "

    .line 103
    .line 104
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {v3, v4, p2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getActiveViews()Ljava/util/Map;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->comparator:Ljava/util/Comparator;

    .line 131
    .line 132
    if-eqz p2, :cond_2

    .line 133
    .line 134
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    .line 135
    .line 136
    invoke-static {v2, p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-gez p2, :cond_3

    .line 141
    .line 142
    not-int p2, p2

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    iget-object p2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    :cond_3
    :goto_1
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v2, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    .line 156
    .line 157
    invoke-virtual {v2, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v5, "Added view of item "

    .line 171
    .line 172
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v5, " at index "

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {v2, v3, p2}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getContext()Landroid/content/Context;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    move-object v6, v0

    .line 202
    move-object v7, p1

    .line 203
    move v8, v1

    .line 204
    move-object v9, p3

    .line 205
    invoke-virtual/range {v4 .. v9}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onShowView(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;Z[Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v3, "Updated view of item "

    .line 219
    .line 220
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p2, p3, p1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    new-instance p2, Lg0/c;

    .line 238
    .line 239
    invoke-direct {p2, v0, p1}, Lg0/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    return-object p2
.end method

.method public final remove(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItemType;)V"
        }
    .end annotation

    const-string v0, "The item may not be null"

    invoke-static {p1, v0}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v0

    const-string v1, "No adapter has been set"

    const-class v2, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1, v2}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getActiveViews()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onRemoveView(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v2, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewType(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->addUnusedView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removed view of item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Did not remove view of item "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". View is not inflated"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lde/mrapp/android/util/logging/Logger;->logDebug(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final removeAll()V
    .locals 4

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v0

    const-string v1, "No adapter has been set"

    const-class v2, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1, v2}, Lde/mrapp/android/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getActiveViews()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->onRemoveView(Landroid/view/View;Ljava/lang/Object;)V

    iget-object v3, p0, Lde/mrapp/android/util/view/AttachedViewRecycler;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getAdapter()Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler$Adapter;->getViewType(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lde/mrapp/android/util/view/AbstractViewRecycler;->addUnusedView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/mrapp/android/util/view/AbstractViewRecycler;->getLogger()Lde/mrapp/android/util/logging/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Removed all views"

    invoke-virtual {v0, v1, v2}, Lde/mrapp/android/util/logging/Logger;->logInfo(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
