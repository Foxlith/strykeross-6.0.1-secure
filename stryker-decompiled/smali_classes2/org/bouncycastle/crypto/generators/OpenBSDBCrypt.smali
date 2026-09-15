.class public Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final allowedVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final decodingTable:[B

.field private static final defaultVersion:Ljava/lang/String; = "2y"

.field private static final encodingTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "2x"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "2a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "2y"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "2b"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v1, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x2et
        0x2ft
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPassword(Ljava/lang/String;[B)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->doCheckPassword(Ljava/lang/String;[B)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing password."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkPassword(Ljava/lang/String;[C)Z
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->doCheckPassword(Ljava/lang/String;[B)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Missing password."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createBcryptString(Ljava/lang/String;[B[BI)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const/16 v1, 0x3c

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x24

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 p0, 0xa

    .line 28
    .line 29
    if-ge p3, p0, :cond_0

    .line 30
    .line 31
    const-string p0, "0"

    .line 32
    .line 33
    invoke-static {p0, p3}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodeData(Ljava/lang/StringBuilder;[B)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/generators/BCrypt;->generate([B[BI)[B

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodeData(Ljava/lang/StringBuilder;[B)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p2, "Version "

    .line 66
    .line 67
    const-string p3, " is not accepted by this implementation."

    .line 68
    .line 69
    invoke-static {p2, p0, p3}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method private static decodeSaltString(Ljava/lang/String;)[B
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 10
    .line 11
    .line 12
    array-length v2, p0

    .line 13
    const/16 v3, 0x16

    .line 14
    .line 15
    if-ne v2, v3, :cond_4

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    array-length v4, p0

    .line 20
    if-ge v3, v4, :cond_2

    .line 21
    .line 22
    aget-char v4, p0, v3

    .line 23
    .line 24
    const/16 v5, 0x7a

    .line 25
    .line 26
    if-gt v4, v5, :cond_1

    .line 27
    .line 28
    const/16 v5, 0x2e

    .line 29
    .line 30
    if-lt v4, v5, :cond_1

    .line 31
    .line 32
    const/16 v5, 0x39

    .line 33
    .line 34
    if-le v4, v5, :cond_0

    .line 35
    .line 36
    const/16 v5, 0x41

    .line 37
    .line 38
    if-lt v4, v5, :cond_1

    .line 39
    .line 40
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "Salt string contains invalid character: "

    .line 46
    .line 47
    invoke-static {v0, v4}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_2
    const/16 v3, 0x18

    .line 56
    .line 57
    new-array v4, v3, [C

    .line 58
    .line 59
    array-length v5, p0

    .line 60
    invoke-static {p0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    move p0, v2

    .line 64
    :goto_1
    if-ge p0, v3, :cond_3

    .line 65
    .line 66
    sget-object v5, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodingTable:[B

    .line 67
    .line 68
    aget-char v6, v4, p0

    .line 69
    .line 70
    aget-byte v6, v5, v6

    .line 71
    .line 72
    add-int/lit8 v7, p0, 0x1

    .line 73
    .line 74
    aget-char v7, v4, v7

    .line 75
    .line 76
    aget-byte v7, v5, v7

    .line 77
    .line 78
    add-int/lit8 v8, p0, 0x2

    .line 79
    .line 80
    aget-char v8, v4, v8

    .line 81
    .line 82
    aget-byte v8, v5, v8

    .line 83
    .line 84
    add-int/lit8 v9, p0, 0x3

    .line 85
    .line 86
    aget-char v9, v4, v9

    .line 87
    .line 88
    aget-byte v5, v5, v9

    .line 89
    .line 90
    shl-int/lit8 v6, v6, 0x2

    .line 91
    .line 92
    shr-int/lit8 v9, v7, 0x4

    .line 93
    .line 94
    or-int/2addr v6, v9

    .line 95
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 96
    .line 97
    .line 98
    shl-int/lit8 v6, v7, 0x4

    .line 99
    .line 100
    shr-int/lit8 v7, v8, 0x2

    .line 101
    .line 102
    or-int/2addr v6, v7

    .line 103
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 104
    .line 105
    .line 106
    shl-int/lit8 v6, v8, 0x6

    .line 107
    .line 108
    or-int/2addr v5, v6

    .line 109
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 p0, p0, 0x4

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-array v0, v1, [B

    .line 120
    .line 121
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v2, "Invalid base64 salt length: "

    .line 130
    .line 131
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    array-length p0, p0

    .line 135
    const-string v2, " , 22 required."

    .line 136
    .line 137
    invoke-static {v1, p0, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0
.end method

.method private static doCheckPassword(Ljava/lang/String;[B)Z
    .locals 9

    .line 1
    const-string v0, "Invalid cost factor: "

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/16 v3, 0x32

    .line 11
    .line 12
    if-ne v2, v3, :cond_8

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0x3c

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/16 v5, 0x24

    .line 22
    .line 23
    if-eq v2, v3, :cond_1

    .line 24
    .line 25
    const/16 v3, 0x3b

    .line 26
    .line 27
    if-ne v2, v3, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne v3, v5, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    .line 37
    .line 38
    const-string p1, "Bcrypt String length: "

    .line 39
    .line 40
    const-string v0, ", 60 required."

    .line 41
    .line 42
    invoke-static {p1, v2, v0}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const-string v6, "Invalid Bcrypt String format."

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x3

    .line 58
    if-ne v3, v5, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ne v3, v5, :cond_2

    .line 65
    .line 66
    const/4 v3, 0x5

    .line 67
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v3, v5, :cond_2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_3
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-ne v3, v5, :cond_7

    .line 85
    .line 86
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-ne v3, v5, :cond_7

    .line 91
    .line 92
    const/4 v3, 0x6

    .line 93
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-ne v3, v5, :cond_7

    .line 98
    .line 99
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    const/4 v6, 0x4

    .line 104
    if-ne v3, v5, :cond_4

    .line 105
    .line 106
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move v8, v6

    .line 116
    :goto_2
    sget-object v4, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    .line 117
    .line 118
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    add-int/lit8 v4, v8, 0x2

    .line 125
    .line 126
    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    if-lt v4, v6, :cond_5

    .line 135
    .line 136
    const/16 v6, 0x1f

    .line 137
    .line 138
    if-gt v4, v6, :cond_5

    .line 139
    .line 140
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    add-int/2addr v0, v1

    .line 145
    sub-int/2addr v2, v6

    .line 146
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->decodeSaltString(Ljava/lang/String;)[B

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v3, p1, v0, v4}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->doGenerate(Ljava/lang/String;[B[BI)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p0, p1}, Lorg/bouncycastle/util/Strings;->constantTimeAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    return p0

    .line 163
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 164
    .line 165
    const-string p1, ", 4 < cost < 31 expected."

    .line 166
    .line 167
    invoke-static {v0, v4, p1}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    invoke-static {v0, v4}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 186
    .line 187
    const-string p1, "Bcrypt version \'"

    .line 188
    .line 189
    const-string v0, "\' is not supported by this implementation"

    .line 190
    .line 191
    invoke-static {p1, v3, v0}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 200
    .line 201
    invoke-direct {p0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string p1, "not a Bcrypt string"

    .line 208
    .line 209
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p0

    .line 213
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    const-string p1, "Missing bcryptString."

    .line 216
    .line 217
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw p0
.end method

.method private static doGenerate(Ljava/lang/String;[B[BI)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->allowedVersions:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    if-eqz p2, :cond_4

    .line 10
    .line 11
    array-length v0, p2

    .line 12
    const/16 v1, 0x10

    .line 13
    .line 14
    if-ne v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-lt p3, v0, :cond_2

    .line 18
    .line 19
    const/16 v0, 0x1f

    .line 20
    .line 21
    if-gt p3, v0, :cond_2

    .line 22
    .line 23
    array-length v0, p1

    .line 24
    const/16 v1, 0x48

    .line 25
    .line 26
    if-lt v0, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    array-length v0, p1

    .line 30
    add-int/lit8 v1, v0, 0x1

    .line 31
    .line 32
    :goto_0
    new-array v0, v1, [B

    .line 33
    .line 34
    array-length v2, p1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-le v1, v2, :cond_1

    .line 37
    .line 38
    array-length v1, p1

    .line 39
    :cond_1
    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v0, p2, p3}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->createBcryptString(Ljava/lang/String;[B[BI)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    const-string p1, "Invalid cost factor."

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p3, "16 byte salt required: "

    .line 66
    .line 67
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    array-length p2, p2

    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p1, "Salt required."

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p2, "Version "

    .line 93
    .line 94
    const-string p3, " is not accepted by this implementation."

    .line 95
    .line 96
    invoke-static {p2, p0, p3}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method private static encodeData(Ljava/lang/StringBuilder;[B)V
    .locals 10

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x18

    .line 3
    .line 4
    const/16 v2, 0x10

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/DataLengthException;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "Invalid length: "

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    array-length p1, p1

    .line 22
    const-string v1, ", 24 for key or 16 for salt expected"

    .line 23
    .line 24
    invoke-static {v0, p1, v1}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    :goto_0
    array-length v0, p1

    .line 33
    const/4 v1, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-ne v0, v2, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x12

    .line 38
    .line 39
    new-array v0, v0, [B

    .line 40
    .line 41
    array-length v2, p1

    .line 42
    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    move-object p1, v0

    .line 46
    move v0, v1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    array-length v0, p1

    .line 49
    sub-int/2addr v0, v1

    .line 50
    aput-byte v3, p1, v0

    .line 51
    .line 52
    move v0, v3

    .line 53
    :goto_1
    array-length v2, p1

    .line 54
    :goto_2
    if-ge v3, v2, :cond_3

    .line 55
    .line 56
    aget-byte v4, p1, v3

    .line 57
    .line 58
    and-int/lit16 v4, v4, 0xff

    .line 59
    .line 60
    add-int/lit8 v5, v3, 0x1

    .line 61
    .line 62
    aget-byte v5, p1, v5

    .line 63
    .line 64
    and-int/lit16 v5, v5, 0xff

    .line 65
    .line 66
    add-int/lit8 v6, v3, 0x2

    .line 67
    .line 68
    aget-byte v6, p1, v6

    .line 69
    .line 70
    and-int/lit16 v7, v6, 0xff

    .line 71
    .line 72
    sget-object v8, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->encodingTable:[B

    .line 73
    .line 74
    ushr-int/lit8 v9, v4, 0x2

    .line 75
    .line 76
    and-int/lit8 v9, v9, 0x3f

    .line 77
    .line 78
    aget-byte v9, v8, v9

    .line 79
    .line 80
    int-to-char v9, v9

    .line 81
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    shl-int/lit8 v4, v4, 0x4

    .line 85
    .line 86
    ushr-int/lit8 v9, v5, 0x4

    .line 87
    .line 88
    or-int/2addr v4, v9

    .line 89
    and-int/lit8 v4, v4, 0x3f

    .line 90
    .line 91
    aget-byte v4, v8, v4

    .line 92
    .line 93
    int-to-char v4, v4

    .line 94
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    shl-int/lit8 v4, v5, 0x2

    .line 98
    .line 99
    ushr-int/lit8 v5, v7, 0x6

    .line 100
    .line 101
    or-int/2addr v4, v5

    .line 102
    and-int/lit8 v4, v4, 0x3f

    .line 103
    .line 104
    aget-byte v4, v8, v4

    .line 105
    .line 106
    int-to-char v4, v4

    .line 107
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    and-int/lit8 v4, v6, 0x3f

    .line 111
    .line 112
    aget-byte v4, v8, v4

    .line 113
    .line 114
    int-to-char v4, v4

    .line 115
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    add-int/lit8 v3, v3, 0x3

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-ne v0, v1, :cond_4

    .line 126
    .line 127
    add-int/lit8 p1, p1, -0x2

    .line 128
    .line 129
    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_4
    sub-int/2addr p1, v1

    .line 134
    goto :goto_3

    .line 135
    :goto_4
    return-void
.end method

.method public static generate(Ljava/lang/String;[B[BI)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->doGenerate(Ljava/lang/String;[B[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Password required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generate(Ljava/lang/String;[C[BI)Ljava/lang/String;
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->doGenerate(Ljava/lang/String;[B[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Password required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generate([B[BI)Ljava/lang/String;
    .locals 1

    .line 3
    const-string v0, "2y"

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->generate(Ljava/lang/String;[B[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generate([C[BI)Ljava/lang/String;
    .locals 1

    .line 4
    const-string v0, "2y"

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/crypto/generators/OpenBSDBCrypt;->generate(Ljava/lang/String;[C[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
