.class public Lorg/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/BERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [[B

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;IZ[[B)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    iput-object p4, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .line 5
    invoke-static {p1}, Lorg/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 6
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public static createPrimitiveDERObject(ILorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    :pswitch_0
    new-instance p1, Ljava/io/IOException;

    .line 6
    .line 7
    const-string p2, "unknown tag "

    .line 8
    .line 9
    const-string v0, " encountered"

    .line 10
    .line 11
    invoke-static {p2, p0, v0}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)[C

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1BMPString;->createPrimitive([C)Lorg/bouncycastle/asn1/ASN1BMPString;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1UniversalString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UniversalString;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GeneralString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GeneralString;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1VisibleString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1VisibleString;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_6
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :pswitch_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1UTCTime;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UTCTime;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :pswitch_8
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1IA5String;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :pswitch_9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1VideotexString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1VideotexString;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :pswitch_a
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1T61String;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1T61String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :pswitch_c
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1NumericString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1NumericString;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_d
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    const/4 p1, 0x0

    .line 132
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1RelativeOID;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1RelativeOID;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0

    .line 137
    :pswitch_e
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    return-object p0

    .line 146
    :pswitch_f
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1Enumerated;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    return-object p0

    .line 155
    :pswitch_10
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    :pswitch_11
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_12
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Null;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Null;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0

    .line 182
    :pswitch_13
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :pswitch_14
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    return-object p0

    .line 200
    :pswitch_15
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    return-object p0

    .line 209
    :pswitch_16
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;->getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Boolean;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getBMPCharBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)[C
    .locals 11

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_6

    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/16 v3, 0x8

    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "EOF encountered in middle of BMPString"

    const/4 v8, 0x2

    if-lt v0, v3, :cond_1

    invoke-static {p0, v4, v5, v3}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v3, :cond_0

    aget-byte v7, v4, v5

    shl-int/2addr v7, v3

    const/4 v9, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x2

    const/4 v8, 0x4

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v7, v6, 0x3

    const/4 v8, 0x6

    aget-byte v8, v4, v8

    shl-int/2addr v8, v3

    const/4 v9, 0x7

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v2, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-lez v0, :cond_4

    invoke-static {p0, v4, v5, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v9

    if-ne v9, v0, :cond_3

    :cond_2
    add-int/lit8 v7, v5, 0x1

    aget-byte v9, v4, v5

    shl-int/2addr v9, v3

    add-int/2addr v5, v8

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v10, v6, 0x1

    or-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v2, v6

    move v6, v10

    if-lt v5, v0, :cond_2

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result p0

    if-nez p0, :cond_5

    if-ne v1, v6, :cond_5

    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "malformed BMPString encoding encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBuffer(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    array-length v1, p1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v1, p1, v0

    if-nez v1, :cond_1

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->readAllIntoByteArray([B)V

    return-object v1
.end method

.method public static readLength(Ljava/io/InputStream;IZ)I
    .locals 5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x80

    if-ne v1, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-ltz v0, :cond_8

    const/16 v1, 0xff

    if-eq v1, v0, :cond_7

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    move v2, v1

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_6

    ushr-int/lit8 v4, v1, 0x17

    if-nez v4, :cond_5

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_2

    if-lt v1, p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p2, "corrupted stream - out of bounds length found: "

    const-string v0, " >= "

    .line 2
    invoke-static {p2, v1, v0, p1}, Landroid/support/v4/media/session/a;->n(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return v1

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "long form definite-length more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid long form definite-length 0xFF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readTagNumber(Ljava/io/InputStream;I)I
    .locals 3

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const-string v1, "EOF found inside tag value."

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - high tag number < 31 found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    and-int/lit8 v0, p1, 0x7f

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_4

    ushr-int/lit8 v2, v0, 0x18

    if-nez v2, :cond_3

    and-int/lit8 p1, p1, 0x7f

    or-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag number more than 31 bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    and-int/lit8 p0, p1, 0x7f

    or-int p1, v0, p0

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return p1
.end method


# virtual methods
.method public buildConstructedBitString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v4, v3, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/bouncycastle/asn1/ASN1BitString;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object encountered in constructed BIT STRING: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/BERBitString;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/BERBitString;-><init>([Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object p1
.end method

.method public buildConstructedOctetString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1OctetString;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    instance-of v4, v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown object encountered in constructed OCTET STRING: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object p1
.end method

.method public buildObject(III)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 2
    .line 3
    iget v1, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 4
    .line 5
    invoke-direct {v0, p0, p3, v1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 6
    .line 7
    .line 8
    and-int/lit16 p3, p1, 0xe0

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 13
    .line 14
    invoke-static {p2, v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    and-int/lit16 p3, p1, 0xc0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    and-int/lit8 p1, p1, 0x20

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0, p3, p2, v1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTaggedObjectDL(IIZLorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_2
    const/4 p1, 0x3

    .line 36
    if-eq p2, p1, :cond_9

    .line 37
    .line 38
    const/4 p1, 0x4

    .line 39
    if-eq p2, p1, :cond_8

    .line 40
    .line 41
    const/16 p1, 0x8

    .line 42
    .line 43
    if-eq p2, p1, :cond_7

    .line 44
    .line 45
    const/16 p1, 0x10

    .line 46
    .line 47
    if-eq p2, p1, :cond_4

    .line 48
    .line 49
    const/16 p1, 0x11

    .line 50
    .line 51
    if-ne p2, p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lorg/bouncycastle/asn1/DLFactory;->createSet(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSet;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 63
    .line 64
    const-string p3, "unknown tag "

    .line 65
    .line 66
    const-string v0, " encountered"

    .line 67
    .line 68
    invoke-static {p3, p2, v0}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ge p1, v1, :cond_5

    .line 81
    .line 82
    sget-object p1, Lorg/bouncycastle/asn1/DLFactory;->EMPTY_SEQUENCE:Lorg/bouncycastle/asn1/DLSequence;

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_5
    iget-boolean p1, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    new-instance p1, Lorg/bouncycastle/asn1/LazyEncodedSequence;

    .line 90
    .line 91
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/LazyEncodedSequence;-><init>([B)V

    .line 96
    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_6
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1

    .line 108
    :cond_7
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DLSequence;->toASN1External()Lorg/bouncycastle/asn1/ASN1External;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :cond_8
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildConstructedOctetString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    return-object p1

    .line 130
    :cond_9
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildConstructedBitString(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1BitString;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method public readFully([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of object"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readLength()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v0

    return v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    if-ltz v2, :cond_2

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_9

    new-instance v2, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget v4, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v3, v2, v4, v5}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I[[B)V

    and-int/lit16 v0, v0, 0xc0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0, v1}, Lorg/bouncycastle/asn1/ASN1StreamParser;->loadTaggedIL(II)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    const/4 v0, 0x4

    if-eq v1, v0, :cond_7

    const/16 v0, 0x8

    if-eq v1, v0, :cond_6

    const/16 v0, 0x10

    if-eq v1, v0, :cond_5

    const/16 v0, 0x11

    if-ne v1, v0, :cond_4

    invoke-static {v3}, Lorg/bouncycastle/asn1/BERSetParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERSet;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v3}, Lorg/bouncycastle/asn1/BERSequenceParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERSequence;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v3}, Lorg/bouncycastle/asn1/DERExternalParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/DLExternal;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-static {v3}, Lorg/bouncycastle/asn1/BEROctetStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BEROctetString;

    move-result-object v0

    return-object v0

    :cond_8
    invoke-static {v3}, Lorg/bouncycastle/asn1/BERBitStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTaggedObjectDL(IIZLorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    if-nez p3, :cond_0

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->createPrimitive(II[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->createConstructedDL(IILorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    return-object p1
.end method

.method public readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :cond_1
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1
.end method

.method public readVector(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object p1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ[[B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    return-object p1
.end method
