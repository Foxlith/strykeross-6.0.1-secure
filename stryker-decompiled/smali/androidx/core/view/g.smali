.class public final Landroidx/core/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/f;
.implements Landroidx/core/view/h;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/ClipData;

.field public final c:I

.field public d:I

.field public e:Landroid/net/Uri;

.field public f:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/g;->a:I

    iput-object p1, p0, Landroidx/core/view/g;->b:Landroid/content/ClipData;

    iput p2, p0, Landroidx/core/view/g;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/g;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/view/g;->a:I

    iget-object v1, p1, Landroidx/core/view/g;->b:Landroid/content/ClipData;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Landroidx/core/view/g;->b:Landroid/content/ClipData;

    .line 4
    iget v1, p1, Landroidx/core/view/g;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-string v4, "source"

    if-ltz v1, :cond_2

    if-gt v1, v3, :cond_1

    iput v1, p0, Landroidx/core/view/g;->c:I

    iget v1, p1, Landroidx/core/view/g;->d:I

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v1, :cond_0

    iput v1, p0, Landroidx/core/view/g;->d:I

    iget-object v0, p1, Landroidx/core/view/g;->e:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/view/g;->e:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/core/view/g;->f:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/view/g;->f:Landroid/os/Bundle;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested flags 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but only 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " are allowed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s is out of range of [%d, %d] (too high)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s is out of range of [%d, %d] (too low)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/g;->f:Landroid/os/Bundle;

    return-void
.end method

.method public final b()Landroid/content/ClipData;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/g;->b:Landroid/content/ClipData;

    return-object v0
.end method

.method public final build()Landroidx/core/view/i;
    .locals 2

    new-instance v0, Landroidx/core/view/i;

    new-instance v1, Landroidx/core/view/g;

    invoke-direct {v1, p0}, Landroidx/core/view/g;-><init>(Landroidx/core/view/g;)V

    invoke-direct {v0, v1}, Landroidx/core/view/i;-><init>(Landroidx/core/view/h;)V

    return-object v0
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/g;->e:Landroid/net/Uri;

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/g;->d:I

    return-void
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/g;->d:I

    return v0
.end method

.method public final p()Landroid/view/ContentInfo;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/g;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/view/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ContentInfoCompat{clip="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/core/view/g;->b:Landroid/content/ClipData;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", source="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Landroidx/core/view/g;->c:I

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-eq v1, v2, :cond_4

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    if-eq v1, v2, :cond_3

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    if-eq v1, v2, :cond_2

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    if-eq v1, v2, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x5

    .line 49
    if-eq v1, v2, :cond_0

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "SOURCE_PROCESS_TEXT"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string v1, "SOURCE_AUTOFILL"

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const-string v1, "SOURCE_DRAG_AND_DROP"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const-string v1, "SOURCE_INPUT_METHOD"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const-string v1, "SOURCE_CLIPBOARD"

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    const-string v1, "SOURCE_APP"

    .line 72
    .line 73
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", flags="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Landroidx/core/view/g;->d:I

    .line 82
    .line 83
    and-int/lit8 v2, v1, 0x1

    .line 84
    .line 85
    if-eqz v2, :cond_6

    .line 86
    .line 87
    const-string v1, "FLAG_CONVERT_TO_PLAIN_TEXT"

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Landroidx/core/view/g;->e:Landroid/net/Uri;

    .line 98
    .line 99
    const-string v2, ""

    .line 100
    .line 101
    if-nez v1, :cond_7

    .line 102
    .line 103
    move-object v1, v2

    .line 104
    goto :goto_2

    .line 105
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, ", hasLinkUri("

    .line 108
    .line 109
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Landroidx/core/view/g;->e:Landroid/net/Uri;

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v3, ")"

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Landroidx/core/view/g;->f:Landroid/os/Bundle;

    .line 138
    .line 139
    if-nez v1, :cond_8

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_8
    const-string v2, ", hasExtras"

    .line 143
    .line 144
    :goto_3
    const-string v1, "}"

    .line 145
    .line 146
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    return-object v0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
