.class public final Lt4/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:C

.field public d:I


# direct methods
.method public static a(ZC)Z
    .locals 3

    .line 1
    const/16 v0, 0x61

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7b

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p1, :cond_1

    const/16 v0, 0x5b

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "_-#$"

    invoke-static {v0, p1}, Lq5/h;->n1(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz p0, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    const/16 p0, 0x30

    if-gt p0, p1, :cond_4

    const/16 p0, 0x3a

    if-ge p1, p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method public static b(C)Z
    .locals 2

    .line 1
    const/16 v0, 0x30

    const/4 v1, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static d(C)I
    .locals 1

    .line 1
    invoke-static {p0}, Lt4/l;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x30

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final c(Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lt4/l;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lt4/l;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lt4/l;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_2

    if-nez p1, :cond_1

    return v1

    :cond_1
    new-instance p1, Lt4/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected EOF near `"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lt4/l;->c:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' in line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lt4/l;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lt4/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, p0, Lt4/l;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lt4/l;->c:C

    return v3
.end method
