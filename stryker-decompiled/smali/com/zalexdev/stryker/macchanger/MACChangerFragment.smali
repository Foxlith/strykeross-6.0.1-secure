.class public Lcom/zalexdev/stryker/macchanger/MACChangerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final B:Ljava/util/HashMap;

.field public static final w:Ljava/util/regex/Pattern;

.field public static final x:[Ljava/lang/String;

.field public static final y:[Ljava/lang/String;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public a:Landroidx/fragment/app/a0;

.field public b:Landroid/content/Context;

.field public c:Ll4/l;

.field public d:Lcom/google/android/material/textview/MaterialTextView;

.field public e:Lcom/google/android/material/textview/MaterialTextView;

.field public f:Lcom/google/android/material/textview/MaterialTextView;

.field public g:Lcom/google/android/material/textview/MaterialTextView;

.field public h:Lcom/google/android/material/textview/MaterialTextView;

.field public i:Lcom/google/android/material/textview/MaterialTextView;

.field public j:Landroid/view/View;

.field public k:Lcom/google/android/material/button/MaterialButton;

.field public l:Lcom/google/android/material/button/MaterialButton;

.field public m:Lcom/google/android/material/textfield/TextInputLayout;

.field public n:Lcom/google/android/material/textfield/TextInputLayout;

.field public p:Landroid/widget/AutoCompleteTextView;

.field public q:Lcom/google/android/material/textfield/TextInputEditText;

.field public r:Lcom/google/android/material/button/MaterialButton;

.field public s:Lcom/google/android/material/button/MaterialButton;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public final v:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "([0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "3C:5A:B4"

    .line 10
    .line 11
    const-string v1, "F0:18:98"

    .line 12
    .line 13
    const-string v2, "A8:5C:2C"

    .line 14
    .line 15
    const-string v3, "B8:E8:56"

    .line 16
    .line 17
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->x:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "3C:97:0E"

    .line 24
    .line 25
    const-string v2, "DC:A6:32"

    .line 26
    .line 27
    const-string v3, "00:1B:21"

    .line 28
    .line 29
    const-string v4, "94:65:9C"

    .line 30
    .line 31
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sput-object v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->y:[Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "E8:50:8B"

    .line 38
    .line 39
    const-string v2, "2C:8A:72"

    .line 40
    .line 41
    const-string v3, "B0:72:BF"

    .line 42
    .line 43
    const-string v4, "D0:17:6A"

    .line 44
    .line 45
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sput-object v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->z:[Ljava/lang/String;

    .line 50
    .line 51
    const-string v1, "00:9A:CD"

    .line 52
    .line 53
    const-string v2, "5C:7D:5E"

    .line 54
    .line 55
    const-string v3, "F4:DB:E6"

    .line 56
    .line 57
    const-string v4, "B8:C1:A2"

    .line 58
    .line 59
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sput-object v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->A:[Ljava/lang/String;

    .line 64
    .line 65
    new-instance v1, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    move v3, v2

    .line 72
    :goto_0
    const-string v4, ""

    .line 73
    .line 74
    const-string v5, ":"

    .line 75
    .line 76
    const/4 v6, 0x4

    .line 77
    if-ge v3, v6, :cond_0

    .line 78
    .line 79
    aget-object v6, v0, v3

    .line 80
    .line 81
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const-string v5, "Apple"

    .line 90
    .line 91
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->y:[Ljava/lang/String;

    .line 98
    .line 99
    array-length v3, v0

    .line 100
    move v6, v2

    .line 101
    :goto_1
    if-ge v6, v3, :cond_1

    .line 102
    .line 103
    aget-object v7, v0, v6

    .line 104
    .line 105
    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const-string v8, "Intel"

    .line 114
    .line 115
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_1
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->z:[Ljava/lang/String;

    .line 122
    .line 123
    array-length v3, v0

    .line 124
    move v6, v2

    .line 125
    :goto_2
    if-ge v6, v3, :cond_2

    .line 126
    .line 127
    aget-object v7, v0, v6

    .line 128
    .line 129
    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    const-string v8, "Samsung"

    .line 138
    .line 139
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    add-int/lit8 v6, v6, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->A:[Ljava/lang/String;

    .line 146
    .line 147
    array-length v3, v0

    .line 148
    :goto_3
    if-ge v2, v3, :cond_3

    .line 149
    .line 150
    aget-object v6, v0, v2

    .line 151
    .line 152
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    const-string v7, "Huawei"

    .line 161
    .line 162
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_3
    const-string v0, "001A11"

    .line 169
    .line 170
    const-string v2, "Google"

    .line 171
    .line 172
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const-string v0, "FCFBFB"

    .line 176
    .line 177
    const-string v2, "Cisco"

    .line 178
    .line 179
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    const-string v0, "0050BA"

    .line 183
    .line 184
    const-string v2, "D-Link"

    .line 185
    .line 186
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    const-string v0, "F4F26D"

    .line 190
    .line 191
    const-string v2, "TP-Link"

    .line 192
    .line 193
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    const-string v0, "E840F2"

    .line 197
    .line 198
    const-string v2, "Realtek"

    .line 199
    .line 200
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const-string v0, "A402B9"

    .line 204
    .line 205
    const-string v2, "Xiaomi"

    .line 206
    .line 207
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    const-string v0, "4CFCAA"

    .line 211
    .line 212
    const-string v2, "ASUSTek"

    .line 213
    .line 214
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    const-string v0, "00154D"

    .line 218
    .line 219
    const-string v2, "Nokia"

    .line 220
    .line 221
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    const-string v0, "00904C"

    .line 225
    .line 226
    const-string v2, "Espressif"

    .line 227
    .line 228
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    const-string v0, "2C81E1"

    .line 232
    .line 233
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    sput-object v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->B:Ljava/util/HashMap;

    .line 237
    .line 238
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->u:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    aget-byte v2, v1, v0

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xfc

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    or-int/2addr v2, v3

    .line 19
    int-to-byte v2, v2

    .line 20
    aput-byte v2, v1, v0

    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v0, 0x1

    .line 27
    aget-byte v0, v1, v0

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    aget-byte v0, v1, v3

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const/4 v0, 0x3

    .line 40
    aget-byte v0, v1, v0

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const/4 v0, 0x4

    .line 47
    aget-byte v0, v1, v0

    .line 48
    .line 49
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    const/4 v0, 0x5

    .line 54
    aget-byte v0, v1, v0

    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "%02x:%02x:%02x:%02x:%02x:%02x"

    .line 65
    .line 66
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->u:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 19
    .line 20
    const-string v1, "macchanger_pending"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p2}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 26
    .line 27
    const-string v1, "macchanger_busy"

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v0, v1, v2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f130394

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0, v2}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->k(IZ)V

    .line 37
    .line 38
    .line 39
    const-string v0, "(s|)wlan0"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v1, 0x1e

    .line 50
    .line 51
    if-eq v0, v1, :cond_1

    .line 52
    .line 53
    new-instance v2, Lv3/e;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    .line 56
    .line 57
    iget-object v5, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->b:Landroid/content/Context;

    .line 58
    .line 59
    const-string v0, "/data/data/com.zalexdev.stryker/files/changemac "

    .line 60
    .line 61
    const-string v1, " "

    .line 62
    .line 63
    invoke-static {v0, p1, v1, p2}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v9, 0x0

    .line 69
    move-object v3, p0

    .line 70
    move-object v8, p1

    .line 71
    invoke-direct/range {v2 .. v9}, Lv3/e;-><init>(Ljava/lang/Object;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    .line 76
    .line 77
    new-instance v1, Lv3/c;

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct {v1, p0, p1, p2, v2}, Lv3/c;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void

    .line 90
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 91
    .line 92
    const p2, 0x7f130391

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final e(Lcom/google/android/material/chip/Chip;[Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/material/snackbar/a;

    const/16 v1, 0x16

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u2014"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->b:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "mac"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    const v1, 0x7f130389

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    const-string v1, "macchanger_busy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ll4/l;->b0(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const v0, 0x7f130393

    goto :goto_0

    :cond_0
    const v0, 0x7f130395

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->k(IZ)V

    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p1, :cond_1

    const v1, -0xd182ce

    goto :goto_1

    :cond_1
    const v1, -0x39d7d8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    iget-object v1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    if-eqz p1, :cond_2

    const p1, 0x7f13039b

    goto :goto_2

    :cond_2
    const p1, 0x7f13038c

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->j()V

    return-void
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ip addr show "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " | sed -n \"s/.*link\\/ether \\(\\([0-9A-f]\\{2\\}:\\)\\{5\\}[0-9A-f]\\{2\\}\\).*/\\1/p\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ll4/l;->p(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->p:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lv3/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lv3/d;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final k(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    if-eqz p2, :cond_0

    const v0, -0x109400

    goto :goto_0

    :cond_0
    const v0, -0x8a8a8b

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->m:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->n:Lcom/google/android/material/textfield/TextInputLayout;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->r:Lcom/google/android/material/button/MaterialButton;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->s:Lcom/google/android/material/button/MaterialButton;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->t:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->a:Landroidx/fragment/app/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->b:Landroid/content/Context;

    new-instance v0, Ll4/l;

    invoke-direct {v0, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a0390

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 17
    .line 18
    const p2, 0x7f0a0391

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->e:Lcom/google/android/material/textview/MaterialTextView;

    .line 28
    .line 29
    const p2, 0x7f0a0396

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->f:Lcom/google/android/material/textview/MaterialTextView;

    .line 39
    .line 40
    const p2, 0x7f0a038e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 50
    .line 51
    const p2, 0x7f0a038f

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->h:Lcom/google/android/material/textview/MaterialTextView;

    .line 61
    .line 62
    const p2, 0x7f0a0394

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Lcom/google/android/material/textview/MaterialTextView;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 72
    .line 73
    const p2, 0x7f0a0393

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->j:Landroid/view/View;

    .line 81
    .line 82
    const p2, 0x7f0a038d

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 90
    .line 91
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->k:Lcom/google/android/material/button/MaterialButton;

    .line 92
    .line 93
    const p2, 0x7f0a0392

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 101
    .line 102
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l:Lcom/google/android/material/button/MaterialButton;

    .line 103
    .line 104
    const p2, 0x7f0a02ce

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 112
    .line 113
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->m:Lcom/google/android/material/textfield/TextInputLayout;

    .line 114
    .line 115
    const p2, 0x7f0a0399

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Lcom/google/android/material/textfield/TextInputLayout;

    .line 123
    .line 124
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 125
    .line 126
    const p2, 0x7f0a02cd

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Landroid/widget/AutoCompleteTextView;

    .line 134
    .line 135
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->p:Landroid/widget/AutoCompleteTextView;

    .line 136
    .line 137
    const p2, 0x7f0a0398

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 145
    .line 146
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    .line 147
    .line 148
    const p2, 0x7f0a010a

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 156
    .line 157
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->r:Lcom/google/android/material/button/MaterialButton;

    .line 158
    .line 159
    const p2, 0x7f0a04b9

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 167
    .line 168
    iput-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->s:Lcom/google/android/material/button/MaterialButton;

    .line 169
    .line 170
    const p2, 0x7f0a038c

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    check-cast p2, Lcom/google/android/material/card/MaterialCardView;

    .line 178
    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 180
    .line 181
    const/16 v2, 0x1f

    .line 182
    .line 183
    const/4 v3, 0x0

    .line 184
    if-lt v1, v2, :cond_0

    .line 185
    .line 186
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    :cond_0
    iget-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->p:Landroid/widget/AutoCompleteTextView;

    .line 190
    .line 191
    new-instance v1, Lh2/a;

    .line 192
    .line 193
    invoke-direct {v1, p0, v0}, Lh2/a;-><init>(Ljava/lang/Object;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->m:Lcom/google/android/material/textfield/TextInputLayout;

    .line 200
    .line 201
    new-instance v1, Lv3/a;

    .line 202
    .line 203
    invoke-direct {v1, p0, v3}, Lv3/a;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    iget-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->n:Lcom/google/android/material/textfield/TextInputLayout;

    .line 210
    .line 211
    new-instance v1, Lv3/a;

    .line 212
    .line 213
    invoke-direct {v1, p0, v0}, Lv3/a;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    iget-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->k:Lcom/google/android/material/button/MaterialButton;

    .line 220
    .line 221
    new-instance v1, Lv3/a;

    .line 222
    .line 223
    const/4 v2, 0x2

    .line 224
    invoke-direct {v1, p0, v2}, Lv3/a;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    iget-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l:Lcom/google/android/material/button/MaterialButton;

    .line 231
    .line 232
    new-instance v1, Lv3/a;

    .line 233
    .line 234
    const/4 v2, 0x3

    .line 235
    invoke-direct {v1, p0, v2}, Lv3/a;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    const p2, 0x7f0a011c

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 249
    .line 250
    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0, p2, v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->e(Lcom/google/android/material/chip/Chip;[Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const p2, 0x7f0a0115

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 262
    .line 263
    sget-object v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->x:[Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {p0, p2, v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->e(Lcom/google/android/material/chip/Chip;[Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const p2, 0x7f0a011a

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 276
    .line 277
    sget-object v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->y:[Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {p0, p2, v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->e(Lcom/google/android/material/chip/Chip;[Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const p2, 0x7f0a011d

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    check-cast p2, Lcom/google/android/material/chip/Chip;

    .line 290
    .line 291
    sget-object v1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->z:[Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {p0, p2, v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->e(Lcom/google/android/material/chip/Chip;[Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    const p2, 0x7f0a0118

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/google/android/material/chip/Chip;

    .line 304
    .line 305
    sget-object p2, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->A:[Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->e(Lcom/google/android/material/chip/Chip;[Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    .line 311
    .line 312
    new-instance p2, Ls2/k;

    .line 313
    .line 314
    invoke-direct {p2, p0}, Ls2/k;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 318
    .line 319
    .line 320
    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->r:Lcom/google/android/material/button/MaterialButton;

    .line 321
    .line 322
    new-instance p2, Lv3/a;

    .line 323
    .line 324
    const/4 v1, 0x4

    .line 325
    invoke-direct {p2, p0, v1}, Lv3/a;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->s:Lcom/google/android/material/button/MaterialButton;

    .line 332
    .line 333
    new-instance p2, Lv3/a;

    .line 334
    .line 335
    const/4 v1, 0x5

    .line 336
    invoke-direct {p2, p0, v1}, Lv3/a;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 343
    .line 344
    const-string p2, "macchanger_mac_input"

    .line 345
    .line 346
    invoke-virtual {p1, p2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    if-eqz p1, :cond_1

    .line 351
    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    if-nez p2, :cond_1

    .line 357
    .line 358
    iget-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    .line 359
    .line 360
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .line 362
    .line 363
    iget-object p2, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    .line 364
    .line 365
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 366
    .line 367
    .line 368
    move-result p1

    .line 369
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 370
    .line 371
    .line 372
    :cond_1
    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 373
    .line 374
    const-string p2, "macchanger_pending"

    .line 375
    .line 376
    invoke-virtual {p1, p2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    iput-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->u:Ljava/lang/String;

    .line 381
    .line 382
    if-nez p1, :cond_2

    .line 383
    .line 384
    const-string p1, ""

    .line 385
    .line 386
    iput-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->u:Ljava/lang/String;

    .line 387
    .line 388
    :cond_2
    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 389
    .line 390
    const-string p2, "macchanger_busy"

    .line 391
    .line 392
    invoke-virtual {p1, p2}, Ll4/l;->x(Ljava/lang/String;)Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-eqz p1, :cond_3

    .line 397
    .line 398
    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 399
    .line 400
    invoke-virtual {p1, p2, v3}, Ll4/l;->b0(Ljava/lang/String;Z)V

    .line 401
    .line 402
    .line 403
    :cond_3
    new-instance p1, Ljava/lang/Thread;

    .line 404
    .line 405
    new-instance p2, Lv3/b;

    .line 406
    .line 407
    invoke-direct {p2, p0, v3}, Lv3/b;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 408
    .line 409
    .line 410
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 414
    .line 415
    .line 416
    iget-object p1, p0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->c:Ll4/l;

    .line 417
    .line 418
    new-instance p2, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-static {}, Li5/a;->J()Ljava/util/ArrayList;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    const-string v2, "; "

    .line 428
    .line 429
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    const-string v1, "macchanger"

    .line 440
    .line 441
    invoke-static {v1}, Li5/a;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    .line 454
    .line 455
    new-instance v1, Ljava/lang/Thread;

    .line 456
    .line 457
    new-instance v2, Ll4/k;

    .line 458
    .line 459
    invoke-direct {v2, p1, p2, v0}, Ll4/k;-><init>(Ll4/l;Ljava/lang/String;I)V

    .line 460
    .line 461
    .line 462
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 466
    .line 467
    .line 468
    return-void
.end method
