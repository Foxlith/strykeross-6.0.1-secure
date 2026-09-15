.class public Lorg/bouncycastle/oer/OEROutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bits:[I


# instance fields
.field protected debugOutput:Ljava/io/PrintWriter;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    iput-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public static byteLength(J)I
    .locals 6

    const/16 v0, 0x8

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    shl-long/2addr p0, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static create(Ljava/io/OutputStream;)Lorg/bouncycastle/oer/OEROutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/OEROutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/OEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private encodeLength(J)V
    .locals 2

    const-wide/16 v0, 0x7f

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v0, p1

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method private encodeQuantity(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public debugPrint(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "debugPrint"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OERInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-lez v2, :cond_3

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_4
    return-void
.end method

.method public write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V
    .locals 10

    .line 1
    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/oer/OEROptional;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lorg/bouncycastle/oer/OEROptional;

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lorg/bouncycastle/oer/OEROutputStream$1;->$SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType:[I

    .line 25
    .line 26
    iget-object v1, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    aget v0, v0, v1

    .line 33
    .line 34
    const/16 v1, 0xff

    .line 35
    .line 36
    const/4 v2, 0x6

    .line 37
    const-string v3, ""

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    const/4 v5, 0x0

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    :pswitch_0
    goto/16 :goto_1a

    .line 45
    .line 46
    :pswitch_1
    iget-object p2, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->label:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 68
    .line 69
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_1a

    .line 78
    .line 79
    :pswitch_2
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->isFixedLength()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    array-length v0, p1

    .line 100
    int-to-long v0, v0

    .line 101
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :goto_2
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->rangeExpression()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_3
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :pswitch_3
    invoke-static {p1}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->isFixedLength()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_4

    .line 130
    .line 131
    :goto_4
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->rangeExpression()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    goto :goto_3

    .line 145
    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    array-length v1, v0

    .line 150
    add-int/2addr v1, v4

    .line 151
    int-to-long v1, v1

    .line 152
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :pswitch_4
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    array-length v0, p1

    .line 174
    int-to-long v0, v0

    .line 175
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 179
    .line 180
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, v3}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    goto :goto_3

    .line 188
    :pswitch_5
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->isFixedLength()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_5

    .line 201
    .line 202
    :goto_5
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 203
    .line 204
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    array-length v0, p1

    .line 209
    int-to-long v0, v0

    .line 210
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :pswitch_6
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->intBytesForRange()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-lez v0, :cond_8

    .line 223
    .line 224
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    if-eq v0, v4, :cond_7

    .line 233
    .line 234
    const/4 v1, 0x2

    .line 235
    if-eq v0, v1, :cond_7

    .line 236
    .line 237
    const/4 v1, 0x4

    .line 238
    if-eq v0, v1, :cond_7

    .line 239
    .line 240
    const/16 v1, 0x8

    .line 241
    .line 242
    if-ne v0, v1, :cond_6

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 246
    .line 247
    const-string p2, "unknown uint length "

    .line 248
    .line 249
    invoke-static {p2, v0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :cond_7
    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 258
    .line 259
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 260
    .line 261
    .line 262
    goto :goto_9

    .line 263
    :cond_8
    if-gez v0, :cond_d

    .line 264
    .line 265
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const/4 v1, -0x8

    .line 270
    if-eq v0, v1, :cond_c

    .line 271
    .line 272
    const/4 v1, -0x4

    .line 273
    if-eq v0, v1, :cond_b

    .line 274
    .line 275
    const/4 v1, -0x2

    .line 276
    if-eq v0, v1, :cond_a

    .line 277
    .line 278
    const/4 v1, -0x1

    .line 279
    if-ne v0, v1, :cond_9

    .line 280
    .line 281
    new-array v0, v4, [B

    .line 282
    .line 283
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->byteValueExact(Ljava/math/BigInteger;)B

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    aput-byte p1, v0, v5

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 291
    .line 292
    const-string p2, "unknown twos compliment length"

    .line 293
    .line 294
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw p1

    .line 298
    :cond_a
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->shortValueExact(Ljava/math/BigInteger;)S

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    goto :goto_7

    .line 307
    :cond_b
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    .line 308
    .line 309
    .line 310
    move-result p1

    .line 311
    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    goto :goto_7

    .line 316
    :cond_c
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    .line 317
    .line 318
    .line 319
    move-result-wide v0

    .line 320
    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    :goto_7
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 327
    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_d
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->isLowerRangeZero()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    if-eqz v0, :cond_e

    .line 339
    .line 340
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    goto :goto_8

    .line 345
    :cond_e
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    :goto_8
    array-length v0, p1

    .line 350
    int-to-long v0, v0

    .line 351
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    .line 352
    .line 353
    .line 354
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 355
    .line 356
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 357
    .line 358
    .line 359
    :goto_9
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->rangeExpression()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    :goto_a
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 371
    .line 372
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_1a

    .line 376
    .line 377
    :pswitch_7
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 378
    .line 379
    if-eqz v0, :cond_f

    .line 380
    .line 381
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    goto :goto_b

    .line 390
    :cond_f
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    :goto_b
    iget-object v0, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    .line 399
    .line 400
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-eqz v2, :cond_12

    .line 409
    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Lorg/bouncycastle/oer/OERDefinition$Element;

    .line 415
    .line 416
    iget-object v2, v2, Lorg/bouncycastle/oer/OERDefinition$Element;->enumValue:Ljava/math/BigInteger;

    .line 417
    .line 418
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_10

    .line 423
    .line 424
    const-wide/16 v2, 0x7f

    .line 425
    .line 426
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-lez v0, :cond_11

    .line 435
    .line 436
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 437
    .line 438
    .line 439
    move-result-object p1

    .line 440
    array-length v0, p1

    .line 441
    and-int/2addr v0, v1

    .line 442
    or-int/lit16 v0, v0, 0x80

    .line 443
    .line 444
    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 445
    .line 446
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 447
    .line 448
    .line 449
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 450
    .line 451
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 452
    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 456
    .line 457
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    and-int/lit8 p1, p1, 0x7f

    .line 462
    .line 463
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 464
    .line 465
    .line 466
    :goto_c
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 467
    .line 468
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 469
    .line 470
    .line 471
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->rangeExpression()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :cond_12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 484
    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    const-string v1, "enum value "

    .line 488
    .line 489
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v1, " "

    .line 496
    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    const-string p1, " no in defined child list"

    .line 512
    .line 513
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    throw p2

    .line 524
    :pswitch_8
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 525
    .line 526
    .line 527
    move-result-object p1

    .line 528
    new-instance v0, Lorg/bouncycastle/oer/BitBuilder;

    .line 529
    .line 530
    invoke-direct {v0}, Lorg/bouncycastle/oer/BitBuilder;-><init>()V

    .line 531
    .line 532
    .line 533
    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    .line 534
    .line 535
    if-eqz v1, :cond_13

    .line 536
    .line 537
    check-cast p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    .line 538
    .line 539
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    invoke-virtual {v0, v5}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getEnclosedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    goto :goto_d

    .line 555
    :cond_13
    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 556
    .line 557
    if-eqz v1, :cond_17

    .line 558
    .line 559
    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 560
    .line 561
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    and-int/lit16 v3, v1, 0x80

    .line 566
    .line 567
    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    and-int/lit8 v1, v1, 0x40

    .line 572
    .line 573
    invoke-virtual {v3, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    :goto_d
    const/16 v3, 0x3f

    .line 589
    .line 590
    if-gt v1, v3, :cond_14

    .line 591
    .line 592
    int-to-long v3, v1

    .line 593
    invoke-virtual {v0, v3, v4, v2}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    .line 594
    .line 595
    .line 596
    goto :goto_e

    .line 597
    :cond_14
    const-wide/16 v3, 0xff

    .line 598
    .line 599
    invoke-virtual {v0, v3, v4, v2}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/BitBuilder;->write7BitBytes(I)V

    .line 603
    .line 604
    .line 605
    :goto_e
    iget-object v2, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    .line 606
    .line 607
    if-eqz v2, :cond_16

    .line 608
    .line 609
    instance-of v2, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    .line 610
    .line 611
    if-eqz v2, :cond_15

    .line 612
    .line 613
    const-string v2, "AS"

    .line 614
    .line 615
    :goto_f
    invoke-virtual {p2, v2}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    goto :goto_10

    .line 623
    :cond_15
    instance-of v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 624
    .line 625
    if-eqz v2, :cond_16

    .line 626
    .line 627
    const-string v2, "CS"

    .line 628
    .line 629
    goto :goto_f

    .line 630
    :cond_16
    :goto_10
    iget-object v2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 631
    .line 632
    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/BitBuilder;->writeAndClear(Ljava/io/OutputStream;)I

    .line 633
    .line 634
    .line 635
    iget-object p2, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    .line 636
    .line 637
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object p2

    .line 641
    check-cast p2, Lorg/bouncycastle/oer/OERDefinition$Element;

    .line 642
    .line 643
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_a

    .line 647
    .line 648
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 649
    .line 650
    const-string p2, "only support tagged objects"

    .line 651
    .line 652
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    throw p1

    .line 656
    :pswitch_9
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    .line 657
    .line 658
    if-eqz v0, :cond_18

    .line 659
    .line 660
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    .line 661
    .line 662
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    .line 667
    .line 668
    .line 669
    move-result p1

    .line 670
    :goto_11
    int-to-long v1, p1

    .line 671
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeQuantity(J)V

    .line 672
    .line 673
    .line 674
    goto :goto_12

    .line 675
    :cond_18
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 676
    .line 677
    if-eqz v0, :cond_1a

    .line 678
    .line 679
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 680
    .line 681
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 686
    .line 687
    .line 688
    move-result p1

    .line 689
    goto :goto_11

    .line 690
    :goto_12
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    if-eqz p1, :cond_19

    .line 695
    .line 696
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object p1

    .line 700
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 701
    .line 702
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->getFirstChid()Lorg/bouncycastle/oer/OERDefinition$Element;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V

    .line 707
    .line 708
    .line 709
    goto :goto_12

    .line 710
    :cond_19
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 711
    .line 712
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 713
    .line 714
    .line 715
    invoke-virtual {p2, v3}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    goto/16 :goto_1a

    .line 723
    .line 724
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 725
    .line 726
    const-string p2, "encodable at for SEQ_OF is not a container"

    .line 727
    .line 728
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    throw p1

    .line 732
    :pswitch_a
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 733
    .line 734
    .line 735
    move-result-object p1

    .line 736
    iget-boolean v0, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->extensionsInDefinition:Z

    .line 737
    .line 738
    const/4 v1, 0x7

    .line 739
    if-eqz v0, :cond_1b

    .line 740
    .line 741
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->hasPopulatedExtension()Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    if-eqz v0, :cond_1c

    .line 746
    .line 747
    sget-object v0, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    .line 748
    .line 749
    aget v0, v0, v1

    .line 750
    .line 751
    goto :goto_13

    .line 752
    :cond_1b
    move v2, v1

    .line 753
    :cond_1c
    move v0, v5

    .line 754
    :goto_13
    move v4, v5

    .line 755
    :goto_14
    iget-object v6, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    .line 756
    .line 757
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 758
    .line 759
    .line 760
    move-result v6

    .line 761
    if-ge v4, v6, :cond_24

    .line 762
    .line 763
    iget-object v6, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    .line 764
    .line 765
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    check-cast v6, Lorg/bouncycastle/oer/OERDefinition$Element;

    .line 770
    .line 771
    if-gez v2, :cond_1d

    .line 772
    .line 773
    iget-object v2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 774
    .line 775
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 776
    .line 777
    .line 778
    move v2, v1

    .line 779
    move v0, v5

    .line 780
    :cond_1d
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 781
    .line 782
    .line 783
    move-result-object v7

    .line 784
    iget-boolean v8, v6, Lorg/bouncycastle/oer/OERDefinition$Element;->explicit:Z

    .line 785
    .line 786
    if-eqz v8, :cond_1f

    .line 787
    .line 788
    instance-of v9, v7, Lorg/bouncycastle/oer/OEROptional;

    .line 789
    .line 790
    if-nez v9, :cond_1e

    .line 791
    .line 792
    goto :goto_15

    .line 793
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 794
    .line 795
    const-string p2, "absent sequence element that is required by oer definition"

    .line 796
    .line 797
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    throw p1

    .line 801
    :cond_1f
    :goto_15
    if-nez v8, :cond_23

    .line 802
    .line 803
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 804
    .line 805
    .line 806
    move-result-object v8

    .line 807
    invoke-virtual {v6}, Lorg/bouncycastle/oer/OERDefinition$Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 808
    .line 809
    .line 810
    move-result-object v9

    .line 811
    if-eqz v9, :cond_21

    .line 812
    .line 813
    instance-of v7, v8, Lorg/bouncycastle/oer/OEROptional;

    .line 814
    .line 815
    if-eqz v7, :cond_20

    .line 816
    .line 817
    check-cast v8, Lorg/bouncycastle/oer/OEROptional;

    .line 818
    .line 819
    invoke-virtual {v8}, Lorg/bouncycastle/oer/OEROptional;->isDefined()Z

    .line 820
    .line 821
    .line 822
    move-result v7

    .line 823
    if-eqz v7, :cond_22

    .line 824
    .line 825
    invoke-virtual {v8}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 826
    .line 827
    .line 828
    move-result-object v7

    .line 829
    iget-object v6, v6, Lorg/bouncycastle/oer/OERDefinition$Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 830
    .line 831
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    move-result v6

    .line 835
    if-nez v6, :cond_22

    .line 836
    .line 837
    sget-object v6, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    .line 838
    .line 839
    aget v6, v6, v2

    .line 840
    .line 841
    :goto_16
    or-int/2addr v0, v6

    .line 842
    goto :goto_17

    .line 843
    :cond_20
    invoke-virtual {v6}, Lorg/bouncycastle/oer/OERDefinition$Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 844
    .line 845
    .line 846
    move-result-object v6

    .line 847
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    move-result v6

    .line 851
    if-nez v6, :cond_22

    .line 852
    .line 853
    sget-object v6, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    .line 854
    .line 855
    aget v6, v6, v2

    .line 856
    .line 857
    goto :goto_16

    .line 858
    :cond_21
    sget-object v6, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    .line 859
    .line 860
    if-eq v7, v6, :cond_22

    .line 861
    .line 862
    sget-object v6, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    .line 863
    .line 864
    aget v6, v6, v2

    .line 865
    .line 866
    goto :goto_16

    .line 867
    :cond_22
    :goto_17
    add-int/lit8 v2, v2, -0x1

    .line 868
    .line 869
    :cond_23
    add-int/lit8 v4, v4, 0x1

    .line 870
    .line 871
    goto :goto_14

    .line 872
    :cond_24
    if-eq v2, v1, :cond_25

    .line 873
    .line 874
    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    .line 875
    .line 876
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 877
    .line 878
    .line 879
    :cond_25
    :goto_18
    iget-object v0, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    .line 880
    .line 881
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 882
    .line 883
    .line 884
    move-result v0

    .line 885
    if-ge v5, v0, :cond_19

    .line 886
    .line 887
    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    iget-object v1, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    .line 892
    .line 893
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    check-cast v1, Lorg/bouncycastle/oer/OERDefinition$Element;

    .line 898
    .line 899
    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    if-eqz v2, :cond_26

    .line 904
    .line 905
    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 906
    .line 907
    .line 908
    move-result-object v2

    .line 909
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 910
    .line 911
    .line 912
    move-result v2

    .line 913
    if-eqz v2, :cond_26

    .line 914
    .line 915
    goto :goto_19

    .line 916
    :cond_26
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V

    .line 917
    .line 918
    .line 919
    :goto_19
    add-int/lit8 v5, v5, 0x1

    .line 920
    .line 921
    goto :goto_18

    .line 922
    :goto_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
