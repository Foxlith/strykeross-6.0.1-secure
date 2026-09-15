.class public Lorg/bouncycastle/util/io/pem/PemReader;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# static fields
.field private static final BEGIN:Ljava/lang/String; = "-----BEGIN "

.field private static final END:Ljava/lang/String; = "-----END "


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private loadObject(Ljava/lang/String;)Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 6

    .line 1
    const-string v0, "-----END "

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuffer;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    const/16 v4, 0x3a

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-ltz v4, :cond_0

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Lorg/bouncycastle/util/io/pem/PemHeader;

    .line 47
    .line 48
    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/util/io/pem/PemHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    const/4 v5, -0x1

    .line 60
    if-eq v4, v5, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 72
    .line 73
    new-instance v0, Lorg/bouncycastle/util/io/pem/PemObject;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, p1, v2, v1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 88
    .line 89
    const-string v1, " not found"

    .line 90
    .line 91
    invoke-static {v0, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method


# virtual methods
.method public readPemObject()Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 4

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const-string v2, "-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/io/pem/PemReader;->loadObject(Ljava/lang/String;)Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
