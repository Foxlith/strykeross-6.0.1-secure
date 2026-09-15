.class Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;


# direct methods
.method private constructor <init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->actions:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;-><init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)V

    return-void
.end method

.method public static synthetic a(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->lambda$replaceAll$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->lambda$remove$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->lambda$add$0(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V

    return-void
.end method

.method public static synthetic d(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->lambda$remove$2(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V

    return-void
.end method

.method public static synthetic e(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->lambda$add$1(Ljava/util/List;)V

    return-void
.end method

.method private lambda$add$0(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->g()V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 11
    .line 12
    iget v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/recyclerview/widget/v1;->c(Ljava/lang/Object;[Ljava/lang/Object;II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, -0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    move v1, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 26
    .line 27
    if-ge v1, v2, :cond_2

    .line 28
    .line 29
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 30
    .line 31
    aget-object v2, v2, v1

    .line 32
    .line 33
    iget-object v5, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 34
    .line 35
    invoke-virtual {v5, v2, p1}, Landroidx/recyclerview/widget/u1;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    iget-object v4, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 42
    .line 43
    invoke-virtual {v4, v2, p1}, Landroidx/recyclerview/widget/u1;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    iget-object v0, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 50
    .line 51
    aput-object p1, v0, v1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    iget-object v4, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, v4, v1

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 59
    .line 60
    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/u1;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, v1, v3, p1}, Landroidx/recyclerview/widget/u1;->onChanged(IILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    :goto_0
    iget v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 69
    .line 70
    if-gt v1, v2, :cond_4

    .line 71
    .line 72
    iget-object v5, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 73
    .line 74
    array-length v6, v5

    .line 75
    if-ne v2, v6, :cond_3

    .line 76
    .line 77
    array-length v2, v5

    .line 78
    add-int/lit8 v2, v2, 0xa

    .line 79
    .line 80
    iget-object v5, v0, Landroidx/recyclerview/widget/v1;->i:Ljava/lang/Class;

    .line 81
    .line 82
    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, [Ljava/lang/Object;

    .line 87
    .line 88
    iget-object v5, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    aput-object p1, v2, v1

    .line 94
    .line 95
    iget-object p1, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 96
    .line 97
    add-int/lit8 v4, v1, 0x1

    .line 98
    .line 99
    iget v5, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 100
    .line 101
    sub-int/2addr v5, v1

    .line 102
    invoke-static {p1, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    iput-object v2, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .line 109
    .line 110
    sub-int/2addr v2, v1

    .line 111
    invoke-static {v5, v1, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 115
    .line 116
    aput-object p1, v2, v1

    .line 117
    .line 118
    :goto_1
    iget p1, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 119
    .line 120
    add-int/2addr p1, v3

    .line 121
    iput p1, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 122
    .line 123
    iget-object p1, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 124
    .line 125
    invoke-interface {p1, v1, v3}, Landroidx/recyclerview/widget/c0;->onInserted(II)V

    .line 126
    .line 127
    .line 128
    :goto_2
    return-void

    .line 129
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 130
    .line 131
    const-string v2, "cannot add item to "

    .line 132
    .line 133
    const-string v3, " because size is "

    .line 134
    .line 135
    invoke-static {v2, v1, v3}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iget v0, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1
.end method

.method private lambda$add$1(Ljava/util/List;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->i:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->g()V

    .line 32
    .line 33
    .line 34
    array-length v1, p1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    array-length v1, p1

    .line 40
    const/4 v3, 0x1

    .line 41
    if-ge v1, v3, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/v1;->f([Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget v4, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    iput-object p1, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 54
    .line 55
    iput v1, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 56
    .line 57
    iget-object p1, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 58
    .line 59
    invoke-interface {p1, v5, v1}, Landroidx/recyclerview/widget/c0;->onInserted(II)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    iget-object v4, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 64
    .line 65
    instance-of v4, v4, Landroidx/recyclerview/widget/t1;

    .line 66
    .line 67
    xor-int/2addr v4, v3

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->a()V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v6, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 74
    .line 75
    iput-object v6, v0, Landroidx/recyclerview/widget/v1;->b:[Ljava/lang/Object;

    .line 76
    .line 77
    iput v5, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 78
    .line 79
    iget v6, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 80
    .line 81
    iput v6, v0, Landroidx/recyclerview/widget/v1;->d:I

    .line 82
    .line 83
    add-int/2addr v6, v1

    .line 84
    add-int/lit8 v6, v6, 0xa

    .line 85
    .line 86
    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, [Ljava/lang/Object;

    .line 91
    .line 92
    iput-object v2, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 93
    .line 94
    iput v5, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 95
    .line 96
    :cond_4
    :goto_0
    iget v2, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 97
    .line 98
    iget v6, v0, Landroidx/recyclerview/widget/v1;->d:I

    .line 99
    .line 100
    if-lt v2, v6, :cond_5

    .line 101
    .line 102
    if-ge v5, v1, :cond_7

    .line 103
    .line 104
    :cond_5
    if-ne v2, v6, :cond_6

    .line 105
    .line 106
    sub-int/2addr v1, v5

    .line 107
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 108
    .line 109
    iget v3, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 110
    .line 111
    invoke-static {p1, v5, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    iget p1, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 115
    .line 116
    add-int/2addr p1, v1

    .line 117
    iput p1, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 118
    .line 119
    iget v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 120
    .line 121
    add-int/2addr v2, v1

    .line 122
    iput v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 123
    .line 124
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 125
    .line 126
    sub-int/2addr p1, v1

    .line 127
    invoke-interface {v2, p1, v1}, Landroidx/recyclerview/widget/c0;->onInserted(II)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    if-ne v5, v1, :cond_9

    .line 132
    .line 133
    sub-int/2addr v6, v2

    .line 134
    iget-object p1, v0, Landroidx/recyclerview/widget/v1;->b:[Ljava/lang/Object;

    .line 135
    .line 136
    iget-object v1, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 137
    .line 138
    iget v3, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 139
    .line 140
    invoke-static {p1, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    .line 142
    .line 143
    iget p1, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 144
    .line 145
    add-int/2addr p1, v6

    .line 146
    iput p1, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 147
    .line 148
    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 149
    iput-object p1, v0, Landroidx/recyclerview/widget/v1;->b:[Ljava/lang/Object;

    .line 150
    .line 151
    if-eqz v4, :cond_8

    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->b()V

    .line 154
    .line 155
    .line 156
    :cond_8
    :goto_2
    return-void

    .line 157
    :cond_9
    iget-object v6, v0, Landroidx/recyclerview/widget/v1;->b:[Ljava/lang/Object;

    .line 158
    .line 159
    aget-object v2, v6, v2

    .line 160
    .line 161
    aget-object v6, p1, v5

    .line 162
    .line 163
    iget-object v7, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 164
    .line 165
    invoke-virtual {v7, v2, v6}, Landroidx/recyclerview/widget/u1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-lez v7, :cond_a

    .line 170
    .line 171
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 172
    .line 173
    iget v7, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 174
    .line 175
    add-int/lit8 v8, v7, 0x1

    .line 176
    .line 177
    iput v8, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 178
    .line 179
    aput-object v6, v2, v7

    .line 180
    .line 181
    iget v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 182
    .line 183
    add-int/2addr v2, v3

    .line 184
    iput v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 185
    .line 186
    add-int/lit8 v5, v5, 0x1

    .line 187
    .line 188
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 189
    .line 190
    invoke-interface {v2, v7, v3}, Landroidx/recyclerview/widget/c0;->onInserted(II)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_a
    if-nez v7, :cond_b

    .line 195
    .line 196
    iget-object v7, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 197
    .line 198
    invoke-virtual {v7, v2, v6}, Landroidx/recyclerview/widget/u1;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-eqz v7, :cond_b

    .line 203
    .line 204
    iget-object v7, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 205
    .line 206
    iget v8, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 207
    .line 208
    add-int/lit8 v9, v8, 0x1

    .line 209
    .line 210
    iput v9, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 211
    .line 212
    aput-object v6, v7, v8

    .line 213
    .line 214
    add-int/lit8 v5, v5, 0x1

    .line 215
    .line 216
    iget v7, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 217
    .line 218
    add-int/2addr v7, v3

    .line 219
    iput v7, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 220
    .line 221
    iget-object v7, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 222
    .line 223
    invoke-virtual {v7, v2, v6}, Landroidx/recyclerview/widget/u1;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-nez v7, :cond_4

    .line 228
    .line 229
    iget-object v7, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 230
    .line 231
    iget v8, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 232
    .line 233
    sub-int/2addr v8, v3

    .line 234
    invoke-virtual {v7, v2, v6}, Landroidx/recyclerview/widget/u1;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v7, v8, v3, v2}, Landroidx/recyclerview/widget/u1;->onChanged(IILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_b
    iget-object v6, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 244
    .line 245
    iget v7, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 246
    .line 247
    add-int/lit8 v8, v7, 0x1

    .line 248
    .line 249
    iput v8, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 250
    .line 251
    aput-object v2, v6, v7

    .line 252
    .line 253
    iget v2, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 254
    .line 255
    add-int/2addr v2, v3

    .line 256
    iput v2, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 257
    .line 258
    goto/16 :goto_0
.end method

.method private synthetic lambda$remove$2(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)V
    .locals 1

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-static {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/v1;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$remove$3(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;

    iget-object v1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-static {v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/v1;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private lambda$replaceAll$4(Ljava/util/List;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->i:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->g()V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 35
    .line 36
    instance-of v1, v1, Landroidx/recyclerview/widget/t1;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    xor-int/2addr v1, v3

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->a()V

    .line 43
    .line 44
    .line 45
    :cond_0
    const/4 v4, 0x0

    .line 46
    iput v4, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 47
    .line 48
    iget v5, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 49
    .line 50
    iput v5, v0, Landroidx/recyclerview/widget/v1;->d:I

    .line 51
    .line 52
    iget-object v5, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 53
    .line 54
    iput-object v5, v0, Landroidx/recyclerview/widget/v1;->b:[Ljava/lang/Object;

    .line 55
    .line 56
    iput v4, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/v1;->f([Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, [Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v2, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 69
    .line 70
    :cond_1
    :goto_0
    iget v2, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 71
    .line 72
    if-lt v2, v4, :cond_2

    .line 73
    .line 74
    iget v5, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 75
    .line 76
    iget v6, v0, Landroidx/recyclerview/widget/v1;->d:I

    .line 77
    .line 78
    if-ge v5, v6, :cond_4

    .line 79
    .line 80
    :cond_2
    iget v5, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 81
    .line 82
    iget v6, v0, Landroidx/recyclerview/widget/v1;->d:I

    .line 83
    .line 84
    if-lt v5, v6, :cond_3

    .line 85
    .line 86
    sub-int/2addr v4, v2

    .line 87
    iget-object v3, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    iget p1, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 93
    .line 94
    add-int/2addr p1, v4

    .line 95
    iput p1, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 96
    .line 97
    iget p1, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 98
    .line 99
    add-int/2addr p1, v4

    .line 100
    iput p1, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 101
    .line 102
    iget-object p1, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 103
    .line 104
    invoke-interface {p1, v2, v4}, Landroidx/recyclerview/widget/c0;->onInserted(II)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    if-lt v2, v4, :cond_6

    .line 109
    .line 110
    sub-int/2addr v6, v5

    .line 111
    iget p1, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 112
    .line 113
    sub-int/2addr p1, v6

    .line 114
    iput p1, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 115
    .line 116
    iget-object p1, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 117
    .line 118
    invoke-interface {p1, v2, v6}, Landroidx/recyclerview/widget/c0;->onRemoved(II)V

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 122
    iput-object p1, v0, Landroidx/recyclerview/widget/v1;->b:[Ljava/lang/Object;

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->b()V

    .line 127
    .line 128
    .line 129
    :cond_5
    return-void

    .line 130
    :cond_6
    iget-object v6, v0, Landroidx/recyclerview/widget/v1;->b:[Ljava/lang/Object;

    .line 131
    .line 132
    aget-object v5, v6, v5

    .line 133
    .line 134
    aget-object v2, p1, v2

    .line 135
    .line 136
    iget-object v6, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 137
    .line 138
    invoke-virtual {v6, v5, v2}, Landroidx/recyclerview/widget/u1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-gez v6, :cond_7

    .line 143
    .line 144
    iget v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 145
    .line 146
    sub-int/2addr v2, v3

    .line 147
    iput v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 148
    .line 149
    iget v2, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 150
    .line 151
    add-int/2addr v2, v3

    .line 152
    iput v2, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 153
    .line 154
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 155
    .line 156
    iget v5, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 157
    .line 158
    invoke-interface {v2, v5, v3}, Landroidx/recyclerview/widget/c0;->onRemoved(II)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_7
    if-lez v6, :cond_8

    .line 163
    .line 164
    iget-object v5, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 165
    .line 166
    iget v6, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 167
    .line 168
    aput-object v2, v5, v6

    .line 169
    .line 170
    :goto_2
    add-int/lit8 v2, v6, 0x1

    .line 171
    .line 172
    iput v2, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 173
    .line 174
    iget v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 175
    .line 176
    add-int/2addr v2, v3

    .line 177
    iput v2, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 178
    .line 179
    iget-object v2, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 180
    .line 181
    invoke-interface {v2, v6, v3}, Landroidx/recyclerview/widget/c0;->onInserted(II)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_8
    iget-object v6, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 186
    .line 187
    invoke-virtual {v6, v5, v2}, Landroidx/recyclerview/widget/u1;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v6, :cond_9

    .line 192
    .line 193
    iget v5, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 194
    .line 195
    sub-int/2addr v5, v3

    .line 196
    iput v5, v0, Landroidx/recyclerview/widget/v1;->h:I

    .line 197
    .line 198
    iget v5, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 199
    .line 200
    add-int/2addr v5, v3

    .line 201
    iput v5, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 202
    .line 203
    iget-object v5, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 204
    .line 205
    iget v6, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 206
    .line 207
    invoke-interface {v5, v6, v3}, Landroidx/recyclerview/widget/c0;->onRemoved(II)V

    .line 208
    .line 209
    .line 210
    iget-object v5, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 211
    .line 212
    iget v6, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 213
    .line 214
    aput-object v2, v5, v6

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_9
    iget-object v6, v0, Landroidx/recyclerview/widget/v1;->a:[Ljava/lang/Object;

    .line 218
    .line 219
    iget v7, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 220
    .line 221
    aput-object v2, v6, v7

    .line 222
    .line 223
    iget v6, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 224
    .line 225
    add-int/2addr v6, v3

    .line 226
    iput v6, v0, Landroidx/recyclerview/widget/v1;->c:I

    .line 227
    .line 228
    add-int/2addr v7, v3

    .line 229
    iput v7, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 230
    .line 231
    iget-object v6, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 232
    .line 233
    invoke-virtual {v6, v5, v2}, Landroidx/recyclerview/widget/u1;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-nez v6, :cond_1

    .line 238
    .line 239
    iget-object v6, v0, Landroidx/recyclerview/widget/v1;->f:Landroidx/recyclerview/widget/u1;

    .line 240
    .line 241
    iget v7, v0, Landroidx/recyclerview/widget/v1;->e:I

    .line 242
    .line 243
    sub-int/2addr v7, v3

    .line 244
    invoke-virtual {v6, v5, v2}, Landroidx/recyclerview/widget/u1;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v6, v7, v3, v2}, Landroidx/recyclerview/widget/u1;->onChanged(IILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_0
.end method


# virtual methods
.method public add(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->actions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/sortedlistadapter/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/github/wrdlbrnft/sortedlistadapter/b;-><init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Ljava/util/List;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->actions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/sortedlistadapter/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/github/wrdlbrnft/sortedlistadapter/c;-><init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public commit()V
    .locals 2

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-static {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$200(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;

    invoke-interface {v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;->onEditStarted()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-static {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-static {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/v1;->b()V

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-static {v0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$200(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;

    invoke-interface {v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Callback;->onEditFinished()V

    goto :goto_2

    :cond_2
    return-void

    :goto_3
    iget-object v1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-static {v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/v1;->b()V

    throw v0
.end method

.method public remove(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->actions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/sortedlistadapter/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/github/wrdlbrnft/sortedlistadapter/b;-><init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewModel;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public remove(Ljava/util/List;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->actions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/sortedlistadapter/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/github/wrdlbrnft/sortedlistadapter/c;-><init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public removeAll()Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->actions:Ljava/util/List;

    iget-object v1, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->this$0:Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;

    invoke-static {v1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->access$100(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;)Landroidx/recyclerview/widget/v1;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/activity/b;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public replaceAll(Ljava/util/List;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;->actions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/sortedlistadapter/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/github/wrdlbrnft/sortedlistadapter/c;-><init>(Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$EditorImpl;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
