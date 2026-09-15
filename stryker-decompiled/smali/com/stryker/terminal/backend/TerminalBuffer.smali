.class public final Lcom/stryker/terminal/backend/TerminalBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActiveTranscriptRows:I

.field mColumns:I

.field mLines:[Lcom/stryker/terminal/backend/TerminalRow;

.field private mScreenFirstRow:I

.field mScreenRows:I

.field mTotalRows:I


# direct methods
.method public constructor <init>(III)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    iput v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    iput p2, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    iput p3, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    new-array p2, p2, [Lcom/stryker/terminal/backend/TerminalRow;

    iput-object p2, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x20

    sget-wide v6, Lcom/stryker/terminal/backend/TextStyle;->NORMAL:J

    move-object v0, p0

    move v3, p1

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockSet(IIIIIJ)V

    return-void
.end method

.method private blockCopyLinesDown(II)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    add-int/lit8 p2, p2, -0x1

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    add-int v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v0

    aget-object v1, v1, v2

    :goto_0
    if-ltz p2, :cond_1

    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    add-int v3, p1, p2

    add-int/lit8 v4, v3, 0x1

    rem-int/2addr v4, v0

    rem-int/2addr v3, v0

    aget-object v3, v2, v3

    aput-object v3, v2, v4

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    rem-int/2addr p1, v0

    aput-object v1, p2, p1

    return-void
.end method


# virtual methods
.method public allocateFullLineIfNecessary(I)Lcom/stryker/terminal/backend/TerminalRow;
    .locals 5

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Lcom/stryker/terminal/backend/TerminalRow;

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/stryker/terminal/backend/TerminalRow;-><init>(IJ)V

    aput-object v1, v0, p1

    :cond_0
    return-object v1
.end method

.method public blockCopy(IIIIII)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_4

    add-int v0, p1, p3

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    if-gt v0, v1, :cond_4

    if-ltz p2, :cond_4

    add-int v2, p2, p4

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    if-gt v2, v3, :cond_4

    if-ltz p5, :cond_4

    add-int/2addr p3, p5

    if-gt p3, v1, :cond_4

    if-ltz p6, :cond_4

    add-int p3, p6, p4

    if-gt p3, v3, :cond_4

    const/4 p3, 0x0

    if-le p2, p6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    if-ge p3, p4, :cond_3

    if-eqz v1, :cond_2

    move v2, p3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p3, 0x1

    sub-int v2, p4, v2

    :goto_1
    add-int v3, p2, v2

    invoke-virtual {p0, v3}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/stryker/terminal/backend/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/stryker/terminal/backend/TerminalRow;

    move-result-object v3

    add-int/2addr v2, p6

    invoke-virtual {p0, v2}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/stryker/terminal/backend/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/stryker/terminal/backend/TerminalRow;

    move-result-object v2

    invoke-virtual {v2, v3, p1, v0, p5}, Lcom/stryker/terminal/backend/TerminalRow;->copyInterval(Lcom/stryker/terminal/backend/TerminalRow;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public blockSet(IIIIIJ)V
    .locals 14

    .line 1
    move-object v6, p0

    .line 2
    move v7, p1

    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    move/from16 v9, p3

    .line 6
    .line 7
    move/from16 v10, p4

    .line 8
    .line 9
    if-ltz v7, :cond_2

    .line 10
    .line 11
    add-int v0, v7, v9

    .line 12
    .line 13
    iget v1, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    .line 14
    .line 15
    if-gt v0, v1, :cond_2

    .line 16
    .line 17
    if-ltz v8, :cond_2

    .line 18
    .line 19
    add-int v0, v8, v10

    .line 20
    .line 21
    iget v1, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    .line 22
    .line 23
    if-gt v0, v1, :cond_2

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    move v12, v11

    .line 27
    :goto_0
    if-ge v12, v10, :cond_1

    .line 28
    .line 29
    move v13, v11

    .line 30
    :goto_1
    if-ge v13, v9, :cond_0

    .line 31
    .line 32
    add-int v1, v7, v13

    .line 33
    .line 34
    add-int v2, v8, v12

    .line 35
    .line 36
    move-object v0, p0

    .line 37
    move/from16 v3, p5

    .line 38
    .line 39
    move-wide/from16 v4, p6

    .line 40
    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->setChar(IIIJ)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v13, v13, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-void

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Illegal arguments! blockSet("

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, ", "

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move/from16 v3, p5

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v3, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget v2, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    .line 103
    .line 104
    const-string v3, ")"

    .line 105
    .line 106
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0
.end method

.method public clearLineWrap(I)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/stryker/terminal/backend/TerminalRow;->mLineWrap:Z

    return-void
.end method

.method public clearTranscript()V
    .locals 6

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    if-ge v0, v1, :cond_0

    iget v5, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v1

    invoke-static {v4, v0, v5, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sub-int v1, v0, v1

    invoke-static {v4, v1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_0
    iput v2, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    return-void
.end method

.method public externalToInternalRow(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    if-lt p1, v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    .line 7
    .line 8
    if-gt p1, v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    .line 11
    .line 12
    add-int/2addr v0, p1

    .line 13
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    add-int/2addr p1, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    rem-int p1, v0, p1

    .line 20
    .line 21
    :goto_0
    return p1

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "extRow="

    .line 25
    .line 26
    const-string v2, ", mScreenRows="

    .line 27
    .line 28
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/session/a;->u(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", mActiveTranscriptRows="

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public getActiveRows()I
    .locals 2

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getActiveTranscriptRows()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    return v0
.end method

.method public getLineWrap(I)Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lcom/stryker/terminal/backend/TerminalRow;->mLineWrap:Z

    return p1
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->getSelectedText(IIIIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedText(IIIIZ)Ljava/lang/String;
    .locals 15

    .line 2
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    invoke-virtual {p0}, Lcom/stryker/terminal/backend/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v3, v3

    move/from16 v4, p2

    if-ge v4, v3, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/backend/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v3, v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget v4, v0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    move/from16 v5, p4

    if-lt v5, v4, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    move v5, v3

    :goto_2
    if-gt v5, v4, :cond_d

    if-ne v5, v3, :cond_2

    move/from16 v6, p1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-ne v5, v4, :cond_3

    add-int/lit8 v7, p3, 0x1

    if-le v7, v2, :cond_4

    :cond_3
    move v7, v2

    :cond_4
    iget-object v8, v0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    invoke-virtual {p0, v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8, v6}, Lcom/stryker/terminal/backend/TerminalRow;->findStartOfColumn(I)I

    move-result v6

    iget v9, v0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    if-ge v7, v9, :cond_5

    invoke-virtual {v8, v7}, Lcom/stryker/terminal/backend/TerminalRow;->findStartOfColumn(I)I

    move-result v9

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Lcom/stryker/terminal/backend/TerminalRow;->getSpaceUsed()I

    move-result v9

    :goto_4
    if-ne v9, v6, :cond_6

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Lcom/stryker/terminal/backend/TerminalRow;->findStartOfColumn(I)I

    move-result v9

    :cond_6
    iget-object v8, v8, Lcom/stryker/terminal/backend/TerminalRow;->mText:[C

    invoke-virtual {p0, v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->getLineWrap(I)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_7

    if-ne v7, v2, :cond_7

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    :cond_7
    move v12, v6

    move v7, v11

    :goto_5
    if-ge v12, v9, :cond_9

    aget-char v13, v8, v12

    const/16 v14, 0x20

    if-eq v13, v14, :cond_8

    move v7, v12

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_9
    move v9, v7

    :goto_6
    sub-int v7, v9, v6

    add-int/lit8 v7, v7, 0x1

    if-eq v9, v11, :cond_a

    if-lez v7, :cond_a

    invoke-virtual {v1, v8, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz p5, :cond_b

    if-nez v10, :cond_c

    :cond_b
    if-ge v5, v4, :cond_c

    iget v6, v0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_c

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStyleAt(II)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/backend/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/stryker/terminal/backend/TerminalRow;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/backend/TerminalRow;->getStyle(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTranscriptText()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/stryker/terminal/backend/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    iget v2, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/stryker/terminal/backend/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptTextWithoutJoinedLines()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/stryker/terminal/backend/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int v2, v0

    iget v3, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    iget v4, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->getSelectedText(IIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resize(III[IJZ)V
    .locals 31

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v7, p5

    iget v3, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v3, :cond_8

    iget v3, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    if-gt v1, v3, :cond_8

    iget v0, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    sub-int v3, v0, v1

    if-lez v3, :cond_3

    if-ge v3, v0, :cond_3

    sub-int/2addr v0, v9

    :goto_0
    if-lez v0, :cond_5

    aget v4, p4, v9

    if-lt v4, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6, v0}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result v4

    iget-object v5, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    aget-object v4, v5, v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/stryker/terminal/backend/TerminalRow;->isBlank()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-gez v3, :cond_5

    iget v0, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v3, v0, :cond_5

    move v4, v10

    :goto_1
    sub-int v5, v0, v3

    if-ge v4, v5, :cond_4

    iget v5, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    iget v11, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    add-int/2addr v5, v11

    add-int/2addr v5, v4

    iget v11, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    rem-int/2addr v5, v11

    invoke-virtual {v6, v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/stryker/terminal/backend/TerminalRow;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lcom/stryker/terminal/backend/TerminalRow;->clear(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v3, v0

    :cond_5
    :goto_2
    iget v0, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v0, v3

    iput v0, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    iget v4, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    if-gez v0, :cond_6

    add-int/2addr v0, v4

    goto :goto_3

    :cond_6
    rem-int/2addr v0, v4

    :goto_3
    iput v0, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    iput v2, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    if-eqz p7, :cond_7

    move v0, v10

    goto :goto_4

    :cond_7
    iget v0, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    add-int/2addr v0, v3

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4
    iput v0, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    aget v0, p4, v9

    sub-int/2addr v0, v3

    aput v0, p4, v9

    iput v1, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    move v1, v9

    move v2, v10

    goto/16 :goto_1b

    :cond_8
    iget-object v11, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    new-array v3, v2, [Lcom/stryker/terminal/backend/TerminalRow;

    iput-object v3, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    move v3, v10

    :goto_5
    if-ge v3, v2, :cond_9

    iget-object v4, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    new-instance v5, Lcom/stryker/terminal/backend/TerminalRow;

    invoke-direct {v5, v0, v7, v8}, Lcom/stryker/terminal/backend/TerminalRow;-><init>(IJ)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    iget v3, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    iget v12, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    iget v13, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    iget v14, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    iput v2, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    iput v1, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    iput v10, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    iput v10, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    iput v0, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    aget v15, p4, v9

    aget v4, p4, v10

    neg-int v0, v3

    const/4 v1, -0x1

    move v5, v0

    move v0, v1

    move v2, v10

    move v3, v2

    move/from16 v16, v3

    move/from16 v17, v16

    :goto_6
    if-ge v5, v13, :cond_23

    add-int v18, v12, v5

    if-gez v18, :cond_a

    add-int v18, v14, v18

    goto :goto_7

    :cond_a
    rem-int v18, v18, v14

    :goto_7
    aget-object v9, v11, v18

    if-ne v5, v15, :cond_b

    const/16 v18, 0x1

    goto :goto_8

    :cond_b
    move/from16 v18, v10

    :goto_8
    if-eqz v9, :cond_d

    if-nez v2, :cond_c

    if-nez v18, :cond_e

    :cond_c
    invoke-virtual {v9}, Lcom/stryker/terminal/backend/TerminalRow;->isBlank()Z

    move-result v19

    if-eqz v19, :cond_e

    :cond_d
    move/from16 p1, v2

    move-object/from16 v27, v11

    move/from16 v28, v12

    move v11, v4

    move v12, v5

    goto/16 :goto_19

    :cond_e
    move/from16 p1, v2

    if-lez v3, :cond_11

    move v2, v10

    move/from16 v10, v16

    :goto_9
    move/from16 p2, v4

    if-ge v2, v3, :cond_10

    iget v4, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    move/from16 p3, v5

    add-int/lit8 v5, v4, -0x1

    if-ne v10, v5, :cond_f

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v4, v7, v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_a

    :cond_f
    add-int/lit8 v10, v10, 0x1

    :goto_a
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p2

    move/from16 v5, p3

    const/16 v17, 0x0

    goto :goto_9

    :cond_10
    move/from16 p3, v5

    move/from16 v16, v10

    const/4 v10, 0x0

    goto :goto_b

    :cond_11
    move/from16 p2, v4

    move/from16 p3, v5

    move v10, v3

    :goto_b
    if-nez v18, :cond_15

    iget-boolean v2, v9, Lcom/stryker/terminal/backend/TerminalRow;->mLineWrap:Z

    if-eqz v2, :cond_12

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v9}, Lcom/stryker/terminal/backend/TerminalRow;->getSpaceUsed()I

    move-result v4

    if-ge v2, v4, :cond_14

    iget-object v4, v9, Lcom/stryker/terminal/backend/TerminalRow;->mText:[C

    aget-char v4, v4, v2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_13

    add-int/lit8 v3, v2, 0x1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    move v4, v3

    const/16 v18, 0x0

    goto :goto_e

    :cond_15
    :goto_d
    invoke-virtual {v9}, Lcom/stryker/terminal/backend/TerminalRow;->getSpaceUsed()I

    move-result v3

    if-eqz v18, :cond_14

    move v4, v3

    const/16 v18, 0x1

    :goto_e
    const-wide/16 v2, 0x0

    move/from16 p7, v10

    move/from16 v20, v17

    const/4 v5, 0x0

    const/4 v10, 0x0

    move/from16 v17, p1

    move/from16 v30, v16

    move/from16 v16, v1

    move/from16 v1, v30

    :goto_f
    if-ge v5, v4, :cond_1f

    move-wide/from16 v21, v2

    iget-object v2, v9, Lcom/stryker/terminal/backend/TerminalRow;->mText:[C

    aget-char v2, v2, v5

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v9, Lcom/stryker/terminal/backend/TerminalRow;->mText:[C

    add-int/lit8 v5, v5, 0x1

    aget-char v3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    :cond_16
    move v3, v2

    move/from16 v23, v5

    invoke-static {v3}, Lcom/stryker/terminal/backend/WcWidth;->width(I)I

    move-result v24

    if-lez v24, :cond_17

    invoke-virtual {v9, v10}, Lcom/stryker/terminal/backend/TerminalRow;->getStyle(I)J

    move-result-wide v21

    :cond_17
    add-int v2, v20, v24

    iget v5, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    if-le v2, v5, :cond_1a

    invoke-virtual {v6, v1}, Lcom/stryker/terminal/backend/TerminalBuffer;->setLineWrap(I)V

    iget v2, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v5, v2, -0x1

    if-ne v1, v5, :cond_19

    if-eqz v17, :cond_18

    add-int/lit8 v0, v0, -0x1

    :cond_18
    const/4 v5, 0x0

    invoke-virtual {v6, v5, v2, v7, v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_10

    :cond_19
    add-int/lit8 v1, v1, 0x1

    :goto_10
    move/from16 v20, v0

    move/from16 v25, v1

    const/16 v26, 0x0

    goto :goto_11

    :cond_1a
    move/from16 v25, v1

    move/from16 v26, v20

    move/from16 v20, v0

    :goto_11
    if-gtz v24, :cond_1b

    if-lez v26, :cond_1b

    const/4 v0, 0x1

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    :goto_12
    sub-int v1, v26, v0

    move-object/from16 v0, p0

    move/from16 v2, v25

    move/from16 v29, v4

    move-object/from16 v27, v11

    move/from16 v28, v12

    move/from16 v11, p2

    move/from16 v12, p3

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lcom/stryker/terminal/backend/TerminalBuffer;->setChar(IIIJ)V

    if-lez v24, :cond_1e

    if-ne v15, v12, :cond_1c

    if-ne v11, v10, :cond_1c

    move/from16 v0, v25

    move/from16 v16, v26

    const/16 v17, 0x1

    goto :goto_13

    :cond_1c
    move/from16 v0, v20

    :goto_13
    add-int v10, v10, v24

    add-int v26, v26, v24

    if-eqz v18, :cond_1d

    if-eqz v17, :cond_1d

    move/from16 v2, v17

    move/from16 v1, v25

    move/from16 v17, v26

    goto :goto_16

    :cond_1d
    :goto_14
    move/from16 v20, v26

    const/4 v1, 0x1

    goto :goto_15

    :cond_1e
    move/from16 v0, v20

    goto :goto_14

    :goto_15
    add-int/lit8 v5, v23, 0x1

    move/from16 p2, v11

    move/from16 p3, v12

    move-wide/from16 v2, v21

    move/from16 v1, v25

    move-object/from16 v11, v27

    move/from16 v12, v28

    move/from16 v4, v29

    goto/16 :goto_f

    :cond_1f
    move-object/from16 v27, v11

    move/from16 v28, v12

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v2, v17

    move/from16 v17, v20

    :goto_16
    add-int/lit8 v3, v13, -0x1

    if-eq v12, v3, :cond_22

    iget-boolean v3, v9, Lcom/stryker/terminal/backend/TerminalRow;->mLineWrap:Z

    if-nez v3, :cond_22

    iget v3, v6, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_21

    if-eqz v2, :cond_20

    add-int/lit8 v0, v0, -0x1

    :cond_20
    const/4 v4, 0x0

    invoke-virtual {v6, v4, v3, v7, v8}, Lcom/stryker/terminal/backend/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_17

    :cond_21
    add-int/lit8 v1, v1, 0x1

    :goto_17
    move/from16 v3, p7

    const/16 v17, 0x0

    :goto_18
    move/from16 v30, v16

    move/from16 v16, v1

    move/from16 v1, v30

    goto :goto_1a

    :cond_22
    move/from16 v3, p7

    goto :goto_18

    :goto_19
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p1

    :goto_1a
    add-int/lit8 v5, v12, 0x1

    move v4, v11

    move-object/from16 v11, v27

    move/from16 v12, v28

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_23
    move v2, v10

    aput v1, p4, v2

    const/4 v1, 0x1

    aput v0, p4, v1

    :goto_1b
    aget v0, p4, v2

    if-ltz v0, :cond_24

    aget v0, p4, v1

    if-gez v0, :cond_25

    :cond_24
    aput v2, p4, v1

    aput v2, p4, v2

    :cond_25
    return-void
.end method

.method public scrollDownOneLine(IIJ)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    if-gt p2, v1, :cond_2

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    invoke-direct {p0, v1, p1}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopyLinesDown(II)V

    invoke-virtual {p0, p2}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v1, p2

    invoke-direct {p0, p1, v1}, Lcom/stryker/terminal/backend/TerminalBuffer;->blockCopyLinesDown(II)V

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mTotalRows:I

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenFirstRow:I

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mActiveTranscriptRows:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    iget-object p2, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    aget-object v0, p2, p1

    if-nez v0, :cond_1

    new-instance v0, Lcom/stryker/terminal/backend/TerminalRow;

    iget v1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    invoke-direct {v0, v1, p3, p4}, Lcom/stryker/terminal/backend/TerminalRow;-><init>(IJ)V

    aput-object v0, p2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/stryker/terminal/backend/TerminalRow;->clear(J)V

    :goto_0
    return-void

    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "topMargin="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bottomMargin="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenRows="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setChar(IIIJ)V
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/stryker/terminal/backend/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/stryker/terminal/backend/TerminalRow;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/stryker/terminal/backend/TerminalRow;->setChar(IIJ)V

    return-void

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "row="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", column="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenRows="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mScreenRows:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mColumns="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mColumns:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setLineWrap(I)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/stryker/terminal/backend/TerminalRow;->mLineWrap:Z

    return-void
.end method

.method public setOrClearEffect(IZZZIIIIII)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move/from16 v2, p9

    move/from16 v3, p7

    :goto_0
    if-ge v3, v2, :cond_7

    iget-object v4, v0, Lcom/stryker/terminal/backend/TerminalBuffer;->mLines:[Lcom/stryker/terminal/backend/TerminalRow;

    invoke-virtual {p0, v3}, Lcom/stryker/terminal/backend/TerminalBuffer;->externalToInternalRow(I)I

    move-result v5

    aget-object v4, v4, v5

    move/from16 v5, p7

    if-nez p4, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v6, p5

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v6, p8

    :goto_2
    if-nez p4, :cond_3

    add-int/lit8 v7, v3, 0x1

    if-ne v7, v2, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v7, p6

    goto :goto_4

    :cond_3
    :goto_3
    move/from16 v7, p10

    :goto_4
    if-ge v6, v7, :cond_6

    invoke-virtual {v4, v6}, Lcom/stryker/terminal/backend/TerminalRow;->getStyle(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/stryker/terminal/backend/TextStyle;->decodeForeColor(J)I

    move-result v10

    invoke-static {v8, v9}, Lcom/stryker/terminal/backend/TextStyle;->decodeBackColor(J)I

    move-result v11

    invoke-static {v8, v9}, Lcom/stryker/terminal/backend/TextStyle;->decodeEffect(J)I

    move-result v8

    if-eqz p3, :cond_4

    not-int v9, v1

    and-int/2addr v9, v8

    not-int v8, v8

    and-int/2addr v8, v1

    or-int/2addr v8, v9

    goto :goto_5

    :cond_4
    if-eqz p2, :cond_5

    or-int/2addr v8, v1

    goto :goto_5

    :cond_5
    not-int v9, v1

    and-int/2addr v8, v9

    :goto_5
    iget-object v9, v4, Lcom/stryker/terminal/backend/TerminalRow;->mStyle:[J

    invoke-static {v10, v11, v8}, Lcom/stryker/terminal/backend/TextStyle;->encode(III)J

    move-result-wide v10

    aput-wide v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
