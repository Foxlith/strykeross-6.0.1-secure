.class public final synthetic Lo2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/appintro/slides/Slide3;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/appintro/slides/Slide3;IJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/e;->a:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    iput p2, p0, Lo2/e;->b:I

    iput-wide p3, p0, Lo2/e;->c:J

    iput-wide p5, p0, Lo2/e;->d:J

    iput-wide p7, p0, Lo2/e;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lo2/e;->a:Lcom/zalexdev/stryker/appintro/slides/Slide3;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->j:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    iget v3, p0, Lo2/e;->b:I

    .line 13
    .line 14
    invoke-virtual {v1, v3, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, Lcom/zalexdev/stryker/appintro/slides/Slide3;->k:Landroid/widget/TextView;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-wide v4, p0, Lo2/e;->c:J

    .line 25
    .line 26
    invoke-static {v4, v5}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->f(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " / "

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v6, p0, Lo2/e;->d:J

    .line 39
    .line 40
    invoke-static {v6, v7}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->f(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, " ("

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, "%) \u00b7 "

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-wide v2, p0, Lo2/e;->e:J

    .line 61
    .line 62
    invoke-static {v4, v5, v2, v3}, Lcom/zalexdev/stryker/appintro/slides/Slide3;->g(JJ)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v8, " \u00b7 ETA "

    .line 70
    .line 71
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-wide/16 v8, 0x0

    .line 75
    .line 76
    cmp-long v10, v4, v8

    .line 77
    .line 78
    const-string v11, "\u2014"

    .line 79
    .line 80
    if-lez v10, :cond_5

    .line 81
    .line 82
    cmp-long v10, v2, v8

    .line 83
    .line 84
    if-lez v10, :cond_5

    .line 85
    .line 86
    cmp-long v10, v6, v8

    .line 87
    .line 88
    if-gtz v10, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    sub-long/2addr v6, v4

    .line 92
    cmp-long v8, v6, v8

    .line 93
    .line 94
    if-gtz v8, :cond_1

    .line 95
    .line 96
    const-string v11, "0s"

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    long-to-double v4, v4

    .line 100
    long-to-double v2, v2

    .line 101
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    div-double/2addr v2, v8

    .line 107
    div-double/2addr v4, v2

    .line 108
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 109
    .line 110
    cmpg-double v2, v4, v2

    .line 111
    .line 112
    if-gez v2, :cond_2

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    long-to-double v2, v6

    .line 116
    div-double/2addr v2, v4

    .line 117
    double-to-long v2, v2

    .line 118
    const-wide/16 v4, 0x3c

    .line 119
    .line 120
    cmp-long v6, v2, v4

    .line 121
    .line 122
    if-gez v6, :cond_3

    .line 123
    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "s"

    .line 133
    .line 134
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    goto :goto_0

    .line 142
    :cond_3
    const-wide/16 v6, 0xe10

    .line 143
    .line 144
    cmp-long v8, v2, v6

    .line 145
    .line 146
    if-gez v8, :cond_4

    .line 147
    .line 148
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 149
    .line 150
    div-long v7, v2, v4

    .line 151
    .line 152
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    rem-long/2addr v2, v4

    .line 157
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    filled-new-array {v7, v2}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const-string v3, "%dm %02ds"

    .line 166
    .line 167
    invoke-static {v6, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    goto :goto_0

    .line 172
    :cond_4
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 173
    .line 174
    div-long v9, v2, v6

    .line 175
    .line 176
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    rem-long/2addr v2, v6

    .line 181
    div-long/2addr v2, v4

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    filled-new-array {v9, v2}, [Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const-string v3, "%dh %02dm"

    .line 191
    .line 192
    invoke-static {v8, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    :cond_5
    :goto_0
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method
