.class public Lorg/apache/commons/codec/digest/Sha2Crypt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ROUNDS_DEFAULT:I = 0x1388

.field private static final ROUNDS_MAX:I = 0x3b9ac9ff

.field private static final ROUNDS_MIN:I = 0x3e8

.field private static final ROUNDS_PREFIX:Ljava/lang/String; = "rounds="

.field private static final SALT_PATTERN:Ljava/util/regex/Pattern;

.field private static final SHA256_BLOCKSIZE:I = 0x20

.field static final SHA256_PREFIX:Ljava/lang/String; = "$5$"

.field private static final SHA512_BLOCKSIZE:I = 0x40

.field static final SHA512_PREFIX:Ljava/lang/String; = "$6$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\$([56])\\$(rounds=(\\d+)\\$)?([\\.\\/a-zA-Z0-9]{1,16}).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/digest/Sha2Crypt;->SALT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sha256Crypt([B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha256Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    const-string v0, "$5$"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x20

    const-string v2, "SHA-256"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256Crypt([BLjava/lang/String;Ljava/util/Random;)Ljava/lang/String;
    .locals 2

    .line 3
    const-string v0, "$5$"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v1, p2}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 p2, 0x20

    const-string v1, "SHA-256"

    invoke-static {p0, p1, v0, p2, v1}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    array-length v3, v0

    if-eqz v1, :cond_10

    sget-object v4, Lorg/apache/commons/codec/digest/Sha2Crypt;->SALT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const v8, 0x3b9ac9ff

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/16 v8, 0x3e8

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/16 v5, 0x1388

    move v8, v7

    :goto_0
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v11, v10

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v12, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v13, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    array-length v14, v0

    :goto_1
    if-le v14, v2, :cond_1

    invoke-virtual {v12, v13, v7, v2}, Ljava/security/MessageDigest;->update([BII)V

    sub-int/2addr v14, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v12, v13, v7, v14}, Ljava/security/MessageDigest;->update([BII)V

    array-length v14, v0

    :goto_2
    if-lez v14, :cond_3

    and-int/lit8 v15, v14, 0x1

    if-eqz v15, :cond_2

    invoke-virtual {v12, v13, v7, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_3

    :cond_2
    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->update([B)V

    :goto_3
    shr-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    const/4 v15, 0x1

    :goto_4
    if-gt v15, v3, :cond_4

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    new-array v15, v3, [B

    move v1, v7

    :goto_5
    sub-int v6, v3, v2

    if-ge v1, v6, :cond_5

    invoke-static {v14, v7, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    goto :goto_5

    :cond_5
    sub-int v6, v3, v1

    invoke-static {v14, v7, v15, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const/4 v6, 0x1

    :goto_6
    aget-byte v14, v13, v7

    and-int/lit16 v14, v14, 0xff

    const/16 v16, 0x10

    add-int/lit8 v14, v14, 0x10

    if-gt v6, v14, :cond_6

    invoke-virtual {v1, v10}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    new-array v14, v11, [B

    move v9, v7

    move-object/from16 v18, v12

    :goto_7
    sub-int v12, v11, v2

    if-ge v9, v12, :cond_7

    invoke-static {v6, v7, v14, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v2

    goto :goto_7

    :cond_7
    sub-int v12, v11, v9

    invoke-static {v6, v7, v14, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v7

    move-object/from16 v12, v18

    :goto_8
    add-int/lit8 v7, v5, -0x1

    if-gt v9, v7, :cond_c

    invoke-static/range {p4 .. p4}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    and-int/lit8 v7, v9, 0x1

    move-object/from16 v19, v10

    const/4 v10, 0x0

    if-eqz v7, :cond_8

    invoke-virtual {v12, v15, v10, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_9

    :cond_8
    invoke-virtual {v12, v13, v10, v2}, Ljava/security/MessageDigest;->update([BII)V

    :goto_9
    rem-int/lit8 v18, v9, 0x3

    if-eqz v18, :cond_9

    invoke-virtual {v12, v14, v10, v11}, Ljava/security/MessageDigest;->update([BII)V

    :cond_9
    rem-int/lit8 v18, v9, 0x7

    if-eqz v18, :cond_a

    invoke-virtual {v12, v15, v10, v3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v12, v13, v10, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_a

    :cond_b
    invoke-virtual {v12, v15, v10, v3}, Ljava/security/MessageDigest;->update([BII)V

    :goto_a
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v19

    const/4 v7, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v19, v10

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "$"

    if-eqz v8, :cond_d

    const-string v8, "rounds="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x18

    const/16 v10, 0x17

    const/16 v11, 0xd

    const/16 v20, 0x16

    const/16 v21, 0xc

    const/16 v22, 0xb

    const/16 v23, 0x15

    const/16 v24, 0x14

    const/16 v25, 0xa

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/16 v26, 0x7

    if-ne v2, v4, :cond_e

    const/4 v2, 0x0

    aget-byte v4, v13, v2

    aget-byte v2, v13, v25

    aget-byte v7, v13, v24

    const/4 v8, 0x4

    invoke-static {v4, v2, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    aget-byte v2, v13, v23

    const/4 v4, 0x1

    aget-byte v4, v13, v4

    aget-byte v7, v13, v22

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    aget-byte v2, v13, v21

    aget-byte v4, v13, v20

    aget-byte v5, v13, v5

    invoke-static {v2, v4, v5, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v2, 0x3

    aget-byte v4, v13, v2

    aget-byte v2, v13, v11

    aget-byte v5, v13, v10

    invoke-static {v4, v2, v5, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    aget-byte v2, v13, v9

    aget-byte v4, v13, v8

    const/16 v5, 0xe

    aget-byte v5, v13, v5

    invoke-static {v2, v4, v5, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0xf

    aget-byte v2, v13, v2

    const/16 v4, 0x19

    aget-byte v4, v13, v4

    const/4 v5, 0x5

    aget-byte v5, v13, v5

    invoke-static {v2, v4, v5, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v2, 0x6

    aget-byte v2, v13, v2

    aget-byte v4, v13, v16

    const/16 v5, 0x1a

    aget-byte v5, v13, v5

    invoke-static {v2, v4, v5, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x1b

    aget-byte v2, v13, v2

    aget-byte v4, v13, v26

    const/16 v5, 0x11

    aget-byte v5, v13, v5

    invoke-static {v2, v4, v5, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x12

    aget-byte v2, v13, v2

    const/16 v4, 0x1c

    aget-byte v4, v13, v4

    const/16 v5, 0x8

    aget-byte v5, v13, v5

    invoke-static {v2, v4, v5, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x9

    aget-byte v2, v13, v2

    const/16 v4, 0x13

    aget-byte v4, v13, v4

    const/16 v5, 0x1d

    aget-byte v5, v13, v5

    invoke-static {v2, v4, v5, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x1f

    aget-byte v2, v13, v2

    const/16 v4, 0x1e

    aget-byte v4, v13, v4

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-static {v7, v2, v4, v5, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    move v4, v7

    goto/16 :goto_b

    :cond_e
    const/4 v7, 0x0

    const/4 v8, 0x4

    aget-byte v2, v13, v7

    aget-byte v7, v13, v23

    const/16 v17, 0x2a

    aget-byte v11, v13, v17

    invoke-static {v2, v7, v11, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    aget-byte v2, v13, v20

    const/16 v7, 0x2b

    aget-byte v7, v13, v7

    const/4 v11, 0x1

    aget-byte v11, v13, v11

    invoke-static {v2, v7, v11, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x2c

    aget-byte v2, v13, v2

    aget-byte v7, v13, v5

    aget-byte v10, v13, v10

    invoke-static {v2, v7, v10, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v2, 0x3

    aget-byte v2, v13, v2

    aget-byte v7, v13, v9

    const/16 v9, 0x2d

    aget-byte v9, v13, v9

    invoke-static {v2, v7, v9, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x19

    aget-byte v2, v13, v2

    const/16 v7, 0x2e

    aget-byte v7, v13, v7

    aget-byte v9, v13, v8

    invoke-static {v2, v7, v9, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x2f

    aget-byte v2, v13, v2

    const/4 v7, 0x5

    aget-byte v7, v13, v7

    const/16 v9, 0x1a

    aget-byte v9, v13, v9

    invoke-static {v2, v7, v9, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/4 v2, 0x6

    aget-byte v2, v13, v2

    const/16 v7, 0x1b

    aget-byte v7, v13, v7

    const/16 v9, 0x30

    aget-byte v9, v13, v9

    invoke-static {v2, v7, v9, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x1c

    aget-byte v2, v13, v2

    const/16 v7, 0x31

    aget-byte v7, v13, v7

    aget-byte v9, v13, v26

    invoke-static {v2, v7, v9, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x32

    aget-byte v2, v13, v2

    const/16 v7, 0x8

    aget-byte v7, v13, v7

    const/16 v9, 0x1d

    aget-byte v9, v13, v9

    invoke-static {v2, v7, v9, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x9

    aget-byte v2, v13, v2

    const/16 v7, 0x1e

    aget-byte v7, v13, v7

    const/16 v9, 0x33

    aget-byte v9, v13, v9

    invoke-static {v2, v7, v9, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x1f

    aget-byte v2, v13, v2

    const/16 v7, 0x34

    aget-byte v7, v13, v7

    aget-byte v9, v13, v25

    invoke-static {v2, v7, v9, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x35

    aget-byte v2, v13, v2

    aget-byte v7, v13, v22

    aget-byte v4, v13, v4

    invoke-static {v2, v7, v4, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    aget-byte v2, v13, v21

    const/16 v4, 0x21

    aget-byte v4, v13, v4

    const/16 v7, 0x36

    aget-byte v7, v13, v7

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x22

    aget-byte v2, v13, v2

    const/16 v4, 0x37

    aget-byte v4, v13, v4

    const/16 v7, 0xd

    aget-byte v7, v13, v7

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x38

    aget-byte v2, v13, v2

    const/16 v4, 0xe

    aget-byte v4, v13, v4

    const/16 v7, 0x23

    aget-byte v7, v13, v7

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0xf

    aget-byte v2, v13, v2

    const/16 v4, 0x24

    aget-byte v4, v13, v4

    const/16 v7, 0x39

    aget-byte v7, v13, v7

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x25

    aget-byte v2, v13, v2

    const/16 v4, 0x3a

    aget-byte v4, v13, v4

    aget-byte v7, v13, v16

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x3b

    aget-byte v2, v13, v2

    const/16 v4, 0x11

    aget-byte v4, v13, v4

    const/16 v7, 0x26

    aget-byte v7, v13, v7

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x12

    aget-byte v2, v13, v2

    const/16 v4, 0x27

    aget-byte v4, v13, v4

    const/16 v7, 0x3c

    aget-byte v7, v13, v7

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x28

    aget-byte v2, v13, v2

    const/16 v4, 0x3d

    aget-byte v4, v13, v4

    const/16 v7, 0x13

    aget-byte v7, v13, v7

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x3e

    aget-byte v2, v13, v2

    aget-byte v4, v13, v24

    const/16 v7, 0x29

    aget-byte v7, v13, v7

    invoke-static {v2, v4, v7, v8, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    const/16 v2, 0x3f

    aget-byte v2, v13, v2

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v5, v3}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    :goto_b
    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v15, v4}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v14, v4}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v12}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid salt value: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Salt must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sha512Crypt([B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha512Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    const-string v0, "$6$"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x40

    const-string v2, "SHA-512"

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512Crypt([BLjava/lang/String;Ljava/util/Random;)Ljava/lang/String;
    .locals 2

    .line 3
    const-string v0, "$6$"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v1, p2}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 p2, 0x40

    const-string v1, "SHA-512"

    invoke-static {p0, p1, v0, p2, v1}, Lorg/apache/commons/codec/digest/Sha2Crypt;->sha2Crypt([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
