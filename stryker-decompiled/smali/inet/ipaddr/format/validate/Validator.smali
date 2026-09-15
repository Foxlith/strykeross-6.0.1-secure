.class public Linet/ipaddr/format/validate/Validator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/validate/HostIdentifierStringValidator;


# static fields
.field private static final BASE_85_POWERS:[Ljava/math/BigInteger;

.field private static final DEFAULT_EMPTY_HOST:Linet/ipaddr/format/validate/ParsedHost;

.field private static final DEFAULT_PREFIX_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

.field private static final DEFAULT_UNC_OPTS:Linet/ipaddr/IPAddressStringParameters;

.field private static final EMPTY_INDICES:[I

.field private static final IPV4_BINARY_SINGLE_SEGMENT_DIGIT_COUNT:I = 0x20

.field private static final IPV4_SINGLE_SEGMENT_OCTAL_DIGIT_COUNT:I = 0xb

.field private static final IPV6_BASE85_SINGLE_SEGMENT_DIGIT_COUNT:I = 0x14

.field private static final IPV6_BINARY_SINGLE_SEGMENT_DIGIT_COUNT:I = 0x80

.field private static final IPV6_SINGLE_SEGMENT_DIGIT_COUNT:I = 0x20

.field private static final IPvFUTURE_UPPERCASE:C

.field private static final LONG_BINARY_DIGITS:I = 0x40

.field private static final LONG_HEX_DIGITS:I = 0x10

.field private static final LOOPBACK_CACHE:Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;

.field private static final LOW_BITS_MASK:Ljava/math/BigInteger;

.field private static final MAC_DOUBLE_SEGMENT_DIGIT_COUNT:I = 0x6

.field private static final MAC_EXTENDED_DOUBLE_SEGMENT_DIGIT_COUNT:I = 0xa

.field private static final MAC_EXTENDED_SINGLE_SEGMENT_DIGIT_COUNT:I = 0x10

.field private static final MAC_MAX_QUINTUPLE:J = 0xffffffffffL

.field private static final MAC_MAX_TRIPLE:J = 0xffffffL

.field private static final MAC_SINGLE_SEGMENT_DIGIT_COUNT:I = 0xc

.field static final MASK_CACHE:[[Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;

.field private static final MAX_HOST_LENGTH:I = 0xfd

.field private static final MAX_HOST_SEGMENTS:I = 0x7f

.field private static final MAX_IPv4_STRING_LEN:[[I

.field private static final MAX_LABEL_LENGTH:I = 0x3f

.field private static final MAX_VALUES:[J

.field private static final MAX_WILDCARDS:I = 0x13

.field private static final PREFIX_CACHE:[Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

.field private static final REVERSE_DNS_IPV4_OPTS:Linet/ipaddr/IPAddressStringParameters;

.field private static final REVERSE_DNS_IPV6_OPTS:Linet/ipaddr/IPAddressStringParameters;

.field public static final VALIDATOR:Linet/ipaddr/format/validate/HostIdentifierStringValidator;

.field private static final chars:[I

.field private static final extendedChars:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0x80

    new-array v1, v0, [I

    sput-object v1, Linet/ipaddr/format/validate/Validator;->extendedChars:[I

    sget-object v1, Linet/ipaddr/format/large/IPAddressLargeDivision;->EXTENDED_DIGITS:[C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    sget-object v4, Linet/ipaddr/format/validate/Validator;->extendedChars:[I

    aget-char v5, v1, v3

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    sput-object v0, Linet/ipaddr/format/validate/Validator;->chars:[I

    const/16 v1, 0x30

    move v3, v2

    :goto_1
    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    aput v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v5

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x61

    const/16 v6, 0x41

    :goto_2
    const/16 v7, 0x1a

    if-ge v3, v7, :cond_2

    aput v3, v0, v6

    aput v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v5

    int-to-char v1, v1

    add-int/2addr v6, v5

    int-to-char v6, v6

    goto :goto_2

    :cond_2
    const/16 v0, 0x76

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    sput-char v0, Linet/ipaddr/format/validate/Validator;->IPvFUTURE_UPPERCASE:C

    new-array v0, v2, [I

    sput-object v0, Linet/ipaddr/format/validate/Validator;->EMPTY_INDICES:[I

    const/16 v1, 0x81

    new-array v1, v1, [Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    sput-object v1, Linet/ipaddr/format/validate/Validator;->PREFIX_CACHE:[Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    const/4 v1, 0x3

    new-array v3, v1, [[Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;

    sput-object v3, Linet/ipaddr/format/validate/Validator;->MASK_CACHE:[[Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;

    new-instance v3, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;

    sget-object v6, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    invoke-direct {v3, v6}, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;-><init>(Linet/ipaddr/IPAddressStringParameters;)V

    sput-object v3, Linet/ipaddr/format/validate/Validator;->LOOPBACK_CACHE:Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;

    new-instance v3, Linet/ipaddr/format/validate/ParsedHost;

    const/4 v6, 0x0

    sget-object v7, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    const-string v8, ""

    invoke-direct {v3, v8, v0, v6, v7}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;[I[ZLinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V

    sput-object v3, Linet/ipaddr/format/validate/Validator;->DEFAULT_EMPTY_HOST:Linet/ipaddr/format/validate/ParsedHost;

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/validate/Validator;->DEFAULT_PREFIX_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    new-instance v0, Linet/ipaddr/format/validate/Validator;

    invoke-direct {v0}, Linet/ipaddr/format/validate/Validator;-><init>()V

    sput-object v0, Linet/ipaddr/format/validate/Validator;->VALIDATOR:Linet/ipaddr/format/validate/HostIdentifierStringValidator;

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv4(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowEmpty(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowMask(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefixOnly(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefix(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/validate/Validator;->DEFAULT_UNC_OPTS:Linet/ipaddr/IPAddressStringParameters;

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv6(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowEmpty(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowMask(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefixOnly(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefix(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->allow_inet_aton(Z)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/validate/Validator;->REVERSE_DNS_IPV4_OPTS:Linet/ipaddr/IPAddressStringParameters;

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowIPv4(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowEmpty(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowMask(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefixOnly(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowPrefix(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowMixed(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->allowZone(Z)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->getParentBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/validate/Validator;->REVERSE_DNS_IPV6_OPTS:Linet/ipaddr/IPAddressStringParameters;

    new-array v0, v4, [Ljava/math/BigInteger;

    sput-object v0, Linet/ipaddr/format/validate/Validator;->BASE_85_POWERS:[Ljava/math/BigInteger;

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Linet/ipaddr/format/validate/Validator;->LOW_BITS_MASK:Ljava/math/BigInteger;

    const/4 v3, 0x5

    new-array v6, v3, [J

    fill-array-data v6, :array_0

    sput-object v6, Linet/ipaddr/format/validate/Validator;->MAX_VALUES:[J

    const/16 v6, 0x9

    new-array v6, v6, [[I

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/16 v9, 0xb

    filled-new-array {v1, v7, v8, v9}, [I

    move-result-object v10

    aput-object v10, v6, v2

    const/16 v10, 0x18

    const/16 v11, 0x20

    const/16 v12, 0x10

    filled-new-array {v8, v12, v10, v11}, [I

    move-result-object v10

    aput-object v10, v6, v5

    new-array v10, v2, [I

    const/4 v11, 0x2

    aput-object v10, v6, v11

    new-array v10, v2, [I

    aput-object v10, v6, v1

    filled-new-array {v1, v7, v8, v9}, [I

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v6, v10

    filled-new-array {v1, v3, v8, v4}, [I

    move-result-object v1

    aput-object v1, v6, v3

    new-array v1, v2, [I

    aput-object v1, v6, v7

    const/4 v1, 0x7

    new-array v3, v2, [I

    aput-object v3, v6, v1

    filled-new-array {v11, v10, v7, v8}, [I

    move-result-object v1

    aput-object v1, v6, v8

    sput-object v6, Linet/ipaddr/format/validate/Validator;->MAX_IPv4_STRING_LEN:[[I

    const-wide/16 v3, 0x55

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v3, v0, v2

    :goto_3
    sget-object v0, Linet/ipaddr/format/validate/Validator;->BASE_85_POWERS:[Ljava/math/BigInteger;

    array-length v2, v0

    if-ge v5, v2, :cond_3

    add-int/lit8 v2, v5, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    return-void

    :array_0
    .array-data 8
        0x0
        0xff
        0xffff
        0xffffff
        0xffffffffL
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assignAttributes(IILinet/ipaddr/format/validate/AddressParseData;II)V
    .locals 14

    .line 1
    const/4 v2, 0x1

    const/4 v4, 0x6

    const/4 v6, 0x7

    const/16 v8, 0x9

    const/16 v10, 0xe

    const/16 v12, 0xf

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v3, p4

    move v5, p0

    move v7, p1

    move/from16 v9, p4

    move v11, p0

    move v13, p1

    invoke-virtual/range {v0 .. v13}, Linet/ipaddr/format/validate/AddressParseData;->setIndex(IIIIIIIIIIIII)V

    return-void
.end method

.method private static assignAttributes(IILinet/ipaddr/format/validate/AddressParseData;III)V
    .locals 16

    .line 2
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v8, 0x7

    const/16 v10, 0x9

    const/16 v12, 0xe

    const/16 v14, 0xf

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v3, p4

    move/from16 v5, p5

    move/from16 v7, p0

    move/from16 v9, p1

    move/from16 v11, p5

    move/from16 v13, p0

    move/from16 v15, p1

    invoke-virtual/range {v0 .. v15}, Linet/ipaddr/format/validate/AddressParseData;->setIndexFlags(IIIIIIIIIIIIIII)V

    return-void
.end method

.method private static assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJI)V
    .locals 22

    .line 1
    move/from16 v7, p0

    move/from16 v9, p1

    move/from16 v5, p2

    move/from16 v13, p3

    move/from16 v15, p4

    move/from16 v11, p5

    move-object/from16 v0, p6

    move/from16 v1, p7

    move-wide/from16 v17, p8

    move-wide/from16 v20, p10

    move/from16 v3, p12

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v8, 0x7

    const/16 v10, 0x9

    const/16 v12, 0xe

    const/16 v14, 0xf

    const/16 v16, 0x2

    const/16 v19, 0xa

    invoke-virtual/range {v0 .. v21}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(IIIIIIIIIIIIIIIIJIJ)V

    return-void
.end method

.method private static assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJII)V
    .locals 24

    .line 2
    move/from16 v7, p0

    move/from16 v9, p1

    move/from16 v5, p2

    move/from16 v15, p3

    move/from16 v17, p4

    move/from16 v13, p5

    move-object/from16 v0, p6

    move/from16 v1, p7

    move-wide/from16 v19, p8

    move-wide/from16 v22, p10

    move/from16 v3, p12

    move/from16 v11, p13

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v8, 0x7

    const/16 v10, 0x8

    const/16 v12, 0x9

    const/16 v14, 0xe

    const/16 v16, 0xf

    const/16 v18, 0x2

    const/16 v21, 0xa

    invoke-virtual/range {v0 .. v23}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(IIIIIIIIIIIIIIIIIIJIJ)V

    return-void
.end method

.method private static assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJJJI)V
    .locals 28

    .line 3
    move/from16 v7, p0

    move/from16 v9, p1

    move/from16 v5, p2

    move/from16 v13, p3

    move/from16 v15, p4

    move/from16 v11, p5

    move-object/from16 v0, p6

    move/from16 v1, p7

    move-wide/from16 v17, p8

    move-wide/from16 v20, p10

    move-wide/from16 v23, p12

    move-wide/from16 v26, p14

    move/from16 v3, p16

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v8, 0x7

    const/16 v10, 0x9

    const/16 v12, 0xe

    const/16 v14, 0xf

    const/16 v16, 0x2

    const/16 v19, 0x4

    const/16 v22, 0xa

    const/16 v25, 0xc

    invoke-virtual/range {v0 .. v27}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(IIIIIIIIIIIIIIIIJIJIJIJ)V

    return-void
.end method

.method private static assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJJJII)V
    .locals 30

    .line 4
    move/from16 v7, p0

    move/from16 v9, p1

    move/from16 v5, p2

    move/from16 v15, p3

    move/from16 v17, p4

    move/from16 v13, p5

    move-object/from16 v0, p6

    move/from16 v1, p7

    move-wide/from16 v19, p8

    move-wide/from16 v22, p10

    move-wide/from16 v25, p12

    move-wide/from16 v28, p14

    move/from16 v3, p16

    move/from16 v11, p17

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v8, 0x7

    const/16 v10, 0x8

    const/16 v12, 0x9

    const/16 v14, 0xe

    const/16 v16, 0xf

    const/16 v18, 0x2

    const/16 v21, 0x4

    const/16 v24, 0xa

    const/16 v27, 0xc

    invoke-virtual/range {v0 .. v29}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(IIIIIIIIIIIIIIIIIIJIJIJIJ)V

    return-void
.end method

.method private static assignAttributesValuesFlags(IIILinet/ipaddr/format/validate/AddressParseData;IJI)V
    .locals 22

    .line 5
    move/from16 v9, p0

    move/from16 v11, p0

    move/from16 v15, p1

    move/from16 v13, p1

    move/from16 v5, p2

    move/from16 v7, p2

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-wide/from16 v17, p5

    move-wide/from16 v20, p5

    move/from16 v3, p7

    const/4 v2, 0x0

    const/16 v4, 0x9

    const/4 v6, 0x1

    const/16 v8, 0xe

    const/4 v10, 0x6

    const/16 v12, 0xf

    const/4 v14, 0x7

    const/16 v16, 0x2

    const/16 v19, 0xa

    invoke-virtual/range {v0 .. v21}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(IIIIIIIIIIIIIIIIJIJ)V

    return-void
.end method

.method private static assignAttributesValuesFlags(IIILinet/ipaddr/format/validate/AddressParseData;IJJI)V
    .locals 28

    .line 6
    move/from16 v7, p0

    move/from16 v13, p0

    move/from16 v9, p1

    move/from16 v15, p1

    move/from16 v5, p2

    move/from16 v11, p2

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-wide/from16 v17, p5

    move-wide/from16 v23, p5

    move-wide/from16 v20, p7

    move-wide/from16 v26, p7

    move/from16 v3, p9

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v8, 0x7

    const/16 v10, 0x9

    const/16 v12, 0xe

    const/16 v14, 0xf

    const/16 v16, 0x2

    const/16 v19, 0x4

    const/16 v22, 0xa

    const/16 v25, 0xc

    invoke-virtual/range {v0 .. v27}, Linet/ipaddr/format/validate/AddressParseData;->setIndexValuesFlags(IIIIIIIIIIIIIIIIJIJIJIJ)V

    return-void
.end method

.method private static assignSingleWildcard16(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V
    .locals 13

    move/from16 v4, p4

    sub-int v0, v4, p5

    move-object v1, p2

    move/from16 v3, p3

    move-object/from16 v2, p9

    invoke-static {p2, v3, v4, v0, v2}, Linet/ipaddr/format/validate/Validator;->checkSingleWildcard(Ljava/lang/CharSequence;IIILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    shl-int/lit8 v0, p5, 0x2

    shl-long v8, p0, v0

    const-wide/16 v1, -0x1

    shl-long v0, v1, v0

    not-long v0, v0

    or-long v10, v8, v0

    const/high16 v12, 0x20000

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p8

    move/from16 v5, p8

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v12}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJI)V

    return-void
.end method

.method private static cacheBits(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Linet/ipaddr/format/validate/ParsedAddressGrouping;->cache(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static checkSegmentMaxValues(Ljava/lang/CharSequence;Linet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;JJJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const/high16 v6, 0x20000

    invoke-virtual {v1, v2, v6}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x7

    const/4 v9, 0x0

    const-string v10, "ipaddress.error.ipv4.segment.too.large"

    const-string v11, "ipaddress.error.segment.too.long"

    const/16 v12, 0xa

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    invoke-virtual {v1, v2, v6}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v13

    cmp-long v6, v13, v4

    if-gtz v6, :cond_2

    invoke-virtual {v1, v2, v12}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v13

    cmp-long v6, v13, v4

    if-lez v6, :cond_0

    invoke-virtual {v1, v2, v12, v4, v5}, Linet/ipaddr/format/validate/AddressParseData;->setValue(IIJ)V

    :cond_0
    iget-boolean v3, v3, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    if-nez v3, :cond_6

    invoke-virtual {v1, v2, v9}, Linet/ipaddr/format/validate/AddressParseData;->getRadix(II)I

    move-result v3

    invoke-virtual {v1, v2, v8}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v4

    invoke-virtual {v1, v2, v7}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v1

    sub-int/2addr v4, v1

    invoke-static {v3}, Linet/ipaddr/format/validate/Validator;->getStringPrefixCharCount(I)I

    move-result v1

    sub-int/2addr v4, v1

    int-to-long v1, v4

    cmp-long v1, v1, p6

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, p0, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, p0, v10}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v1, v2, v12}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v12

    cmp-long v4, v12, v4

    if-gtz v4, :cond_7

    iget-boolean v3, v3, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    if-nez v3, :cond_6

    invoke-virtual {v1, v2, v9}, Linet/ipaddr/format/validate/AddressParseData;->getRadix(II)I

    move-result v3

    invoke-virtual {v1, v2, v8}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v4

    const/16 v5, 0xf

    invoke-virtual {v1, v2, v5}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v5

    invoke-virtual {v1, v2, v7}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v6

    sub-int v6, v4, v6

    invoke-static {v3}, Linet/ipaddr/format/validate/Validator;->getStringPrefixCharCount(I)I

    move-result v3

    sub-int/2addr v6, v3

    int-to-long v6, v6

    cmp-long v3, v6, p6

    if-gtz v3, :cond_5

    if-eq v4, v5, :cond_6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Linet/ipaddr/format/validate/AddressParseData;->getRadix(II)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v4}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v1

    sub-int/2addr v5, v1

    invoke-static {v3}, Linet/ipaddr/format/validate/Validator;->getStringPrefixCharCount(I)I

    move-result v1

    sub-int/2addr v5, v1

    int-to-long v1, v5

    cmp-long v1, v1, p8

    if-gtz v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, p0, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, p0, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_0
    return-void

    :cond_7
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, p0, v10}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1
.end method

.method private static checkSegments(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/format/validate/IPAddressParseData;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v4

    invoke-virtual {v4}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_f

    rsub-int/lit8 v4, v3, 0x4

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v7

    invoke-virtual {v2}, Linet/ipaddr/format/validate/AddressParseData;->hasWildcard()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    iget-boolean v8, v7, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    if-eqz v8, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    if-lez v4, :cond_3

    if-le v3, v6, :cond_3

    iget-boolean v10, v7, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    if-eqz v10, :cond_1

    invoke-virtual {v1, v6}, Linet/ipaddr/format/validate/IPAddressParseData;->set_inet_aton_joined(Z)V

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Linet/ipaddr/AddressStringException;

    const-string v2, "ipaddress.error.ipv4.too.few.segments"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iget-boolean v8, v7, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    xor-int/2addr v8, v6

    if-lez v4, :cond_4

    iget-boolean v7, v7, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_2

    :cond_4
    move v7, v9

    :goto_2
    move v10, v9

    :goto_3
    if-ge v10, v3, :cond_13

    const/16 v11, 0xa

    if-eqz v7, :cond_5

    add-int/lit8 v12, v3, -0x1

    if-ne v10, v12, :cond_5

    rsub-int/lit8 v12, v3, 0x5

    invoke-static {v12}, Linet/ipaddr/format/validate/Validator;->getMaxIPv4Value(I)J

    move-result-wide v12

    invoke-virtual {v2, v10}, Linet/ipaddr/format/validate/AddressParseData;->isInferredUpperBoundary(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v1, v10, v11, v12, v13}, Linet/ipaddr/format/validate/AddressParseData;->setValue(IIJ)V

    goto/16 :goto_4

    :cond_5
    const-wide/16 v12, 0xff

    :cond_6
    const/high16 v14, 0x20000

    invoke-virtual {v1, v10, v14}, Linet/ipaddr/format/validate/AddressParseData;->getFlag(II)Z

    move-result v14

    const/4 v15, 0x7

    const-string v5, "ipaddress.error.ipv4.segment.too.large"

    const-string v6, "ipaddress.error.segment.too.long"

    if-eqz v14, :cond_a

    const/4 v14, 0x2

    invoke-virtual {v1, v10, v14}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v16

    cmp-long v14, v16, v12

    if-gtz v14, :cond_9

    invoke-virtual {v1, v10, v11}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v16

    cmp-long v5, v16, v12

    if-lez v5, :cond_7

    invoke-virtual {v1, v10, v11, v12, v13}, Linet/ipaddr/format/validate/AddressParseData;->setValue(IIJ)V

    :cond_7
    if-eqz v8, :cond_d

    invoke-virtual {v2, v10, v9}, Linet/ipaddr/format/validate/AddressParseData;->getRadix(II)I

    move-result v5

    invoke-static {v4, v5}, Linet/ipaddr/format/validate/Validator;->getMaxIPv4StringLength(II)I

    move-result v11

    invoke-virtual {v1, v10, v15}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v1, v10, v13}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v14

    sub-int/2addr v12, v14

    invoke-static {v5}, Linet/ipaddr/format/validate/Validator;->getStringPrefixCharCount(I)I

    move-result v5

    sub-int/2addr v12, v5

    if-gt v12, v11, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, v0, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, v0, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-virtual {v1, v10, v11}, Linet/ipaddr/format/validate/AddressParseData;->getValue(II)J

    move-result-wide v16

    cmp-long v11, v16, v12

    if-gtz v11, :cond_e

    if-eqz v8, :cond_d

    invoke-virtual {v2, v10, v9}, Linet/ipaddr/format/validate/AddressParseData;->getRadix(II)I

    move-result v5

    invoke-static {v4, v5}, Linet/ipaddr/format/validate/Validator;->getMaxIPv4StringLength(II)I

    move-result v11

    invoke-virtual {v1, v10, v15}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v12

    const/16 v13, 0xf

    invoke-virtual {v1, v10, v13}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v1, v10, v14}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v15

    sub-int v14, v12, v15

    invoke-static {v5}, Linet/ipaddr/format/validate/Validator;->getStringPrefixCharCount(I)I

    move-result v5

    sub-int/2addr v14, v5

    if-gt v14, v11, :cond_c

    if-eq v12, v13, :cond_d

    const/16 v5, 0x8

    invoke-virtual {v1, v10, v5}, Linet/ipaddr/format/validate/AddressParseData;->getRadix(II)I

    move-result v11

    invoke-static {v4, v11}, Linet/ipaddr/format/validate/Validator;->getMaxIPv4StringLength(II)I

    move-result v5

    const/16 v12, 0x9

    invoke-virtual {v1, v10, v12}, Linet/ipaddr/format/validate/AddressParseData;->getIndex(II)I

    move-result v12

    sub-int/2addr v13, v12

    invoke-static {v11}, Linet/ipaddr/format/validate/Validator;->getStringPrefixCharCount(I)I

    move-result v11

    sub-int/2addr v13, v11

    if-gt v13, v5, :cond_b

    goto :goto_4

    :cond_b
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, v0, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, v0, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_e
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, v0, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingMixedIPv6()Z

    move-result v4

    if-eqz v4, :cond_10

    add-int/lit8 v3, v3, 0x2

    :cond_10
    invoke-virtual {v2}, Linet/ipaddr/format/validate/AddressParseData;->hasWildcard()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v2

    iget-boolean v2, v2, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    if-eqz v2, :cond_11

    goto :goto_5

    :cond_11
    const/4 v2, 0x1

    if-eq v3, v2, :cond_13

    const/16 v2, 0x8

    if-ge v3, v2, :cond_13

    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/IPAddressParseData;->isCompressed()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_5

    :cond_12
    new-instance v1, Linet/ipaddr/AddressStringException;

    const-string v2, "ipaddress.error.too.few.segments"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_5
    return-void
.end method

.method private static checkSegments(Ljava/lang/String;Linet/ipaddr/MACAddressStringParameters;Linet/ipaddr/format/validate/ParsedMACAddress;)V
    .locals 16

    .line 2
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/MACAddressParseData;->getFormat()Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/MACAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v13

    invoke-virtual {v13}, Linet/ipaddr/format/validate/AddressParseData;->hasWildcard()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/MACAddressStringParameters;->getFormatParameters()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    move-result-object v1

    iget-boolean v1, v1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    if-eqz v1, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v13}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v15

    sget-object v3, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DOTTED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    const-string v4, "ipaddress.error.too.few.segments"

    if-ne v0, v3, :cond_5

    const/4 v0, 0x3

    if-gt v15, v0, :cond_2

    iget-object v2, v11, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    sget-object v3, Linet/ipaddr/MACAddressStringParameters$AddressSize;->EUI64:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-eq v2, v3, :cond_2

    if-nez v1, :cond_10

    if-ne v15, v0, :cond_1

    goto/16 :goto_7

    :cond_1
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v10, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v1, :cond_4

    const/4 v0, 0x4

    if-lt v15, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v10, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    invoke-virtual {v12, v14}, Linet/ipaddr/format/validate/MACAddressParseData;->setExtended(Z)V

    goto/16 :goto_7

    :cond_5
    const/4 v0, 0x2

    if-le v15, v0, :cond_b

    const/4 v0, 0x6

    if-gt v15, v0, :cond_7

    iget-object v3, v11, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    sget-object v5, Linet/ipaddr/MACAddressStringParameters$AddressSize;->EUI64:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-eq v3, v5, :cond_7

    if-nez v1, :cond_a

    if-ne v15, v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v10, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_7
    if-nez v1, :cond_9

    const/16 v0, 0x8

    if-lt v15, v0, :cond_8

    goto :goto_2

    :cond_8
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v10, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    invoke-virtual {v12, v14}, Linet/ipaddr/format/validate/MACAddressParseData;->setExtended(Z)V

    :cond_a
    :goto_3
    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/MACAddressParseData;->getFormat()Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    move-result-object v0

    sget-object v1, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DASHED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    if-ne v0, v1, :cond_10

    move v12, v2

    :goto_4
    if-ge v12, v15, :cond_10

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/MACAddressStringParameters;->getFormatParameters()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    move-result-object v3

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x2

    const-wide/16 v8, 0x2

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v12

    invoke-static/range {v0 .. v9}, Linet/ipaddr/format/validate/Validator;->checkSegmentMaxValues(Ljava/lang/CharSequence;Linet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;JJJ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/MACAddressParseData;->getFormat()Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    move-result-object v0

    sget-object v2, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DASHED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    if-ne v0, v2, :cond_d

    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/MACAddressParseData;->isDoubleSegment()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/MACAddressStringParameters;->getFormatParameters()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    move-result-object v15

    const/4 v2, 0x0

    const-wide/32 v4, 0xffffff

    const-wide/16 v6, 0x6

    const-wide/16 v8, 0x6

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v3, v15

    invoke-static/range {v0 .. v9}, Linet/ipaddr/format/validate/Validator;->checkSegmentMaxValues(Ljava/lang/CharSequence;Linet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;JJJ)V

    invoke-virtual/range {p2 .. p2}, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const-wide v4, 0xffffffffffL

    const-wide/16 v6, 0xa

    const-wide/16 v8, 0xa

    :goto_5
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v3, v15

    invoke-static/range {v0 .. v9}, Linet/ipaddr/format/validate/Validator;->checkSegmentMaxValues(Ljava/lang/CharSequence;Linet/ipaddr/format/validate/AddressParseData;ILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;JJJ)V

    goto :goto_6

    :cond_c
    const-wide/32 v4, 0xffffff

    const-wide/16 v6, 0x6

    const-wide/16 v8, 0x6

    goto :goto_5

    :cond_d
    if-eqz v1, :cond_f

    :cond_e
    :goto_6
    iget-object v0, v11, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    sget-object v1, Linet/ipaddr/MACAddressStringParameters$AddressSize;->EUI64:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-ne v0, v1, :cond_10

    goto/16 :goto_1

    :cond_f
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v10, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_7
    return-void
.end method

.method private static checkSingleWildcard(Ljava/lang/CharSequence;IIILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V
    .locals 0

    iget-object p1, p4, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {p1}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsSingleWildcard()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    if-ge p3, p2, :cond_1

    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p4, 0x5f

    if-ne p1, p4, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.single.wildcard.order"

    invoke-direct {p1, p0, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    :cond_2
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.no.single.wildcard"

    invoke-direct {p1, p0, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1
.end method

.method private static checkSpecialHosts(Ljava/lang/String;ILinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x0

    :try_start_0
    const-string v4, ".ipv6-literal.net"

    const/16 v1, 0x11

    const/4 v10, 0x1

    if-le v7, v1, :cond_6

    const/4 v2, 0x1

    add-int/lit8 v11, v7, -0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    move-object/from16 v1, p0

    move v3, v11

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    const/16 v3, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    const/16 v5, 0xbb

    if-ne v3, v5, :cond_1

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_1
    const/16 v4, 0x73

    if-ne v3, v4, :cond_2

    const/16 v3, 0x25

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    invoke-direct {v2}, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;-><init>()V
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-boolean v10, v2, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->isUNCIPv6Literal:Z

    sget-object v3, Linet/ipaddr/format/validate/Validator;->DEFAULT_UNC_OPTS:Linet/ipaddr/IPAddressStringParameters;

    new-instance v4, Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-direct {v4, v9, v0, v3}, Linet/ipaddr/format/validate/ParsedIPAddress;-><init>(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V

    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/16 v17, 0x0

    move-object v12, v3

    move-object v13, v1

    move-object/from16 v16, v4

    invoke-static/range {v12 .. v17}, Linet/ipaddr/format/validate/Validator;->validateIPAddress(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Z)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-static {v1, v3, v9, v4, v5}, Linet/ipaddr/format/validate/Validator;->parseAddressQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;Linet/ipaddr/format/validate/IPAddressParseData;I)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v5

    sget-object v6, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    if-ne v5, v6, :cond_4

    move-object v5, v8

    goto :goto_2

    :cond_4
    if-ne v8, v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5, v8}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->overridePrefix(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V

    :goto_2
    invoke-static {v9, v1, v3, v4, v5}, Linet/ipaddr/format/validate/Validator;->chooseProvider(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/format/validate/ParsedIPAddress;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v1

    iput-object v1, v2, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;
    :try_end_1
    .catch Linet/ipaddr/AddressStringException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v9, v2

    goto/16 :goto_7

    :cond_6
    move-object v11, v9

    :goto_3
    :try_start_2
    const-string v12, ".ip6.int"

    const/16 v13, 0x8

    if-le v7, v13, :cond_b

    const-string v4, ".in-addr.arpa"

    const-string v14, ".ip6.arpa"

    const/4 v2, 0x1

    add-int/lit8 v15, v7, -0xd

    const/4 v5, 0x0

    const/16 v6, 0xd

    move-object/from16 v1, p0

    move v3, v15

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v16

    if-nez v16, :cond_8

    const/16 v1, 0x9

    if-le v7, v1, :cond_7

    const/4 v2, 0x1

    add-int/lit8 v15, v7, -0x9

    const/4 v5, 0x0

    const/16 v6, 0x9

    move-object/from16 v1, p0

    move v3, v15

    move-object v4, v14

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v9, v11

    goto :goto_7

    :cond_7
    :goto_4
    if-le v7, v13, :cond_b

    const/4 v2, 0x1

    add-int/lit8 v15, v7, -0x8

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object/from16 v1, p0

    move v3, v15

    move-object v4, v12

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_8
    new-instance v1, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    invoke-direct {v1}, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;-><init>()V
    :try_end_2
    .catch Linet/ipaddr/AddressStringException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iput-boolean v10, v1, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->isReverseDNS:Z

    if-eqz v16, :cond_9

    invoke-static {v0, v15}, Linet/ipaddr/format/validate/Validator;->convertReverseDNSIPv4(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v2, Linet/ipaddr/format/validate/Validator;->REVERSE_DNS_IPV4_OPTS:Linet/ipaddr/IPAddressStringParameters;

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v9, v1

    goto :goto_7

    :cond_9
    invoke-static {v0, v15}, Linet/ipaddr/format/validate/Validator;->convertReverseDNSIPv6(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v2, Linet/ipaddr/format/validate/Validator;->REVERSE_DNS_IPV6_OPTS:Linet/ipaddr/IPAddressStringParameters;

    :goto_5
    new-instance v3, Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-direct {v3, v9, v0, v2}, Linet/ipaddr/format/validate/ParsedIPAddress;-><init>(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V

    const/4 v12, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/4 v15, 0x0

    move-object v10, v2

    move-object v11, v0

    move-object v14, v3

    invoke-static/range {v10 .. v15}, Linet/ipaddr/format/validate/Validator;->validateIPAddress(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Z)V

    if-eqz v8, :cond_a

    move-object v4, v8

    goto :goto_6

    :cond_a
    sget-object v4, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    :goto_6
    invoke-static {v9, v0, v2, v3, v4}, Linet/ipaddr/format/validate/Validator;->chooseProvider(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/format/validate/ParsedIPAddress;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v0

    iput-object v0, v1, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->addressProvider:Linet/ipaddr/format/validate/IPAddressProvider;
    :try_end_3
    .catch Linet/ipaddr/AddressStringException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v11, v1

    goto :goto_8

    :goto_7
    iput-object v0, v9, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->addressStringException:Linet/ipaddr/AddressStringException;

    move-object v11, v9

    :cond_b
    :goto_8
    return-object v11
.end method

.method private static chooseProvider(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/format/validate/ParsedIPAddress;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Linet/ipaddr/format/validate/IPAddressProvider;
    .locals 2

    invoke-virtual {p3}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p4, p2}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->inferVersion(Linet/ipaddr/IPAddressStringParameters;)Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-virtual {p2}, Linet/ipaddr/IPAddressStringParameters;->inferVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v1

    if-nez v0, :cond_0

    invoke-virtual {p3, v1}, Linet/ipaddr/format/validate/IPAddressParseData;->setVersion(Linet/ipaddr/IPAddress$IPVersion;)V

    move-object v0, v1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Linet/ipaddr/AddressStringException;

    sget-object p2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    if-ne v0, p2, :cond_1

    const-string p2, "ipaddress.error.ipv6"

    goto :goto_0

    :cond_1
    const-string p2, "ipaddress.error.ipv4"

    :goto_0
    invoke-direct {p0, p1, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p3}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object p1

    invoke-virtual {p1}, Linet/ipaddr/format/validate/AddressParseData;->isProvidingEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p4}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p3, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    if-ne p2, p3, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/16 v1, 0x80

    if-gt p4, v1, :cond_7

    if-nez v0, :cond_3

    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x2

    :goto_2
    sget-object p4, Linet/ipaddr/format/validate/Validator;->MASK_CACHE:[[Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;

    aget-object v1, p4, p2

    if-nez v1, :cond_5

    const/16 v1, 0x81

    new-array v1, v1, [Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;

    aput-object v1, p4, p2

    :cond_5
    aget-object p2, v1, p1

    if-nez p2, :cond_6

    new-instance p2, Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;

    invoke-direct {p2, p0, v0, p3}, Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;-><init>(Ljava/lang/Integer;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/IPAddressStringParameters;)V

    aput-object p2, v1, p1

    :cond_6
    return-object p2

    :cond_7
    new-instance p1, Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;

    invoke-direct {p1, p0, v0, p2}, Linet/ipaddr/format/validate/IPAddressProvider$MaskCreator;-><init>(Ljava/lang/Integer;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/IPAddressStringParameters;)V

    return-object p1

    :cond_8
    iget-boolean p0, p2, Linet/ipaddr/IPAddressStringParameters;->emptyIsLoopback:Z

    if-eqz p0, :cond_a

    sget-object p0, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    if-ne p2, p0, :cond_9

    sget-object p0, Linet/ipaddr/format/validate/Validator;->LOOPBACK_CACHE:Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;

    return-object p0

    :cond_9
    new-instance p0, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;

    invoke-direct {p0, p2}, Linet/ipaddr/format/validate/IPAddressProvider$LoopbackCreator;-><init>(Linet/ipaddr/IPAddressStringParameters;)V

    return-object p0

    :cond_a
    sget-object p0, Linet/ipaddr/format/validate/IPAddressProvider;->EMPTY_PROVIDER:Linet/ipaddr/format/validate/IPAddressProvider$NullProvider;

    return-object p0

    :cond_b
    new-instance p1, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;

    invoke-direct {p1, p4, v0, p0, p2}, Linet/ipaddr/format/validate/IPAddressProvider$AllCreator;-><init>(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/IPAddress$IPVersion;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/IPAddressStringParameters;)V

    return-object p1

    :cond_c
    invoke-virtual {p3}, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_3

    :cond_d
    new-instance p0, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.only.ipv6.has.zone"

    invoke-direct {p0, p1, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_3
    invoke-virtual {p3, p4}, Linet/ipaddr/format/validate/IPAddressParseData;->setQualifier(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V

    invoke-static {p1, p2, p3}, Linet/ipaddr/format/validate/Validator;->checkSegments(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/format/validate/IPAddressParseData;)V

    return-object p3
.end method

.method private static convertReverseDNSIPv4(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-lez v1, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    sub-int v6, p1, v1

    if-le v6, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    :goto_1
    if-ge v4, p1, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move p1, v1

    goto :goto_2

    :cond_1
    new-instance p1, Linet/ipaddr/AddressStringException;

    invoke-direct {p1, p0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw p1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_3
    if-ge v1, p1, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v3, v4

    const/4 p1, 0x4

    if-ne v3, p1, :cond_5

    return-object v0

    :cond_5
    new-instance p1, Linet/ipaddr/AddressStringException;

    invoke-direct {p1, p0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw p1
.end method

.method private static convertReverseDNSIPv6(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    const/4 v7, 0x0

    :goto_0
    if-ltz v1, :cond_10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x4

    const/16 v11, 0x2d

    if-ge v8, v10, :cond_d

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2a

    const/16 v14, 0x66

    const/16 v15, 0x30

    if-ltz v10, :cond_9

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v5, 0x2e

    if-ne v10, v5, :cond_2

    if-ne v12, v13, :cond_0

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    :goto_2
    const/4 v11, 0x1

    goto :goto_5

    :cond_0
    if-nez v9, :cond_1

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    new-instance v2, Linet/ipaddr/AddressStringException;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v2, v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v2

    :cond_2
    if-ne v10, v11, :cond_8

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    if-lt v6, v11, :cond_7

    add-int/lit8 v10, v1, -0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v6, v15, :cond_3

    if-ne v12, v14, :cond_3

    move v6, v11

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v9, :cond_5

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    new-instance v2, Linet/ipaddr/AddressStringException;

    add-int/lit8 v1, v1, -0x2

    invoke-direct {v2, v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v2

    :cond_5
    :goto_4
    add-int/lit8 v6, v1, -0x4

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_6

    move v9, v11

    :goto_5
    move v1, v6

    goto :goto_6

    :cond_6
    new-instance v2, Linet/ipaddr/AddressStringException;

    add-int/lit8 v1, v1, -0x3

    invoke-direct {v2, v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v2

    :cond_7
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, v0, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v1

    :cond_8
    new-instance v2, Linet/ipaddr/AddressStringException;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v2, v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v2

    :cond_9
    move v11, v5

    const/4 v5, 0x3

    if-lt v8, v5, :cond_c

    if-ne v12, v13, :cond_a

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v10

    move v9, v11

    goto :goto_6

    :cond_a
    if-nez v9, :cond_b

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v10

    :goto_6
    add-int/lit8 v8, v8, 0x1

    move v5, v11

    goto/16 :goto_1

    :cond_b
    new-instance v1, Linet/ipaddr/AddressStringException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v1

    :cond_c
    new-instance v2, Linet/ipaddr/AddressStringException;

    invoke-direct {v2, v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v2

    :cond_d
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_e

    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_f

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_f
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    :cond_10
    const/4 v6, 0x0

    const/16 v1, 0x8

    if-ne v7, v1, :cond_11

    return-object v2

    :cond_11
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, v0, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v1
.end method

.method private static getMaxIPv4StringLength(II)I
    .locals 1

    :try_start_0
    sget-object v0, Linet/ipaddr/format/validate/Validator;->MAX_IPv4_STRING_LEN:[[I

    ushr-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    aget p0, p1, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getMaxIPv4Value(I)J
    .locals 3

    sget-object v0, Linet/ipaddr/format/validate/Validator;->MAX_VALUES:[J

    aget-wide v1, v0, p0

    return-wide v1
.end method

.method private static getStringPrefixCharCount(I)I
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method private static isBinaryDelimiter(Ljava/lang/CharSequence;I)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x62

    if-eq p0, p1, :cond_1

    const/16 p1, 0x42

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isHexDelimiter(C)Z
    .locals 1

    const/16 v0, 0x78

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isReserved(C)Z
    .locals 2

    const/16 v0, 0x30

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x7e

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    move p0, v1

    :goto_1
    xor-int/2addr p0, v1

    return p0
.end method

.method private static isSingleSegmentIPv4(IIZIILinet/ipaddr/ipv4/IPv4AddressStringParameters;)Z
    .locals 2

    const/16 v0, 0x22

    const/16 v1, 0xb

    if-le p0, v1, :cond_2

    iget-boolean p0, p5, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    if-le p4, v1, :cond_2

    if-eqz p0, :cond_1

    if-ne p4, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    if-le p3, v1, :cond_5

    iget-boolean p1, p5, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    if-eqz p1, :cond_3

    if-eq p4, v0, :cond_5

    :cond_3
    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Linet/ipaddr/AddressStringException;

    const-string p1, "ipaddress.error.too.few.segments.digit.count"

    invoke-direct {p0, p1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return p0
.end method

.method private static isSingleSegmentIPv6(IZILinet/ipaddr/ipv6/IPv6AddressStringParameters;)Z
    .locals 3

    const/16 v0, 0x82

    const/16 v1, 0x20

    if-eq p0, v1, :cond_2

    iget-boolean v2, p3, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    if-eqz v2, :cond_0

    if-eq p0, v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    if-eq p2, v1, :cond_2

    if-eqz v2, :cond_1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    if-eq p2, v1, :cond_5

    iget-boolean p0, p3, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    if-eqz p0, :cond_3

    if-eq p2, v0, :cond_5

    :cond_3
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Linet/ipaddr/AddressStringException;

    const-string p1, "ipaddress.error.too.few.segments.digit.count"

    invoke-direct {p0, p1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return v2
.end method

.method private static parseAddressQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;Linet/ipaddr/format/validate/IPAddressParseData;I)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 8

    invoke-virtual {p3}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifierIndex()I

    move-result v5

    invoke-virtual {p3}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->isProvidingEmpty()Z

    move-result v4

    invoke-virtual {p3}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v7

    invoke-virtual {p3}, Linet/ipaddr/format/validate/IPAddressParseData;->hasPrefixSeparator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p4

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/Validator;->parsePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p3}, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Linet/ipaddr/format/validate/IPAddressParseData;->isBase85Zoned()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingBase85IPv6()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Linet/ipaddr/AddressStringException;

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p1, p0, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw p1

    :cond_2
    :goto_0
    if-nez v4, :cond_3

    move-object v0, p0

    move-object v1, p1

    move v2, v4

    move v3, v5

    move v4, p4

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Linet/ipaddr/format/validate/Validator;->parseZone(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.only.zone"

    invoke-direct {p1, p0, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1

    :cond_4
    sget-object p0, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    return-object p0
.end method

.method private static parseBase85(Ljava/lang/CharSequence;II)Ljava/math/BigInteger;
    .locals 11

    .line 1
    sget-object v0, Linet/ipaddr/format/validate/Validator;->extendedChars:[I

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :goto_0
    sub-int v2, p2, p1

    const/4 v3, 0x1

    const/16 v4, 0x9

    if-gt v2, v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    move v4, v2

    move v2, p2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, p1, 0x9

    :goto_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    aget v6, v0, v6

    int-to-long v6, v6

    :goto_3
    add-int/2addr p1, v3

    if-ge p1, v2, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aget v8, v0, v8

    const-wide/16 v9, 0x55

    mul-long/2addr v6, v9

    int-to-long v8, v8

    add-long/2addr v6, v8

    goto :goto_3

    :cond_2
    sget-object p1, Linet/ipaddr/format/validate/Validator;->BASE_85_POWERS:[Ljava/math/BigInteger;

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v5, :cond_3

    return-object v1

    :cond_3
    move p1, v2

    goto :goto_0
.end method

.method private static parseBase85(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;III)Z
    .locals 31

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v10, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {p4 .. p4}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v7

    const-string v8, "ipaddress.error.ipv6"

    const/4 v9, 0x0

    const-string v11, "ipaddress.error.address.too.large"

    const/16 v12, 0x40

    const/4 v15, 0x1

    if-gez v4, :cond_2

    const/16 v4, 0x14

    if-ne v5, v4, :cond_3

    iget-boolean v0, v0, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    if-eqz v0, :cond_1

    sget-object v0, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    invoke-virtual {v10, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->setVersion(Linet/ipaddr/IPAddress$IPVersion;)V

    invoke-static/range {p1 .. p3}, Linet/ipaddr/format/validate/Validator;->parseBase85(Ljava/lang/CharSequence;II)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v4, Linet/ipaddr/format/validate/Validator;->LOW_BITS_MASK:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7, v15}, Linet/ipaddr/format/validate/AddressParseData;->initSegmentData(I)V

    invoke-virtual {v7}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    const/4 v4, 0x0

    const/16 v11, 0x55

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p2

    move-object v3, v7

    move-wide v7, v8

    move v9, v11

    invoke-static/range {v0 .. v9}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIILinet/ipaddr/format/validate/AddressParseData;IJJI)V

    invoke-virtual {v10, v15}, Linet/ipaddr/format/validate/IPAddressParseData;->setBase85(Z)V

    return v15

    :cond_0
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v1, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v1, v8}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v13, 0x29

    if-eq v5, v13, :cond_4

    const/16 v13, 0x15

    if-ne v5, v13, :cond_3

    if-eqz v4, :cond_4

    add-int/lit8 v5, v4, 0x1

    if-ne v5, v3, :cond_3

    goto :goto_0

    :cond_3
    return v9

    :cond_4
    :goto_0
    iget-boolean v5, v0, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    if-eqz v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    iget-object v5, v0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v5}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsRangeSeparator()Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    invoke-virtual {v10, v5}, Linet/ipaddr/format/validate/IPAddressParseData;->setVersion(Linet/ipaddr/IPAddress$IPVersion;)V

    add-int/lit8 v5, v2, 0x14

    const-string v8, "ipaddress.error.empty.segment.at.index"

    if-ne v4, v5, :cond_b

    invoke-static {v1, v2, v4}, Linet/ipaddr/format/validate/Validator;->parseBase85(Ljava/lang/CharSequence;II)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v13, Linet/ipaddr/format/validate/Validator;->LOW_BITS_MASK:Ljava/math/BigInteger;

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v18

    add-int/lit8 v14, v4, 0x1

    if-ge v14, v3, :cond_9

    invoke-static {v1, v14, v3}, Linet/ipaddr/format/validate/Validator;->parseBase85(Ljava/lang/CharSequence;II)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v20

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v0, v0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v0}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsReverseRange()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v1, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v2, "ipaddress.error.invalidRange"

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_7
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v29, v14

    move v14, v2

    move/from16 v2, v29

    move/from16 v30, v4

    move v4, v3

    move/from16 v3, v30

    :goto_1
    move/from16 v29, v4

    move v4, v3

    move/from16 v3, v29

    goto :goto_2

    :cond_8
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v1, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v0, v0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v0}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsInferredBoundary()Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/16 v20, -0x1

    const/high16 v9, 0x400000

    move v14, v2

    move v2, v3

    move-wide/from16 v22, v20

    :goto_2
    move v12, v4

    move v13, v14

    move-wide/from16 v25, v22

    move-wide/from16 v23, v20

    move-wide/from16 v21, v18

    move-wide/from16 v19, v16

    move/from16 v16, v2

    goto :goto_3

    :cond_a
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v1, v8, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_b
    if-nez v4, :cond_e

    iget-object v0, v0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v0}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsInferredBoundary()Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, v4, 0x1

    invoke-static {v1, v0, v3}, Linet/ipaddr/format/validate/Validator;->parseBase85(Ljava/lang/CharSequence;II)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Linet/ipaddr/format/validate/Validator;->LOW_BITS_MASK:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v13

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x0

    const/high16 v2, 0x200000

    move-wide/from16 v19, v0

    move-wide/from16 v21, v19

    move-wide/from16 v23, v4

    move v12, v9

    move-wide/from16 v25, v13

    move/from16 v16, v15

    move v13, v12

    move v9, v2

    :goto_3
    invoke-virtual {v7}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    invoke-virtual {v7, v15}, Linet/ipaddr/format/validate/AddressParseData;->initSegmentData(I)V

    const/16 v18, 0x0

    const v0, 0x100055

    or-int v27, v9, v0

    const/16 v28, 0x55

    move v11, v13

    move/from16 v14, v16

    move v0, v15

    move v15, v3

    move-object/from16 v17, v7

    invoke-static/range {v11 .. v28}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJJJII)V

    invoke-virtual {v10, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->setBase85(Z)V

    return v0

    :cond_c
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v1, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v1, v8, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_e
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v1, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_f
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v2, "ipaddress.error.no.range"

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v1, v8}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0
.end method

.method private static parseEncodedZone(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 10

    const/4 v0, 0x0

    move v1, p3

    :goto_0
    if-ge v1, p4, :cond_7

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v1, 0x2

    if-ge v2, p4, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v2, p4, p3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0, p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v2, Linet/ipaddr/format/validate/Validator;->chars:[I

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aget v3, v2, v3

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    add-int/lit8 v1, v1, 0x2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aget v2, v2, v4

    or-int/2addr v2, v3

    int-to-char v2, v2

    goto :goto_3

    :cond_1
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.invalid.zone.encoding"

    invoke-direct {p1, p0, p2, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw p1

    :cond_2
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    if-eqz v0, :cond_3

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_3
    invoke-interface {p0, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :goto_2
    const/4 v5, 0x0

    add-int/lit8 v7, v1, 0x1

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    move v8, p4

    move-object v9, p5

    invoke-static/range {v2 .. v9}, Linet/ipaddr/format/validate/Validator;->parsePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v2}, Linet/ipaddr/format/validate/Validator;->isReserved(C)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.invalid.zone"

    invoke-direct {p1, p0, p2, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw p1

    :cond_7
    if-nez v0, :cond_8

    new-instance p1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-interface {p0, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {p1, p0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_8
    new-instance p0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private static parseHostAddressQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZZLinet/ipaddr/format/validate/IPAddressParseData;II)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 8

    invoke-virtual {p5}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/format/validate/AddressParseData;->isProvidingEmpty()Z

    move-result v4

    invoke-virtual {p5}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v7

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/Validator;->parsePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p5}, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v4, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, v4

    move v3, p6

    move v4, p7

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Linet/ipaddr/format/validate/Validator;->parseEncodedZone(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Linet/ipaddr/AddressStringException;

    const-string v2, "ipaddress.error.only.zone"

    invoke-direct {v1, p0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p4, :cond_3

    const/4 v1, 0x0

    invoke-static {p0, v1, p2, p6, p7}, Linet/ipaddr/format/validate/Validator;->parsePortOrService(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/HostNameParameters;II)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    return-object v0
.end method

.method private static parseHostNameQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZZZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 8

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/Validator;->parsePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p6

    move v4, p7

    invoke-static {p0, v0, p2, p6, p7}, Linet/ipaddr/format/validate/Validator;->parsePortOrService(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/HostNameParameters;II)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    return-object v0
.end method

.method private static parseLong10(Ljava/lang/CharSequence;II)J
    .locals 5

    sget-object v0, Linet/ipaddr/format/validate/Validator;->chars:[I

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aget v1, v0, v1

    int-to-long v1, v1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    const-wide/16 v3, 0xa

    mul-long/2addr v1, v3

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aget v3, v0, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static parseLong16(Ljava/lang/CharSequence;II)J
    .locals 5

    sget-object v0, Linet/ipaddr/format/validate/Validator;->chars:[I

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aget v1, v0, v1

    int-to-long v1, v1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    const/4 v3, 0x4

    shl-long/2addr v1, v3

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aget v3, v0, v3

    int-to-long v3, v3

    or-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static parseLong2(Ljava/lang/CharSequence;II)J
    .locals 5

    sget-object v0, Linet/ipaddr/format/validate/Validator;->chars:[I

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aget v0, v0, v1

    int-to-long v0, v0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    add-int/2addr p1, v2

    if-ge p1, p2, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    shl-long/2addr v0, v2

    if-ne v3, v4, :cond_0

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static parseLong8(Ljava/lang/CharSequence;II)J
    .locals 5

    sget-object v0, Linet/ipaddr/format/validate/Validator;->chars:[I

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    aget v1, v0, v1

    int-to-long v1, v1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    const/4 v3, 0x3

    shl-long/2addr v1, v3

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aget v3, v0, v3

    int-to-long v3, v3

    or-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private static parsePortOrService(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/HostNameParameters;II)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sget-object v5, Linet/ipaddr/format/validate/Validator;->chars:[I

    const/4 v8, -0x1

    move v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v9, v4, :cond_11

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v6, 0x31

    if-lt v7, v6, :cond_1

    const/16 v6, 0x39

    if-gt v7, v6, :cond_1

    if-eqz v10, :cond_0

    mul-int/lit8 v12, v12, 0xa

    aget v6, v5, v7

    add-int/2addr v12, v6

    const/4 v11, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_1
    const/16 v6, 0x30

    if-ne v7, v6, :cond_2

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    mul-int/lit8 v12, v12, 0xa

    goto :goto_1

    :cond_2
    const/16 v6, 0x41

    if-lt v7, v6, :cond_3

    const/16 v6, 0x5a

    if-le v7, v6, :cond_4

    :cond_3
    const/16 v6, 0x61

    if-lt v7, v6, :cond_5

    const/16 v6, 0x7a

    if-le v7, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    :goto_2
    const/16 v6, 0x2d

    if-ne v7, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_9

    const/16 v10, 0x2a

    if-ne v7, v10, :cond_7

    const/4 v15, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.invalid.port.service"

    invoke-direct {v1, v0, v2, v9}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v1

    :cond_9
    :goto_5
    if-eqz v6, :cond_d

    if-eq v9, v3, :cond_c

    add-int/lit8 v6, v9, -0x1

    if-eq v6, v8, :cond_b

    add-int/lit8 v6, v4, -0x1

    if-eq v9, v6, :cond_a

    move v8, v9

    const/4 v6, 0x1

    goto :goto_6

    :cond_a
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.invalid.service.hyphen.end"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.invalid.service.hyphen.consecutive"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.invalid.service.hyphen.start"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_d
    const/4 v6, 0x1

    if-eqz v15, :cond_10

    if-gt v9, v3, :cond_f

    add-int/2addr v9, v6

    if-lt v9, v4, :cond_e

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    goto :goto_8

    :cond_e
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v1

    :cond_f
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v9, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v1

    :cond_10
    move v14, v6

    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_11
    move v7, v10

    move v6, v14

    :goto_8
    if-eqz v7, :cond_15

    iget-boolean v2, v2, Linet/ipaddr/HostNameParameters;->allowPort:Z

    if-eqz v2, :cond_14

    if-eqz v12, :cond_13

    const v2, 0xffff

    if-gt v12, v2, :cond_12

    new-instance v0, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-direct {v0, v1, v12}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0

    :cond_12
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.invalidPort.too.large"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_13
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.invalidPort.no.digits"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.port"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_15
    iget-boolean v2, v2, Linet/ipaddr/HostNameParameters;->allowService:Z

    if-eqz v2, :cond_19

    if-eqz v13, :cond_18

    const/16 v2, 0xf

    if-gt v13, v2, :cond_17

    if-eqz v6, :cond_16

    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-direct {v2, v1, v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v2

    :cond_16
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.invalidService.no.letter"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_17
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.invalidService.too.long"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.invalidService.no.chars"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_19
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ipaddress.host.error.service"

    invoke-direct {v1, v0, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1
.end method

.method private static parsePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 7

    iget-boolean v0, p2, Linet/ipaddr/IPAddressStringParameters;->allowPrefix:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/validate/Validator;->validatePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;IILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    if-nez p4, :cond_a

    iget-boolean p3, p2, Linet/ipaddr/IPAddressStringParameters;->allowMask:Z

    const-string p4, "ipaddress.error.invalidCIDRPrefixOrMask"

    if-eqz p3, :cond_8

    :try_start_0
    invoke-static {p2, p7}, Linet/ipaddr/format/validate/Validator;->toMaskOptions(Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddressStringParameters;

    move-result-object p3

    new-instance v6, Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v0, 0x0

    invoke-direct {v6, v0, p0, p3}, Linet/ipaddr/format/validate/ParsedIPAddress;-><init>(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move v2, p5

    move v3, p6

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Linet/ipaddr/format/validate/Validator;->validateIPAddress(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Z)V

    invoke-virtual {v6}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object p5

    invoke-virtual {p5}, Linet/ipaddr/format/validate/AddressParseData;->isProvidingEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p5}, Linet/ipaddr/format/validate/AddressParseData;->isAll()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0, p3, v6}, Linet/ipaddr/format/validate/Validator;->checkSegments(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/format/validate/IPAddressParseData;)V

    invoke-virtual {p5}, Linet/ipaddr/format/validate/AddressParseData;->getAddressEndIndex()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, p6, :cond_5

    invoke-virtual {v6}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object p3

    invoke-virtual {p3}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-virtual {p5}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result p6

    if-ne p6, v0, :cond_2

    invoke-virtual {p5}, Linet/ipaddr/format/validate/AddressParseData;->hasWildcard()Z

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual {p2}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object p2

    iget-boolean p2, p2, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_single_segment_mask:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.mask.single.segment"

    invoke-direct {p1, p0, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p7, :cond_4

    invoke-virtual {p3}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p2

    invoke-virtual {p7}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p5

    if-ne p2, p5, :cond_3

    invoke-virtual {p3}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result p2

    invoke-virtual {p7}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result p3

    if-ne p2, p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.ipMismatch"

    invoke-direct {p1, p0, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    new-instance p2, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-direct {p2, v6, p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Linet/ipaddr/format/validate/ParsedIPAddress;Ljava/lang/CharSequence;)V

    return-object p2

    :cond_5
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.invalid.mask.extra.chars"

    add-int/2addr p3, v0

    invoke-direct {p1, p0, p2, p3}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw p1

    :cond_6
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.invalid.mask.wildcard"

    invoke-direct {p1, p0, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.invalid.mask.empty"

    invoke-direct {p1, p0, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p2, Linet/ipaddr/AddressStringException;

    invoke-direct {p2, p0, p4, p1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_8
    new-instance p1, Linet/ipaddr/AddressStringException;

    iget-boolean p2, p2, Linet/ipaddr/IPAddressStringParameters;->allowPrefix:Z

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    const-string p4, "ipaddress.error.CIDRNotAllowed"

    :goto_3
    invoke-direct {p1, p0, p4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Linet/ipaddr/AddressStringException;

    const-string p2, "ipaddress.error.invalid.mask.address.empty"

    invoke-direct {p1, p0, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1
.end method

.method private static parseSingleSegmentSingleWildcard16(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V
    .locals 17

    move-object/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v1, p5

    sub-int v2, v4, v1

    move-object/from16 v5, p9

    invoke-static {v0, v3, v4, v2, v5}, Linet/ipaddr/format/validate/Validator;->checkSingleWildcard(Ljava/lang/CharSequence;IIILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    const-wide/16 v5, -0x1

    const/16 v7, 0x10

    if-ge v1, v7, :cond_0

    add-int/lit8 v7, v4, -0x10

    invoke-static {v0, v7, v2}, Linet/ipaddr/format/validate/Validator;->parseLong16(Ljava/lang/CharSequence;II)J

    move-result-wide v8

    shl-int/lit8 v1, v1, 0x2

    shl-long/2addr v8, v1

    shl-long v1, v5, v1

    not-long v1, v1

    or-long/2addr v1, v8

    invoke-static {v0, v3, v7}, Linet/ipaddr/format/validate/Validator;->parseLong16(Ljava/lang/CharSequence;II)J

    move-result-wide v5

    move-wide v12, v1

    move-wide v10, v5

    move-wide v14, v10

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    if-ne v1, v7, :cond_1

    move-wide/from16 v10, p0

    move-wide v14, v10

    move-wide v12, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x10

    shl-int/lit8 v0, v0, 0x2

    shl-long v1, p0, v0

    shl-long v10, v5, v0

    not-long v10, v10

    or-long/2addr v10, v1

    move-wide v12, v5

    move-wide v14, v10

    move-wide v10, v1

    :goto_0
    const/high16 v16, 0x20000

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p8

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v16}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJJJI)V

    return-void
.end method

.method private static parseSingleSegmentSingleWildcard2(Ljava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v1, p3

    sub-int v2, v4, v1

    move-object/from16 v5, p7

    invoke-static {v0, v3, v4, v2, v5}, Linet/ipaddr/format/validate/Validator;->checkSingleWildcard(Ljava/lang/CharSequence;IIILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    add-int/lit8 v5, v4, -0x40

    const-wide/16 v6, -0x1

    const/16 v8, 0x40

    if-ge v1, v8, :cond_0

    invoke-static {v0, v5, v2}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v8

    shl-long/2addr v8, v1

    shl-long v1, v6, v1

    not-long v1, v1

    or-long/2addr v1, v8

    invoke-static {v0, v3, v5}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v5

    move-wide v12, v1

    move-wide v10, v5

    move-wide v14, v10

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    if-ne v1, v8, :cond_1

    invoke-static {v0, v3, v5}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v0

    move-wide v14, v0

    move-wide v12, v6

    move-wide v8, v9

    move-wide v10, v14

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v8

    sub-int/2addr v5, v1

    invoke-static {v0, v3, v5}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v11

    shl-long/2addr v11, v1

    shl-long v0, v6, v1

    not-long v0, v0

    or-long/2addr v0, v11

    move-wide v14, v0

    move-wide v8, v9

    move-wide v10, v11

    move-wide v12, v6

    :goto_0
    const/high16 v16, 0x20000

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p6

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p6

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v16}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJJJI)V

    return-void
.end method

.method private static parseValidatedPrefix(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;IIIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 0

    if-nez p7, :cond_0

    add-int/lit8 p8, p8, -0x1

    :cond_0
    const-string p4, "ipaddress.error.prefixSize"

    const/4 p5, 0x0

    if-eqz p9, :cond_5

    invoke-virtual {p9}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p6

    if-eqz p6, :cond_5

    if-lez p8, :cond_2

    invoke-virtual {p3}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object p6

    iget-boolean p6, p6, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixLengthLeadingZeros:Z

    if-eqz p6, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Linet/ipaddr/AddressStringException;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ipaddress.error.ipv4.prefix.leading.zeros"

    invoke-direct {p0, p1, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p3}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object p6

    iget-boolean p6, p6, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    if-nez p6, :cond_4

    const/16 p6, 0x20

    if-le p0, p6, :cond_4

    iget-boolean p0, p3, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    if-eqz p0, :cond_3

    return-object p5

    :cond_3
    new-instance p0, Linet/ipaddr/AddressStringException;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0

    :cond_4
    sget-object p1, Linet/ipaddr/format/validate/Validator;->PREFIX_CACHE:[Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    array-length p1, p1

    if-ge p0, p1, :cond_b

    goto :goto_3

    :cond_5
    if-lez p8, :cond_7

    invoke-virtual {p3}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object p6

    iget-boolean p6, p6, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixLengthLeadingZeros:Z

    if-eqz p6, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Linet/ipaddr/AddressStringException;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ipaddress.error.ipv6.prefix.leading.zeros"

    invoke-direct {p0, p1, p2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    invoke-virtual {p3}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object p3

    iget-boolean p3, p3, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowPrefixesBeyondAddressSize:Z

    if-nez p3, :cond_9

    const/16 p3, 0x80

    if-gt p0, p3, :cond_8

    goto :goto_2

    :cond_8
    new-instance p0, Linet/ipaddr/AddressStringException;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_2
    if-nez p2, :cond_b

    sget-object p1, Linet/ipaddr/format/validate/Validator;->PREFIX_CACHE:[Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    array-length p1, p1

    if-ge p0, p1, :cond_b

    :goto_3
    sget-object p1, Linet/ipaddr/format/validate/Validator;->PREFIX_CACHE:[Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    aget-object p2, p1, p0

    if-nez p2, :cond_a

    new-instance p2, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-static {p0}, Linet/ipaddr/format/validate/Validator;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3, p5}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    aput-object p2, p1, p0

    :cond_a
    return-object p2

    :cond_b
    new-instance p1, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-static {p0}, Linet/ipaddr/format/validate/Validator;->cacheBits(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method private static parseZone(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 8

    move v2, p3

    :goto_0
    if-ge v2, p4, :cond_2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    invoke-interface {p0, p3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x0

    add-int/lit8 v5, v2, 0x1

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/Validator;->parsePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Linet/ipaddr/AddressStringException;

    const-string v3, "ipaddress.error.invalid.zone"

    invoke-direct {v1, p0, v3, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v1

    :cond_2
    new-instance v2, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-interface {p0, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method private static switchSingleWildcard10(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V
    .locals 14

    move-object/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v1, p5

    sub-int v2, v4, v1

    move-object/from16 v5, p9

    invoke-static {v0, v3, v4, v2, v5}, Linet/ipaddr/format/validate/Validator;->checkSingleWildcard(Ljava/lang/CharSequence;IIILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    if-ge v3, v2, :cond_0

    sub-int/2addr v2, v3

    move-wide v5, p0

    invoke-static {p0, p1, v0, v2}, Linet/ipaddr/format/validate/Validator;->switchValue10(JLjava/lang/CharSequence;I)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    int-to-double v0, v1

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long/2addr v5, v0

    add-long/2addr v0, v5

    const-wide/16 v7, 0x1

    sub-long/2addr v0, v7

    :goto_1
    move-wide v10, v0

    move-wide v8, v5

    goto :goto_3

    :cond_1
    const-wide/16 v0, 0x3e8

    mul-long/2addr v5, v0

    const-wide/16 v0, 0x3e7

    :goto_2
    add-long/2addr v0, v5

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x64

    mul-long/2addr v5, v0

    const-wide/16 v0, 0x63

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0xa

    mul-long/2addr v5, v0

    const-wide/16 v0, 0x9

    goto :goto_2

    :goto_3
    const/16 v13, 0xa

    const v12, 0x2000a

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p8

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v13}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJII)V

    return-void
.end method

.method private static switchSingleWildcard2(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V
    .locals 14

    move-object/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sub-int v1, v4, p5

    move-object/from16 v2, p9

    invoke-static {v0, v3, v4, v1, v2}, Linet/ipaddr/format/validate/Validator;->checkSingleWildcard(Ljava/lang/CharSequence;IIILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    if-ge v3, v1, :cond_0

    sub-int/2addr v1, v3

    move-wide v5, p0

    invoke-static {p0, p1, v0, v1}, Linet/ipaddr/format/validate/Validator;->switchValue2(JLjava/lang/CharSequence;I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    shl-long v8, v0, p5

    packed-switch p5, :pswitch_data_0

    const-wide/16 v0, -0x1

    shl-long v0, v0, p5

    not-long v0, v0

    :goto_1
    or-long/2addr v0, v8

    move-wide v10, v0

    goto :goto_2

    :pswitch_0
    const-wide/32 v0, 0xffff

    goto :goto_1

    :pswitch_1
    const-wide/16 v0, 0x7fff

    goto :goto_1

    :pswitch_2
    const-wide/16 v0, 0x3fff

    goto :goto_1

    :pswitch_3
    const-wide/16 v0, 0x1fff

    goto :goto_1

    :pswitch_4
    const-wide/16 v0, 0xfff

    goto :goto_1

    :pswitch_5
    const-wide/16 v0, 0x7ff

    goto :goto_1

    :pswitch_6
    const-wide/16 v0, 0x3ff

    goto :goto_1

    :pswitch_7
    const-wide/16 v0, 0x1ff

    goto :goto_1

    :pswitch_8
    const-wide/16 v0, 0xff

    goto :goto_1

    :pswitch_9
    const-wide/16 v0, 0x7f

    goto :goto_1

    :pswitch_a
    const-wide/16 v0, 0x3f

    goto :goto_1

    :pswitch_b
    const-wide/16 v0, 0x1f

    goto :goto_1

    :pswitch_c
    const-wide/16 v0, 0xf

    goto :goto_1

    :pswitch_d
    const-wide/16 v0, 0x7

    goto :goto_1

    :pswitch_e
    const-wide/16 v0, 0x3

    goto :goto_1

    :pswitch_f
    const-wide/16 v0, 0x1

    goto :goto_1

    :goto_2
    const/4 v13, 0x2

    const v12, 0x20002

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p8

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v13}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static switchSingleWildcard8(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V
    .locals 14

    move-object/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v1, p5

    sub-int v2, v4, v1

    move-object/from16 v5, p9

    invoke-static {v0, v3, v4, v2, v5}, Linet/ipaddr/format/validate/Validator;->checkSingleWildcard(Ljava/lang/CharSequence;IIILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    if-ge v3, v2, :cond_0

    sub-int/2addr v2, v3

    move-wide v5, p0

    invoke-static {p0, p1, v0, v2}, Linet/ipaddr/format/validate/Validator;->switchValue8(JLjava/lang/CharSequence;I)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    const/4 v0, 0x1

    const/4 v2, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    if-eq v1, v2, :cond_1

    mul-int/lit8 v0, v1, 0x3

    shl-long v1, v5, v0

    const-wide/16 v5, -0x1

    shl-long/2addr v5, v0

    not-long v5, v5

    or-long/2addr v5, v1

    move-wide v8, v1

    :goto_1
    move-wide v10, v5

    goto :goto_3

    :cond_1
    const/16 v0, 0x9

    shl-long v0, v5, v0

    const-wide/16 v5, 0x1ff

    :goto_2
    or-long/2addr v5, v0

    move-wide v8, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    shl-long v0, v5, v0

    const-wide/16 v5, 0x3f

    goto :goto_2

    :cond_3
    shl-long v0, v5, v2

    const-wide/16 v5, 0x7

    goto :goto_2

    :goto_3
    const/16 v13, 0x8

    const v12, 0x20008

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p8

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v13}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJII)V

    return-void
.end method

.method private static switchValue10(JLjava/lang/CharSequence;I)J
    .locals 16

    move-object/from16 v0, p2

    const-wide/16 v1, 0xf

    and-long v3, p0, v1

    const-wide/16 v5, 0xa

    cmp-long v7, v3, v5

    const-string v8, "ipaddress.error.ipv4.invalid.decimal.digit"

    if-gez v7, :cond_5

    add-int/lit8 v7, p3, -0x1

    if-lez v7, :cond_4

    const/16 v9, 0xa

    move-wide v10, v3

    move v12, v9

    move-wide/from16 v3, p0

    :goto_0
    const/4 v13, 0x4

    ushr-long/2addr v3, v13

    and-long v13, v3, v1

    cmp-long v15, v13, v5

    if-gez v15, :cond_3

    int-to-long v1, v12

    mul-long/2addr v13, v1

    add-long/2addr v10, v13

    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_0

    move-wide v3, v10

    goto :goto_3

    :cond_0
    const/16 v1, 0x64

    if-ne v12, v9, :cond_1

    :goto_1
    move v12, v1

    goto :goto_2

    :cond_1
    if-ne v12, v1, :cond_2

    const/16 v1, 0x3e8

    goto :goto_1

    :cond_2
    mul-int/lit8 v12, v12, 0xa

    :goto_2
    const-wide/16 v1, 0xf

    goto :goto_0

    :cond_3
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, v0, v8}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_3
    return-wide v3

    :cond_5
    new-instance v1, Linet/ipaddr/AddressStringException;

    invoke-direct {v1, v0, v8}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v1
.end method

.method private static switchValue2(JLjava/lang/CharSequence;I)J
    .locals 11

    const-wide/16 v0, 0xf

    and-long v2, p0, v0

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    const-string v7, "ipaddress.error.ipv4.invalid.binary.digit"

    if-gtz v6, :cond_3

    const/4 v6, 0x0

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_2

    const/4 v8, 0x1

    add-int/2addr v6, v8

    const/4 v9, 0x4

    ushr-long/2addr p0, v9

    and-long v9, p0, v0

    cmp-long v9, v9, v4

    if-ltz v9, :cond_0

    if-nez v9, :cond_1

    shl-int/2addr v8, v6

    int-to-long v8, v8

    or-long/2addr v2, v8

    goto :goto_0

    :cond_1
    new-instance p0, Linet/ipaddr/AddressStringException;

    invoke-direct {p0, p2, v7}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-wide v2

    :cond_3
    new-instance p0, Linet/ipaddr/AddressStringException;

    invoke-direct {p0, p2, v7}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0
.end method

.method private static switchValue8(JLjava/lang/CharSequence;I)J
    .locals 11

    const-wide/16 v0, 0xf

    and-long v2, p0, v0

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    const-string v7, "ipaddress.error.ipv4.invalid.octal.digit"

    if-gez v6, :cond_2

    const/4 v6, 0x0

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_1

    add-int/lit8 v6, v6, 0x3

    const/4 v8, 0x4

    ushr-long/2addr p0, v8

    and-long v8, p0, v0

    cmp-long v10, v8, v4

    if-gez v10, :cond_0

    shl-long/2addr v8, v6

    or-long/2addr v2, v8

    goto :goto_0

    :cond_0
    new-instance p0, Linet/ipaddr/AddressStringException;

    invoke-direct {p0, p2, v7}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0

    :cond_1
    return-wide v2

    :cond_2
    new-instance p0, Linet/ipaddr/AddressStringException;

    invoke-direct {p0, p2, v7}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p0
.end method

.method private static toMaskOptions(Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/IPAddressStringParameters;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v1

    iget-object v2, v1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v2}, Linet/ipaddr/AddressStringParameters$RangeParameters;->isNoRange()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters;->toBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v2

    sget-object v3, Linet/ipaddr/AddressStringParameters$RangeParameters;->NO_RANGE:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v2, v3}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    :cond_1
    iget-boolean v2, v1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowMixed:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getMixedParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v1

    invoke-virtual {v1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v1

    iget-object v1, v1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v1}, Linet/ipaddr/AddressStringParameters$RangeParameters;->isNoRange()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters;->toBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv6AddressParametersBuilder()Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    move-result-object v1

    sget-object v2, Linet/ipaddr/AddressStringParameters$RangeParameters;->NO_RANGE:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v1, v2}, Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv6/IPv6AddressStringParameters$Builder;

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object p1

    iget-object p1, p1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {p1}, Linet/ipaddr/AddressStringParameters$RangeParameters;->isNoRange()Z

    move-result p1

    if-nez p1, :cond_6

    if-nez v0, :cond_5

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters;->toBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->getIPv4AddressParametersBuilder()Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    move-result-object p1

    sget-object v1, Linet/ipaddr/AddressStringParameters$RangeParameters;->NO_RANGE:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {p1, v1}, Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;->setRangeOptions(Linet/ipaddr/AddressStringParameters$RangeParameters;)Linet/ipaddr/ipv4/IPv4AddressStringParameters$Builder;

    :cond_6
    iget-boolean p1, p0, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    if-eqz p1, :cond_8

    if-nez v0, :cond_7

    invoke-virtual {p0}, Linet/ipaddr/IPAddressStringParameters;->toBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    :cond_7
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressStringParameters$Builder;->allowAll(Z)Linet/ipaddr/IPAddressStringParameters$Builder;

    :cond_8
    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static validateAddress(Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/MACAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Linet/ipaddr/format/validate/MACAddressParseData;Z)V
    .locals 110

    .line 3
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p5

    move-object/from16 v12, p6

    if-eqz v12, :cond_0

    const/16 v20, 0x1

    goto :goto_0

    :cond_0
    const/16 v20, 0x0

    :goto_0
    if-eqz v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Linet/ipaddr/MACAddressStringParameters;->getFormatParameters()Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Linet/ipaddr/format/validate/MACAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v1

    move-object v5, v0

    move-object v4, v1

    move-object v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p5 .. p5}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    iget-boolean v2, v0, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowBase85:Z

    invoke-virtual/range {p0 .. p0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v3

    move-object v6, v0

    move-object v4, v1

    move-object v1, v8

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    sget-object v39, Linet/ipaddr/format/validate/Validator;->chars:[I

    const/16 v40, -0x1

    const-wide/16 v41, 0x0

    move-object/from16 v26, v0

    move/from16 v34, v2

    move-object/from16 v25, v3

    move-object/from16 v24, v5

    move v3, v14

    move v11, v3

    move/from16 v45, v11

    move/from16 v0, v40

    move v13, v0

    move/from16 v47, v13

    move/from16 v51, v47

    move/from16 v52, v51

    move-wide/from16 v43, v41

    move-wide/from16 v56, v43

    move-wide/from16 v58, v56

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v60, 0x0

    move/from16 v2, p4

    const/16 p4, 0x0

    :goto_2
    if-lt v11, v2, :cond_3

    if-ne v11, v2, :cond_2

    const/16 v22, 0x1

    goto :goto_3

    :cond_2
    const/16 v22, 0x0

    :goto_3
    if-eqz v22, :cond_3a

    :cond_3
    move/from16 v61, v22

    move/from16 v22, v2

    const-string v2, "ipaddress.mac.error.format"

    move-object/from16 v30, v6

    const-string v6, "ipaddress.error.too.many.segments"

    move/from16 v31, v0

    if-eqz v61, :cond_41

    invoke-virtual {v4, v11}, Linet/ipaddr/format/validate/AddressParseData;->setAddressEndIndex(I)V

    if-eqz v17, :cond_e

    if-eqz v20, :cond_8

    invoke-virtual/range {p4 .. p4}, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->getSeparator()C

    move-result v0

    move-object/from16 v65, v2

    invoke-virtual {v4}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v2

    move-object/from16 v66, v6

    const/4 v6, 0x1

    if-ne v2, v6, :cond_4

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/16 v2, 0x2d

    :cond_5
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v12, v6}, Linet/ipaddr/format/validate/MACAddressParseData;->setDoubleSegment(Z)V

    move/from16 v27, v6

    if-eqz v6, :cond_7

    move/from16 v6, v45

    sub-int v2, v11, v6

    move/from16 v45, v0

    const/16 v0, 0xa

    if-ne v2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v12, v0}, Linet/ipaddr/format/validate/MACAddressParseData;->setExtended(Z)V

    goto :goto_6

    :cond_7
    move/from16 v6, v45

    move/from16 v45, v0

    :goto_6
    move-object/from16 v77, v4

    move/from16 v78, v5

    move/from16 v81, v6

    move/from16 v62, v7

    move/from16 v64, v18

    move/from16 v67, v19

    move/from16 v68, v21

    move/from16 v63, v22

    move-object/from16 v79, v24

    move-object/from16 v76, v25

    move-object/from16 v72, v26

    move/from16 v84, v27

    move-object/from16 v80, v30

    move/from16 v83, v31

    move/from16 v2, v45

    move-object/from16 v82, v66

    const/16 v8, 0x2e

    move-object/from16 v45, v1

    :goto_7
    move/from16 v66, v3

    move-object/from16 v107, v65

    move/from16 v65, v10

    move-object/from16 v10, v107

    goto/16 :goto_25

    :cond_8
    move-object/from16 v65, v2

    move-object/from16 v66, v6

    move/from16 v6, v45

    if-gez v13, :cond_d

    invoke-virtual/range {v37 .. v37}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v45, v1

    move-object/from16 v77, v4

    move/from16 v78, v5

    move/from16 v81, v6

    move/from16 v62, v7

    move/from16 v64, v18

    move/from16 v67, v19

    move/from16 v68, v21

    move/from16 v63, v22

    move-object/from16 v79, v24

    move-object/from16 v76, v25

    move-object/from16 v72, v26

    move/from16 v84, v27

    move-object/from16 v80, v30

    move/from16 v83, v31

    move-object/from16 v82, v66

    const/16 v2, 0x2e

    :goto_8
    const/16 v8, 0x2e

    goto :goto_7

    :cond_9
    if-ne v11, v3, :cond_b

    invoke-virtual {v4}, Linet/ipaddr/format/validate/AddressParseData;->getConsecutiveSeparatorIndex()I

    move-result v0

    const/4 v2, 0x2

    add-int/2addr v0, v2

    if-ne v11, v0, :cond_a

    goto/16 :goto_21

    :cond_a
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.cannot.end.with.single.separator"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v2, 0x2

    invoke-virtual/range {p5 .. p5}, Linet/ipaddr/format/validate/IPAddressParseData;->isProvidingMixedIPv6()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_21

    :cond_c
    move-object/from16 v45, v1

    move-object/from16 v77, v4

    move/from16 v78, v5

    move/from16 v81, v6

    move/from16 v62, v7

    move/from16 v64, v18

    move/from16 v67, v19

    move/from16 v68, v21

    move/from16 v63, v22

    move-object/from16 v79, v24

    move-object/from16 v76, v25

    move-object/from16 v72, v26

    move/from16 v84, v27

    move-object/from16 v80, v30

    move/from16 v83, v31

    move-object/from16 v82, v66

    const/16 v2, 0x3a

    goto :goto_8

    :cond_d
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v15, v13}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_e
    move-object/from16 v65, v2

    move-object/from16 v66, v6

    move/from16 v6, v45

    const/4 v2, 0x2

    sub-int v0, v11, v14

    if-nez v0, :cond_12

    if-nez v20, :cond_10

    invoke-virtual/range {p5 .. p5}, Linet/ipaddr/format/validate/IPAddressParseData;->hasPrefixSeparator()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, v8, Linet/ipaddr/IPAddressStringParameters;->allowPrefixOnly:Z

    if-eqz v0, :cond_f

    :goto_9
    const/4 v0, 0x1

    goto :goto_a

    :cond_f
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.prefix.only"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-boolean v0, v1, Linet/ipaddr/AddressStringParameters;->allowEmpty:Z

    if-eqz v0, :cond_11

    goto :goto_9

    :goto_a
    invoke-virtual {v4, v0}, Linet/ipaddr/format/validate/AddressParseData;->setEmpty(Z)V

    goto/16 :goto_21

    :cond_11
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.empty"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_12
    if-ne v10, v0, :cond_14

    const/16 v2, 0x13

    if-gt v10, v2, :cond_14

    iget-boolean v0, v1, Linet/ipaddr/AddressStringParameters;->allowAll:Z

    if-eqz v0, :cond_13

    invoke-virtual {v4}, Linet/ipaddr/format/validate/AddressParseData;->setHasWildcard()V

    invoke-virtual {v4}, Linet/ipaddr/format/validate/AddressParseData;->setAll()V

    goto/16 :goto_21

    :cond_13
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.all"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_14
    sub-int v2, v11, v6

    add-int v14, v5, v7

    if-eqz v20, :cond_36

    const/4 v0, 0x6

    if-eq v2, v0, :cond_16

    const/16 v0, 0xa

    if-ne v2, v0, :cond_15

    const/4 v0, 0x6

    goto :goto_b

    :cond_15
    const/4 v0, 0x6

    goto :goto_c

    :cond_16
    :goto_b
    if-eq v14, v0, :cond_19

    if-gtz v46, :cond_19

    :goto_c
    if-ne v14, v0, :cond_17

    if-gtz v10, :cond_19

    :cond_17
    if-lez v46, :cond_18

    if-lez v10, :cond_18

    goto :goto_d

    :cond_18
    move/from16 v33, v3

    move-object/from16 v3, v65

    move-object/from16 v62, v66

    const/16 v0, 0xa

    const/16 v65, 0x6

    goto/16 :goto_11

    :cond_19
    :goto_d
    if-nez v38, :cond_18

    iget-object v0, v9, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    sget-object v14, Linet/ipaddr/MACAddressStringParameters$AddressSize;->EUI64:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-ne v0, v14, :cond_1b

    const/4 v14, 0x6

    if-eq v2, v14, :cond_1a

    goto :goto_e

    :cond_1a
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.too.few.segments"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_e
    sget-object v14, Linet/ipaddr/MACAddressStringParameters$AddressSize;->MAC:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-ne v0, v14, :cond_1c

    const/16 v0, 0xa

    if-eq v2, v0, :cond_1d

    :cond_1c
    move-object/from16 v14, v66

    goto :goto_f

    :cond_1d
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v14, v66

    invoke-direct {v0, v15, v14}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :goto_f
    iget-boolean v0, v9, Linet/ipaddr/MACAddressStringParameters;->allowSingleDashed:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Linet/ipaddr/format/validate/MACAddressParseData;->setDoubleSegment(Z)V

    const/16 v0, 0xa

    if-ne v2, v0, :cond_1e

    const/4 v2, 0x1

    goto :goto_10

    :cond_1e
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v12, v2}, Linet/ipaddr/format/validate/MACAddressParseData;->setExtended(Z)V

    move-object/from16 v45, v1

    move/from16 v66, v3

    move-object/from16 v77, v4

    move/from16 v78, v5

    move/from16 v81, v6

    move/from16 v62, v7

    move-object/from16 v82, v14

    move/from16 v63, v22

    move-object/from16 v79, v24

    move-object/from16 v76, v25

    move-object/from16 v72, v26

    move-object/from16 v80, v30

    move/from16 v83, v31

    const/16 v2, 0x2d

    const/16 v8, 0x2e

    const/16 v21, 0x0

    const/16 v27, 0x1

    move-object/from16 v107, v65

    move/from16 v65, v10

    move-object/from16 v10, v107

    goto/16 :goto_24

    :cond_1f
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v1, v65

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :goto_11
    if-gtz v46, :cond_20

    if-lez v10, :cond_21

    :cond_20
    move/from16 v67, v5

    move/from16 v68, v6

    move/from16 v64, v7

    const/16 v7, 0x10

    goto/16 :goto_1f

    :cond_21
    iget-boolean v0, v1, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    if-eqz v0, :cond_34

    const/16 v0, 0xc

    move/from16 v67, v5

    if-ne v2, v0, :cond_22

    const/4 v0, 0x1

    :goto_12
    const/16 v5, 0x10

    goto :goto_13

    :cond_22
    const/4 v0, 0x0

    goto :goto_12

    :goto_13
    if-ne v2, v5, :cond_23

    const/4 v5, 0x1

    goto :goto_14

    :cond_23
    const/4 v5, 0x0

    :goto_14
    if-nez v2, :cond_24

    const/4 v2, 0x1

    goto :goto_15

    :cond_24
    const/4 v2, 0x0

    :goto_15
    if-nez v0, :cond_26

    if-nez v5, :cond_26

    if-eqz v2, :cond_25

    goto :goto_16

    :cond_25
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.too.few.segments.digit.count"

    invoke-direct {v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_16
    move/from16 v68, v6

    if-ltz v31, :cond_2f

    const/16 v6, 0xc

    move/from16 v64, v7

    if-ne v14, v6, :cond_27

    const/4 v6, 0x1

    :goto_17
    const/16 v7, 0x10

    goto :goto_18

    :cond_27
    const/4 v6, 0x0

    goto :goto_17

    :goto_18
    if-ne v14, v7, :cond_28

    const/16 v18, 0x1

    goto :goto_19

    :cond_28
    const/16 v18, 0x0

    :goto_19
    if-nez v14, :cond_29

    const/4 v14, 0x1

    goto :goto_1a

    :cond_29
    const/4 v14, 0x0

    :goto_1a
    if-eqz v0, :cond_2b

    if-nez v6, :cond_30

    if-eqz v14, :cond_2a

    goto :goto_1b

    :cond_2a
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.front.digit.count"

    invoke-direct {v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    if-eqz v5, :cond_2d

    if-nez v18, :cond_30

    if-eqz v14, :cond_2c

    goto :goto_1b

    :cond_2c
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.front.digit.count"

    invoke-direct {v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    if-eqz v2, :cond_30

    if-nez v6, :cond_30

    if-eqz v18, :cond_2e

    goto :goto_1b

    :cond_2e
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.front.digit.count"

    invoke-direct {v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move/from16 v64, v7

    const/16 v7, 0x10

    if-nez v2, :cond_33

    const/16 v18, 0x0

    :cond_30
    :goto_1b
    invoke-virtual {v4}, Linet/ipaddr/format/validate/AddressParseData;->setSingleSegment()V

    if-nez v5, :cond_32

    if-eqz v18, :cond_31

    goto :goto_1c

    :cond_31
    const/4 v0, 0x0

    goto :goto_1d

    :cond_32
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {v12, v0}, Linet/ipaddr/format/validate/MACAddressParseData;->setExtended(Z)V

    move-object/from16 v45, v1

    move-object/from16 v77, v4

    move/from16 v65, v10

    move/from16 v63, v22

    move-object/from16 v79, v24

    move-object/from16 v76, v25

    move-object/from16 v72, v26

    move-object/from16 v80, v30

    move/from16 v83, v31

    move/from16 v66, v33

    move-object/from16 v82, v62

    move/from16 v62, v64

    move/from16 v78, v67

    move/from16 v81, v68

    const/16 v2, 0x3a

    const/16 v8, 0x2e

    const/16 v18, 0x1

    const/16 v21, 0x0

    :goto_1e
    move-object v10, v3

    goto/16 :goto_24

    :cond_33
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.too.few.segments.digit.count"

    invoke-direct {v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.single.segment"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :goto_1f
    iget-boolean v0, v9, Linet/ipaddr/MACAddressStringParameters;->allowSingleDashed:Z

    if-eqz v0, :cond_35

    move-object/from16 v45, v1

    move-object/from16 v77, v4

    move/from16 v65, v10

    move/from16 v63, v22

    move-object/from16 v79, v24

    move-object/from16 v76, v25

    move-object/from16 v72, v26

    move-object/from16 v80, v30

    move/from16 v83, v31

    move/from16 v66, v33

    move-object/from16 v82, v62

    move/from16 v62, v64

    move/from16 v78, v67

    move/from16 v81, v68

    const/16 v2, 0x2d

    const/16 v8, 0x2e

    goto :goto_1e

    :cond_35
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v15, v3}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_36
    move/from16 v45, v0

    move/from16 v33, v3

    move/from16 v67, v5

    move/from16 v68, v6

    move/from16 v64, v7

    move-object/from16 v3, v65

    move-object/from16 v62, v66

    const/16 v7, 0x10

    const/16 v65, 0x6

    iget-boolean v0, v1, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    if-eqz v0, :cond_40

    move-object/from16 v5, v30

    if-ltz v31, :cond_37

    const/4 v6, 0x1

    goto :goto_20

    :cond_37
    const/4 v6, 0x0

    :goto_20
    invoke-static {v2, v6, v14, v5}, Linet/ipaddr/format/validate/Validator;->isSingleSegmentIPv6(IZILinet/ipaddr/ipv6/IPv6AddressStringParameters;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-gez v13, :cond_38

    move-object/from16 v45, v1

    move-object/from16 v77, v4

    move-object/from16 v80, v5

    move/from16 v65, v10

    move/from16 v63, v22

    move-object/from16 v79, v24

    move-object/from16 v76, v25

    move-object/from16 v72, v26

    move/from16 v83, v31

    move/from16 v66, v33

    move-object/from16 v82, v62

    move/from16 v62, v64

    move/from16 v78, v67

    move/from16 v81, v68

    const/16 v2, 0x3a

    const/16 v8, 0x2e

    const/16 v19, 0x1

    move-object v10, v3

    goto/16 :goto_23

    :cond_38
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v15, v13}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_39
    if-eqz v34, :cond_3b

    move-object/from16 v72, v26

    move/from16 v7, v31

    move/from16 v18, v45

    move-object/from16 v0, p0

    move-object/from16 v45, v1

    move-object/from16 v1, p2

    move/from16 v65, v10

    move/from16 v63, v22

    move/from16 v22, v2

    move-object v10, v3

    const/16 v3, 0x2e

    move/from16 v2, p3

    move v8, v3

    move-object/from16 v76, v25

    move/from16 v66, v33

    move/from16 v3, v63

    move-object/from16 v77, v4

    move-object/from16 v4, p5

    move-object/from16 v21, v5

    move-object/from16 v79, v24

    move/from16 v78, v67

    move/from16 v5, v47

    move/from16 v24, v6

    move-object/from16 v80, v21

    move-object/from16 v82, v62

    move/from16 v81, v68

    move/from16 v6, v18

    move/from16 v83, v7

    move/from16 v62, v64

    move v7, v11

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/Validator;->parseBase85(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;III)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_3a
    :goto_21
    return-void

    :cond_3b
    move-object/from16 v45, v1

    move-object/from16 v77, v4

    move-object/from16 v80, v5

    move/from16 v65, v10

    move/from16 v63, v22

    move-object/from16 v79, v24

    move-object/from16 v76, v25

    move-object/from16 v72, v26

    move/from16 v83, v31

    move/from16 v66, v33

    move-object/from16 v82, v62

    move/from16 v62, v64

    move/from16 v78, v67

    move/from16 v81, v68

    const/16 v8, 0x2e

    move/from16 v22, v2

    move-object v10, v3

    move/from16 v24, v6

    :cond_3c
    if-eqz v49, :cond_3d

    add-int/lit8 v0, v48, 0x1

    goto :goto_22

    :cond_3d
    move/from16 v0, v48

    :goto_22
    sub-int v21, v22, v0

    move/from16 v23, v24

    move/from16 v24, v62

    move/from16 v25, v14

    move-object/from16 v26, v76

    invoke-static/range {v21 .. v26}, Linet/ipaddr/format/validate/Validator;->isSingleSegmentIPv4(IIZIILinet/ipaddr/ipv4/IPv4AddressStringParameters;)Z

    move-result v0

    if-eqz v0, :cond_3f

    if-gez v13, :cond_3e

    move v2, v8

    :goto_23
    invoke-virtual/range {v77 .. v77}, Linet/ipaddr/format/validate/AddressParseData;->setSingleSegment()V

    const/16 v18, 0x1

    const/16 v21, 0x0

    :goto_24
    move/from16 v64, v18

    move/from16 v67, v19

    move/from16 v68, v21

    move/from16 v84, v27

    goto :goto_25

    :cond_3e
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v15, v13}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_3f
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.too.few.segments.digit.count"

    invoke-direct {v0, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.single.segment"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_41
    move/from16 v66, v3

    move-object/from16 v77, v4

    move/from16 v78, v5

    move-object/from16 v82, v6

    move/from16 v62, v7

    move/from16 v65, v10

    move/from16 v63, v22

    move-object/from16 v79, v24

    move-object/from16 v76, v25

    move-object/from16 v72, v26

    move-object/from16 v80, v30

    move/from16 v83, v31

    move/from16 v81, v45

    const/16 v8, 0x2e

    move-object/from16 v45, v1

    move-object v10, v2

    invoke-interface {v15, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_24

    :goto_25
    const/16 v0, 0x39

    const/4 v14, 0x4

    if-gt v2, v0, :cond_45

    const/16 v0, 0x30

    if-lt v2, v0, :cond_45

    move-wide/from16 v6, v43

    if-eqz v50, :cond_42

    shl-long v0, v6, v14

    aget v2, v39, v2

    int-to-long v2, v2

    or-long v43, v0, v2

    goto :goto_26

    :cond_42
    const/16 v0, 0x30

    if-ne v2, v0, :cond_44

    if-eqz v49, :cond_43

    add-int/lit8 v48, v48, 0x1

    move-wide/from16 v43, v6

    goto :goto_26

    :cond_43
    move-wide/from16 v43, v6

    const/16 v49, 0x1

    goto :goto_26

    :cond_44
    shl-long v0, v6, v14

    aget v2, v39, v2

    int-to-long v2, v2

    or-long v43, v0, v2

    const/16 v50, 0x1

    :goto_26
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p5

    move v4, v11

    move-object v9, v15

    move-wide/from16 v74, v43

    move/from16 v1, v48

    move/from16 v16, v50

    move-wide/from16 v6, v56

    move/from16 v10, v65

    move/from16 v11, v66

    move/from16 v21, v68

    move-object/from16 v26, v72

    move-object/from16 v48, v76

    move-object/from16 v50, v77

    move/from16 v0, v83

    const/4 v3, 0x1

    const/16 v73, 0x0

    move-object/from16 v56, p4

    move/from16 v44, v13

    move-wide/from16 v12, v58

    move/from16 v66, v63

    const/16 v63, 0x0

    move/from16 v58, v52

    goto/16 :goto_b3

    :cond_45
    move-wide/from16 v6, v43

    const/16 v0, 0x61

    if-lt v2, v0, :cond_46

    const/16 v0, 0x66

    if-gt v2, v0, :cond_46

    shl-long v0, v6, v14

    aget v2, v39, v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p5

    move-wide/from16 v74, v0

    move v4, v11

    move/from16 v44, v13

    move-object v9, v15

    move/from16 v1, v48

    move-wide/from16 v6, v56

    move-wide/from16 v12, v58

    move/from16 v10, v65

    move/from16 v11, v66

    move/from16 v21, v68

    move-object/from16 v26, v72

    move-object/from16 v48, v76

    move-object/from16 v50, v77

    move/from16 v0, v83

    const/4 v3, 0x1

    const/16 v16, 0x1

    const/16 v73, 0x0

    move-object/from16 v56, p4

    move/from16 v58, v52

    move/from16 v66, v63

    const/16 v63, 0x0

    goto/16 :goto_b3

    :cond_46
    const/high16 v43, 0x40000

    const-string v5, "ipaddress.error.empty.segment.at.index"

    const-string v14, "ipaddress.error.segment.leading.zeros"

    move-object/from16 v21, v14

    const-string v14, "ipaddress.error.segment.too.long.at.index"

    if-ne v2, v8, :cond_b8

    invoke-virtual/range {v77 .. v77}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v8

    if-eqz v20, :cond_4c

    if-nez v8, :cond_48

    iget-boolean v2, v9, Linet/ipaddr/MACAddressStringParameters;->allowDotted:Z

    if-eqz v2, :cond_47

    sget-object v2, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DOTTED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    invoke-virtual {v12, v2}, Linet/ipaddr/format/validate/MACAddressParseData;->setFormat(Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;)V

    move-object/from16 v10, v77

    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Linet/ipaddr/format/validate/AddressParseData;->initSegmentData(I)V

    move v4, v0

    move/from16 v44, v13

    move-object/from16 v75, v37

    move-object/from16 v10, v72

    move-object/from16 v9, v80

    const/16 v18, 0x8

    const/16 v69, 0x1

    const/16 v73, 0x0

    move-object/from16 v13, p5

    move-object/from16 v37, v2

    :goto_27
    move/from16 v72, v34

    goto/16 :goto_2b

    :cond_47
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v15, v10}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_48
    move-object/from16 v2, v77

    sget-object v0, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DOTTED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    move-object/from16 v10, p4

    if-ne v10, v0, :cond_4b

    iget-object v0, v9, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    sget-object v1, Linet/ipaddr/MACAddressStringParameters$AddressSize;->MAC:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-ne v0, v1, :cond_49

    const/4 v0, 0x3

    goto :goto_28

    :cond_49
    const/4 v0, 0x4

    :goto_28
    if-ge v8, v0, :cond_4a

    move-object/from16 v77, v2

    move/from16 v44, v13

    move-object/from16 v9, v80

    const/4 v4, 0x4

    const/16 v18, 0x8

    const/16 v73, 0x0

    move-object/from16 v13, p5

    goto/16 :goto_2a

    :cond_4a
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v1, v82

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.mac.error.mix.format.characters.at.index"

    invoke-direct {v0, v15, v1, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_4c
    move-object/from16 v10, p4

    move-object/from16 v2, v77

    move-object/from16 v1, v82

    move-object/from16 v0, p0

    if-nez v8, :cond_4e

    iget-boolean v1, v0, Linet/ipaddr/IPAddressStringParameters;->allowIPv4:Z

    if-eqz v1, :cond_4d

    sget-object v1, Linet/ipaddr/IPAddress$IPVersion;->IPV4:Linet/ipaddr/IPAddress$IPVersion;

    move/from16 v44, v13

    move-object/from16 v13, p5

    invoke-virtual {v13, v1}, Linet/ipaddr/format/validate/IPAddressParseData;->setVersion(Linet/ipaddr/IPAddress$IPVersion;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Linet/ipaddr/format/validate/AddressParseData;->initSegmentData(I)V

    move-object/from16 v75, v1

    move-object/from16 v77, v2

    move v4, v3

    move-object/from16 v37, v10

    move-object/from16 v10, v76

    move-object/from16 v9, v80

    const/16 v18, 0x8

    const/16 v69, 0x1

    const/16 v72, 0x0

    const/16 v73, 0x0

    goto/16 :goto_2b

    :cond_4d
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.ipv4"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_4e
    move/from16 v44, v13

    move-object/from16 v13, p5

    invoke-virtual/range {p5 .. p5}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v3

    invoke-virtual {v3}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v3

    if-eqz v3, :cond_52

    move-object/from16 v4, v80

    iget-boolean v3, v4, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowMixed:Z

    if-eqz v3, :cond_51

    add-int/lit8 v3, v8, 0x2

    const/16 v5, 0x8

    if-gt v3, v5, :cond_50

    if-lez v65, :cond_4f

    invoke-virtual {v2}, Linet/ipaddr/format/validate/AddressParseData;->getConsecutiveSeparatorIndex()I

    move-result v1

    if-gez v1, :cond_4f

    if-ge v3, v5, :cond_4f

    iget-boolean v1, v4, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowWildcardedSeparator:Z

    if-eqz v1, :cond_4f

    invoke-virtual {v2}, Linet/ipaddr/format/validate/AddressParseData;->setHasWildcard()V

    const-wide/16 v29, 0x0

    const-wide/32 v31, 0xffff

    const/high16 v33, 0x810000

    move/from16 v21, v66

    move/from16 v22, v11

    move/from16 v23, v66

    move/from16 v24, v66

    move/from16 v25, v11

    move/from16 v26, v66

    move-object/from16 v27, v2

    move/from16 v28, v8

    invoke-static/range {v21 .. v33}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJI)V

    invoke-virtual {v2}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    :cond_4f
    invoke-virtual {v4}, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->getMixedParameters()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v8

    new-instance v11, Linet/ipaddr/format/validate/ParsedIPAddress;

    const/4 v14, 0x0

    invoke-direct {v11, v14, v15, v8}, Linet/ipaddr/format/validate/ParsedIPAddress;-><init>(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V

    const/4 v5, 0x1

    move-object v3, v0

    move-object v0, v8

    move-object/from16 v1, p2

    move-object/from16 v77, v2

    move/from16 v2, v66

    move/from16 v3, v63

    move-object v9, v4

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Linet/ipaddr/format/validate/Validator;->validateIPAddress(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Z)V

    invoke-virtual {v11}, Linet/ipaddr/format/validate/IPAddressParseData;->clearQualifier()V

    invoke-static {v15, v8, v11}, Linet/ipaddr/format/validate/Validator;->checkSegments(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/format/validate/IPAddressParseData;)V

    invoke-virtual {v13, v11}, Linet/ipaddr/format/validate/IPAddressParseData;->setMixedParsedAddress(Linet/ipaddr/format/validate/ParsedIPAddress;)V

    invoke-virtual {v11}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->getAddressEndIndex()I

    move-result v11

    move-object/from16 v8, p0

    move/from16 v14, p3

    move-object/from16 p4, v10

    move/from16 v13, v44

    move-object/from16 v1, v45

    move/from16 v22, v61

    move/from16 v2, v63

    move/from16 v18, v64

    move/from16 v10, v65

    move/from16 v3, v66

    move/from16 v19, v67

    move/from16 v21, v68

    move-object/from16 v26, v72

    move-object/from16 v25, v76

    move-object/from16 v4, v77

    move/from16 v5, v78

    move-object/from16 v24, v79

    move/from16 v45, v81

    move/from16 v0, v83

    move/from16 v27, v84

    move-wide/from16 v43, v6

    move-object v6, v9

    move/from16 v7, v62

    :goto_29
    move-object/from16 v9, p1

    goto/16 :goto_2

    :cond_50
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.no.mixed"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_52
    move-object/from16 v77, v2

    move-object/from16 v9, v80

    const/4 v4, 0x4

    const/16 v18, 0x8

    const/16 v73, 0x0

    if-ge v8, v4, :cond_b7

    :goto_2a
    move/from16 v69, v17

    move-object/from16 v75, v37

    move-object/from16 v37, v10

    move-object/from16 v10, v72

    goto/16 :goto_27

    :goto_2b
    if-lez v65, :cond_56

    iget-object v0, v10, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v0}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsWildcard()Z

    move-result v0

    if-eqz v0, :cond_55

    sub-int v0, v11, v66

    move/from16 v3, v65

    if-ne v3, v0, :cond_54

    move/from16 v2, v51

    if-gez v2, :cond_54

    invoke-virtual/range {v77 .. v77}, Linet/ipaddr/format/validate/AddressParseData;->setHasWildcard()V

    sub-int v26, v11, v3

    const-wide/16 v29, 0x0

    if-eqz v20, :cond_53

    const-wide/32 v31, 0xffff

    goto :goto_2c

    :cond_53
    const-wide/16 v31, 0xff

    :goto_2c
    const/high16 v33, 0x10000

    move/from16 v21, v26

    move/from16 v22, v11

    move/from16 v23, v26

    move/from16 v24, v26

    move/from16 v25, v11

    move-object/from16 v27, v77

    move/from16 v28, v8

    invoke-static/range {v21 .. v33}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJI)V

    move/from16 v51, v2

    move-wide/from16 v81, v6

    move-object/from16 v80, v9

    move v5, v11

    move-object v2, v13

    move-object v9, v15

    move/from16 v3, v52

    move-wide/from16 v0, v56

    move/from16 v7, v62

    move-object/from16 v8, v76

    move/from16 v6, v78

    move-object/from16 v11, v79

    const/16 v65, 0x0

    move-object/from16 v76, v10

    move/from16 v10, v48

    goto/16 :goto_5e

    :cond_54
    new-instance v0, Linet/ipaddr/AddressStringException;

    const/4 v1, 0x1

    invoke-direct {v0, v15, v11, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_55
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.no.wildcard"

    invoke-direct {v0, v15, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_56
    move/from16 v2, v51

    move/from16 v3, v65

    move/from16 v0, v81

    const/4 v1, 0x1

    add-int v17, v0, v48

    sub-int v4, v11, v17

    if-eqz v49, :cond_59

    if-ne v4, v1, :cond_57

    move/from16 v1, v83

    if-nez v48, :cond_58

    if-gez v1, :cond_58

    if-gez v2, :cond_58

    const/16 v25, 0xa

    move/from16 v21, v17

    move/from16 v22, v11

    move-object/from16 v23, v77

    move/from16 v24, v8

    move/from16 v26, v0

    invoke-static/range {v21 .. v26}, Linet/ipaddr/format/validate/Validator;->assignAttributes(IILinet/ipaddr/format/validate/AddressParseData;III)V

    invoke-virtual/range {v77 .. v77}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    add-int/lit8 v0, v11, 0x1

    move-object/from16 v8, p0

    move/from16 v14, p3

    move v11, v0

    move/from16 v51, v2

    move-object/from16 v26, v10

    move-object/from16 p4, v37

    move/from16 v13, v44

    move/from16 v22, v61

    move/from16 v2, v63

    move/from16 v18, v64

    move/from16 v19, v67

    move/from16 v21, v68

    move/from16 v17, v69

    move/from16 v34, v72

    move-object/from16 v37, v75

    move-object/from16 v25, v76

    move-object/from16 v4, v77

    move/from16 v5, v78

    move-object/from16 v24, v79

    move/from16 v27, v84

    const/16 v49, 0x0

    move v10, v3

    move-wide/from16 v43, v6

    move-object v6, v9

    move/from16 v7, v62

    move-object/from16 v9, p1

    move v3, v11

    move v0, v1

    move-object/from16 v1, v45

    move/from16 v45, v3

    goto/16 :goto_2

    :cond_57
    move/from16 v1, v83

    add-int/lit8 v48, v48, 0x1

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v4, v4, -0x1

    :cond_58
    move/from16 v81, v0

    move-object/from16 v80, v9

    move/from16 v0, v17

    move/from16 v9, v48

    const/16 v49, 0x0

    goto :goto_2d

    :cond_59
    move/from16 v1, v83

    move/from16 v81, v0

    move-object/from16 v80, v9

    move/from16 v0, v17

    move/from16 v9, v48

    :goto_2d
    if-nez v4, :cond_5c

    if-ltz v1, :cond_5b

    if-gez v2, :cond_5b

    move/from16 v65, v3

    iget-object v3, v10, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v3}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsInferredBoundary()Z

    move-result v3

    if-eqz v3, :cond_5b

    if-eqz v20, :cond_5a

    const/16 v3, 0x10

    const-wide/32 v85, 0xffff

    goto :goto_2e

    :cond_5a
    const/16 v3, 0xa

    const-wide/16 v85, 0xff

    :goto_2e
    const/high16 v17, 0x400000

    move/from16 v51, v2

    move-object/from16 v88, v5

    move/from16 v28, v8

    move/from16 p4, v9

    move-object/from16 v48, v10

    move v5, v11

    move-object v9, v15

    move-object/from16 v2, v21

    move-object/from16 v94, v76

    move-object/from16 v8, v79

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v11, v4

    const/4 v4, 0x1

    move-wide/from16 v107, v6

    move v6, v0

    move v0, v3

    move-object v3, v13

    move-object v13, v14

    move/from16 v14, v81

    move-wide/from16 v81, v107

    goto/16 :goto_44

    :cond_5b
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v15, v5, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_5c
    move/from16 v65, v3

    if-lez v9, :cond_5d

    const/4 v3, 0x1

    goto :goto_2f

    :cond_5d
    const/4 v3, 0x0

    :goto_2f
    if-lez v35, :cond_5e

    const/16 v17, 0x1

    goto :goto_30

    :cond_5e
    const/16 v17, 0x0

    :goto_30
    if-nez v20, :cond_5f

    if-ltz v2, :cond_60

    :cond_5f
    move/from16 v89, v2

    move/from16 v16, v3

    move-object/from16 v88, v5

    move/from16 p4, v9

    move v5, v11

    move-object v3, v13

    move-object v12, v14

    move-object v9, v15

    move-object/from16 v2, v21

    move/from16 v13, v81

    const/4 v15, 0x1

    move-object v14, v10

    goto/16 :goto_3c

    :cond_60
    if-eqz v3, :cond_70

    move/from16 v22, v2

    move/from16 p4, v9

    move-object/from16 v9, v76

    iget-boolean v2, v9, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    if-eqz v2, :cond_61

    invoke-static {v15, v0}, Linet/ipaddr/format/validate/Validator;->isBinaryDelimiter(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_61

    const/4 v2, 0x1

    goto :goto_31

    :cond_61
    const/4 v2, 0x0

    :goto_31
    move-object/from16 v23, v5

    if-nez v2, :cond_63

    iget-boolean v5, v9, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_octal:Z

    if-eqz v5, :cond_62

    goto :goto_33

    :cond_62
    move/from16 v16, v3

    move-object/from16 v76, v9

    move-object/from16 v48, v10

    move v5, v11

    move-object v3, v13

    move-object v9, v15

    move-object/from16 v2, v21

    move/from16 v89, v22

    move-object/from16 v88, v23

    :goto_32
    move/from16 v15, v81

    const/4 v13, 0x1

    goto/16 :goto_3a

    :cond_63
    :goto_33
    iget-boolean v3, v10, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v3, :cond_6f

    if-eqz v2, :cond_69

    const/16 v2, 0x21

    if-gt v4, v2, :cond_68

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Linet/ipaddr/format/validate/IPAddressParseData;->setHasBinaryDigits(Z)V

    if-eqz v17, :cond_66

    if-gez v1, :cond_65

    const/16 v2, 0x10

    if-le v4, v2, :cond_64

    move/from16 v24, v81

    move-object/from16 v0, p2

    move v7, v1

    move v1, v5

    move-object/from16 v76, v9

    move/from16 v6, v22

    move v9, v2

    move v2, v11

    move/from16 v16, v3

    move/from16 v3, v35

    move/from16 v87, v4

    const/16 v17, 0x4

    move-object/from16 v4, v77

    move/from16 v22, v5

    move-object/from16 v88, v23

    move v5, v8

    move/from16 v89, v6

    move/from16 v6, v24

    move/from16 v90, v7

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/Validator;->parseSingleSegmentSingleWildcard2(Ljava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    move/from16 v7, p3

    move-object v0, v10

    move v5, v11

    move-object v4, v12

    move-object v6, v13

    move-object/from16 v92, v14

    move-object v9, v15

    move/from16 v3, v16

    move-object/from16 v91, v21

    move/from16 v2, v65

    const/4 v1, 0x0

    goto :goto_34

    :cond_64
    move/from16 v90, v1

    move/from16 v87, v4

    move-object/from16 v76, v9

    move-object v0, v10

    move/from16 v89, v22

    move-object/from16 v88, v23

    move/from16 v24, v81

    const/4 v1, 0x0

    const/16 v17, 0x4

    move v9, v2

    move/from16 v22, v5

    move v5, v11

    move/from16 v2, v65

    move-wide v10, v6

    move-object v4, v12

    move-object/from16 v12, p2

    move-object v6, v13

    move/from16 v13, v22

    move/from16 v7, p3

    move-object/from16 v92, v14

    move-object/from16 v91, v21

    move v14, v5

    move-object v9, v15

    move/from16 v15, v35

    move-object/from16 v16, v77

    move/from16 v17, v8

    move/from16 v18, v24

    move-object/from16 v19, v0

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->switchSingleWildcard2(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    :goto_34
    move-object/from16 v48, v0

    move v12, v1

    move/from16 v35, v12

    move/from16 v65, v2

    move v4, v3

    move/from16 v21, v4

    move-object v3, v6

    move/from16 v28, v8

    move/from16 v10, v22

    move/from16 v14, v24

    move-wide/from16 v6, v41

    move-object/from16 v94, v76

    move-object/from16 v8, v79

    move/from16 v11, v87

    :goto_35
    move/from16 v51, v89

    move/from16 v1, v90

    move-object/from16 v2, v91

    move-object/from16 v13, v92

    const/4 v0, 0x2

    goto/16 :goto_43

    :cond_65
    move v5, v11

    move-object v9, v15

    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5, v3}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_66
    move/from16 v90, v1

    move-object/from16 v76, v9

    move-object v0, v10

    move-object/from16 v92, v14

    move-object v9, v15

    move-object/from16 v91, v21

    move/from16 v89, v22

    move-object/from16 v88, v23

    move/from16 v2, v65

    move/from16 v24, v81

    const/4 v1, 0x0

    const/16 v10, 0x10

    move/from16 v15, p3

    move/from16 v22, v5

    move v5, v11

    move-object v14, v13

    move v11, v4

    move-object v4, v12

    if-le v11, v10, :cond_67

    move/from16 v10, v22

    invoke-static {v9, v10, v5}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v6

    :goto_36
    move-object/from16 v48, v0

    move v12, v1

    move/from16 v21, v12

    move/from16 v65, v2

    move v4, v3

    move/from16 v28, v8

    move-object v3, v14

    move/from16 v14, v24

    move-object/from16 v94, v76

    move-object/from16 v8, v79

    goto :goto_35

    :cond_67
    move/from16 v10, v22

    invoke-static {v6, v7, v9, v11}, Linet/ipaddr/format/validate/Validator;->switchValue2(JLjava/lang/CharSequence;I)J

    move-result-wide v6

    goto :goto_36

    :cond_68
    move-object/from16 v92, v14

    move-object v9, v15

    move/from16 v24, v81

    new-instance v0, Linet/ipaddr/AddressStringException;

    move/from16 v13, v24

    move-object/from16 v12, v92

    invoke-direct {v0, v9, v12, v13}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_69
    move/from16 v90, v1

    move-object/from16 v76, v9

    move v5, v11

    move-object v9, v15

    move-object/from16 v91, v21

    move/from16 v89, v22

    move-object/from16 v88, v23

    move/from16 v2, v65

    const/4 v3, 0x1

    move/from16 v15, p3

    move/from16 v1, p4

    move-object v11, v10

    move-object v10, v12

    move-object v12, v14

    move-object v14, v13

    move/from16 v13, v81

    if-le v1, v3, :cond_6b

    move-object/from16 v3, v76

    iget-boolean v2, v3, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_leading_zeros:Z

    if-eqz v2, :cond_6a

    :goto_37
    move-object/from16 v2, v91

    goto :goto_38

    :cond_6a
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v2, v91

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_6b
    move-object/from16 v3, v76

    goto :goto_37

    :goto_38
    const/16 v10, 0xb

    if-gt v4, v10, :cond_6e

    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Linet/ipaddr/format/validate/IPAddressParseData;->set_has_inet_aton_value(Z)V

    if-eqz v17, :cond_6d

    move/from16 v10, v90

    if-gez v10, :cond_6c

    move/from16 p4, v1

    move v1, v10

    move-object/from16 v48, v11

    move-wide v10, v6

    move-object v6, v12

    move-object/from16 v12, p2

    move v7, v13

    move v13, v0

    move-object/from16 v76, v3

    move-object v3, v14

    move v14, v5

    move/from16 v15, v35

    move-object/from16 v16, v77

    move/from16 v17, v8

    move/from16 v18, v7

    move-object/from16 v19, v48

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->switchSingleWildcard8(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    move v10, v0

    move v11, v4

    move-object v13, v6

    move v14, v7

    move/from16 v28, v8

    move-wide/from16 v6, v41

    move-object/from16 v94, v76

    move-object/from16 v8, v79

    move/from16 v51, v89

    const/16 v0, 0x8

    const/4 v4, 0x1

    const/4 v12, 0x0

    const/16 v21, 0x1

    :goto_39
    const/16 v35, 0x0

    goto/16 :goto_43

    :cond_6c
    new-instance v0, Linet/ipaddr/AddressStringException;

    const/4 v10, 0x1

    invoke-direct {v0, v9, v5, v10}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_6d
    move/from16 p4, v1

    move-object/from16 v76, v3

    move-object/from16 v48, v11

    move v15, v13

    move-object v3, v14

    move/from16 v1, v90

    const/4 v10, 0x1

    move-object v14, v12

    invoke-static {v6, v7, v9, v4}, Linet/ipaddr/format/validate/Validator;->switchValue8(JLjava/lang/CharSequence;I)J

    move-result-wide v6

    move v11, v4

    move/from16 v28, v8

    move v4, v10

    move-object v13, v14

    move v14, v15

    move-object/from16 v94, v76

    move-object/from16 v8, v79

    move/from16 v51, v89

    const/4 v12, 0x0

    const/16 v21, 0x0

    move v10, v0

    const/16 v0, 0x8

    goto/16 :goto_43

    :cond_6e
    move-object v14, v12

    move v15, v13

    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v14, v15}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_6f
    move-object v9, v15

    move-object/from16 v2, v21

    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_70
    move/from16 v89, v2

    move/from16 v16, v3

    move-object/from16 v88, v5

    move/from16 p4, v9

    move-object/from16 v48, v10

    move v5, v11

    move-object v3, v13

    move-object v9, v15

    move-object/from16 v2, v21

    goto/16 :goto_32

    :goto_3a
    move-object/from16 v12, v48

    if-eqz v16, :cond_71

    iget-boolean v10, v12, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v10, :cond_72

    invoke-virtual {v3, v13}, Linet/ipaddr/format/validate/IPAddressParseData;->setHasIPv4LeadingZeros(Z)V

    :cond_71
    const/16 v10, 0xa

    goto :goto_3b

    :cond_72
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :goto_3b
    if-gt v4, v10, :cond_75

    if-eqz v17, :cond_74

    if-gez v1, :cond_73

    move-wide v10, v6

    move-object v6, v12

    move-object/from16 v12, p2

    move v7, v13

    move v13, v0

    move-object/from16 v93, v14

    move v14, v5

    move/from16 v81, v15

    move/from16 v15, v35

    move-object/from16 v16, v77

    move/from16 v17, v8

    move/from16 v18, v81

    move-object/from16 v19, v76

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->switchSingleWildcard10(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    move v10, v0

    move v11, v4

    move-object/from16 v48, v6

    move v4, v7

    move/from16 v21, v4

    move/from16 v28, v8

    move-wide/from16 v6, v41

    move-object/from16 v94, v76

    move-object/from16 v8, v79

    move/from16 v14, v81

    move/from16 v51, v89

    move-object/from16 v13, v93

    const/16 v0, 0xa

    const/4 v12, 0x0

    goto/16 :goto_39

    :cond_73
    move v7, v13

    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5, v7}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_74
    move-object/from16 v93, v14

    move/from16 v81, v15

    move-object v14, v12

    move v15, v13

    invoke-static {v6, v7, v9, v4}, Linet/ipaddr/format/validate/Validator;->switchValue10(JLjava/lang/CharSequence;I)J

    move-result-wide v6

    move v10, v0

    move v11, v4

    move/from16 v28, v8

    move-object/from16 v48, v14

    move v4, v15

    move/from16 v12, v43

    move-object/from16 v94, v76

    move-object/from16 v8, v79

    move/from16 v14, v81

    move/from16 v51, v89

    move-object/from16 v13, v93

    const/16 v0, 0xa

    const/16 v21, 0x0

    goto/16 :goto_43

    :cond_75
    move-object/from16 v93, v14

    move/from16 v81, v15

    new-instance v0, Linet/ipaddr/AddressStringException;

    move/from16 v13, v81

    move-object/from16 v12, v93

    invoke-direct {v0, v9, v12, v13}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :goto_3c
    if-eqz v20, :cond_7e

    const/4 v10, 0x4

    if-gt v4, v10, :cond_7d

    add-int v11, v4, p4

    move/from16 v15, v89

    if-gez v15, :cond_7c

    if-lez p4, :cond_77

    iget-boolean v15, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v15, :cond_76

    goto :goto_3d

    :cond_76
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_77
    :goto_3d
    iget-boolean v15, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    if-nez v15, :cond_78

    if-gt v11, v10, :cond_79

    :cond_78
    move/from16 v28, v8

    move-object/from16 v15, v79

    goto :goto_3e

    :cond_79
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v12, v13}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :goto_3e
    iget-boolean v8, v15, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    if-nez v8, :cond_7b

    if-lt v11, v10, :cond_7a

    goto :goto_3f

    :cond_7a
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.segment.too.short.at.index"

    invoke-direct {v0, v9, v1, v13}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_7b
    :goto_3f
    move/from16 v22, v4

    move-object v8, v15

    move-object/from16 v15, v76

    const/4 v4, 0x1

    const/16 v11, 0x8

    goto :goto_41

    :cond_7c
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v15}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_7d
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v12, v13}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_7e
    move/from16 v28, v8

    move-object/from16 v8, v79

    const/4 v10, 0x4

    iget-boolean v11, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v11, :cond_b6

    move-object/from16 v15, v76

    iget-boolean v11, v15, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    if-eqz v11, :cond_b5

    if-eqz v16, :cond_7f

    iget-boolean v11, v15, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_leading_zeros:Z

    if-eqz v11, :cond_80

    :cond_7f
    const/16 v11, 0x8

    goto :goto_40

    :cond_80
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :goto_40
    if-gt v4, v11, :cond_b4

    move/from16 v22, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Linet/ipaddr/format/validate/IPAddressParseData;->set_has_inet_aton_value(Z)V

    :goto_41
    if-eqz v17, :cond_82

    if-gez v1, :cond_81

    move v4, v10

    move-wide v10, v6

    move-object v6, v12

    move-object/from16 v12, p2

    move v7, v13

    move v13, v0

    move-object/from16 v48, v14

    move v14, v5

    move-object/from16 v94, v15

    const/4 v4, 0x1

    move/from16 v15, v35

    move-object/from16 v16, v77

    move/from16 v17, v28

    move/from16 v18, v7

    move-object/from16 v19, v48

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->assignSingleWildcard16(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    move v10, v4

    move-object v13, v6

    move v14, v7

    move-wide/from16 v6, v41

    const/16 v35, 0x0

    goto :goto_42

    :cond_81
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_82
    move-object/from16 v48, v14

    move-object/from16 v94, v15

    move v14, v13

    move-object v13, v12

    const/4 v10, 0x0

    :goto_42
    move/from16 v21, v10

    move/from16 v11, v22

    move/from16 v51, v40

    const/4 v12, 0x0

    move v10, v0

    const/16 v0, 0x10

    :goto_43
    move-wide/from16 v85, v6

    move v6, v10

    move/from16 v10, v21

    move-wide/from16 v81, v41

    const/16 v17, 0x0

    const/16 v50, 0x0

    :goto_44
    if-ltz v1, :cond_b2

    move/from16 v7, v62

    sub-int v10, v1, v7

    move/from16 v15, v78

    sub-int v4, v10, v15

    move/from16 v16, v6

    move/from16 v24, v14

    move-object/from16 v14, v48

    iget-object v6, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v6}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsRangeSeparator()Z

    move-result v6

    if-eqz v6, :cond_b1

    if-gtz v53, :cond_b0

    if-gtz v46, :cond_b0

    if-ne v10, v1, :cond_83

    const/4 v6, 0x1

    goto :goto_45

    :cond_83
    const/4 v6, 0x0

    :goto_45
    if-lez v15, :cond_84

    const/16 v18, 0x1

    goto :goto_46

    :cond_84
    const/16 v18, 0x0

    :goto_46
    move/from16 v19, v0

    if-nez v20, :cond_85

    move/from16 v0, v52

    if-ltz v0, :cond_86

    move/from16 v52, v0

    :cond_85
    move/from16 v83, v1

    move-object/from16 v79, v8

    move/from16 v21, v10

    move-wide/from16 v0, v56

    move-object/from16 v12, v88

    move-object/from16 v8, v94

    const/16 v10, 0x10

    goto/16 :goto_50

    :cond_86
    if-eqz v18, :cond_90

    move-object/from16 v79, v8

    iget-boolean v8, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v8, :cond_8f

    move/from16 v52, v0

    move-object/from16 v8, v94

    iget-boolean v0, v8, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    if-eqz v0, :cond_8a

    invoke-static {v9, v10}, Linet/ipaddr/format/validate/Validator;->isBinaryDelimiter(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v0, 0x21

    if-gt v7, v0, :cond_89

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Linet/ipaddr/format/validate/IPAddressParseData;->setHasBinaryDigits(Z)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, -0x1

    const/16 v0, 0x10

    if-le v7, v0, :cond_87

    invoke-static {v9, v10, v1}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v21

    move/from16 v83, v1

    move-wide/from16 v0, v56

    goto :goto_47

    :cond_87
    move/from16 v83, v1

    move-wide/from16 v0, v56

    invoke-static {v0, v1, v9, v7}, Linet/ipaddr/format/validate/Validator;->switchValue2(JLjava/lang/CharSequence;I)J

    move-result-wide v21

    :goto_47
    if-eqz v11, :cond_88

    cmp-long v23, v21, v85

    if-lez v23, :cond_88

    const/16 v23, 0x1

    goto :goto_48

    :cond_88
    const/16 v23, 0x0

    :goto_48
    move-wide/from16 v25, v21

    move/from16 v21, v10

    const/4 v10, 0x2

    goto :goto_4b

    :cond_89
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v13, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_8a
    move/from16 v83, v1

    move-wide/from16 v0, v56

    move/from16 v21, v10

    iget-boolean v10, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_octal:Z

    if-eqz v10, :cond_91

    const/4 v10, 0x1

    if-le v15, v10, :cond_8c

    iget-boolean v10, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_leading_zeros:Z

    if-eqz v10, :cond_8b

    goto :goto_49

    :cond_8b
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_8c
    :goto_49
    const/16 v10, 0xb

    if-gt v7, v10, :cond_8e

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Linet/ipaddr/format/validate/IPAddressParseData;->set_has_inet_aton_value(Z)V

    invoke-static {v0, v1, v9, v7}, Linet/ipaddr/format/validate/Validator;->switchValue8(JLjava/lang/CharSequence;I)J

    move-result-wide v22

    if-eqz v11, :cond_8d

    cmp-long v10, v22, v85

    if-lez v10, :cond_8d

    const/4 v10, 0x1

    goto :goto_4a

    :cond_8d
    const/4 v10, 0x0

    :goto_4a
    move-wide/from16 v25, v22

    move/from16 v23, v10

    const/16 v10, 0x8

    goto :goto_4b

    :cond_8e
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v13, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_8f
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_90
    move/from16 v52, v0

    move/from16 v83, v1

    move-object/from16 v79, v8

    move/from16 v21, v10

    move-wide/from16 v0, v56

    move-object/from16 v8, v94

    :cond_91
    move-wide/from16 v25, v41

    const/4 v10, 0x0

    const/16 v23, 0x0

    :goto_4b
    if-nez v10, :cond_9a

    if-eqz v6, :cond_93

    iget-object v2, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v2}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsInferredBoundary()Z

    move-result v2

    if-eqz v2, :cond_92

    const/high16 v2, 0x200000

    or-int v17, v17, v2

    move-object v2, v3

    move/from16 v78, v15

    move/from16 v10, v21

    move/from16 v3, v52

    move-object/from16 v15, v79

    const/16 v6, 0xa

    goto/16 :goto_5a

    :cond_92
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v12, v88

    invoke-direct {v0, v9, v12, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_93
    const/16 v6, 0xa

    if-gt v7, v6, :cond_99

    invoke-static {v0, v1, v9, v7}, Linet/ipaddr/format/validate/Validator;->switchValue10(JLjava/lang/CharSequence;I)J

    move-result-wide v25

    if-eqz v18, :cond_95

    iget-boolean v10, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v10, :cond_94

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Linet/ipaddr/format/validate/IPAddressParseData;->setHasIPv4LeadingZeros(Z)V

    goto :goto_4c

    :cond_94
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_95
    :goto_4c
    if-eqz v11, :cond_96

    cmp-long v2, v25, v85

    if-lez v2, :cond_96

    const/4 v10, 0x1

    goto :goto_4d

    :cond_96
    const/4 v10, 0x0

    :goto_4d
    if-nez v10, :cond_97

    if-nez p4, :cond_98

    and-int v2, v12, v43

    if-eqz v2, :cond_98

    const/high16 v2, 0xc0000

    or-int v17, v17, v2

    :cond_97
    :goto_4e
    move-object v2, v3

    move/from16 v23, v10

    :goto_4f
    move/from16 v78, v15

    move/from16 v10, v21

    move/from16 v3, v52

    move-object/from16 v15, v79

    goto/16 :goto_5a

    :cond_98
    or-int v17, v17, v43

    goto :goto_4e

    :cond_99
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v13, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_9a
    move-object v2, v3

    move v6, v10

    goto :goto_4f

    :goto_50
    if-eqz v20, :cond_a6

    add-int v10, v7, v15

    if-gez v52, :cond_a5

    move/from16 v78, v15

    if-eqz v18, :cond_9c

    iget-boolean v15, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v15, :cond_9b

    goto :goto_51

    :cond_9b
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_9c
    :goto_51
    iget-boolean v2, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    if-nez v2, :cond_9e

    const/4 v2, 0x4

    if-gt v10, v2, :cond_9d

    :goto_52
    move-object/from16 v15, v79

    goto :goto_53

    :cond_9d
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v13, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_9e
    const/4 v2, 0x4

    goto :goto_52

    :goto_53
    iget-boolean v3, v15, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    if-nez v3, :cond_a0

    if-lt v10, v2, :cond_9f

    goto :goto_54

    :cond_9f
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.segment.too.short.at.index"

    invoke-direct {v0, v9, v1, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_a0
    :goto_54
    if-eqz v6, :cond_a2

    iget-object v2, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v2}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsInferredBoundary()Z

    move-result v2

    if-eqz v2, :cond_a1

    const/high16 v2, 0x200000

    or-int v17, v17, v2

    move-wide/from16 v56, v41

    const/4 v10, 0x0

    goto :goto_56

    :cond_a1
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v12, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_a2
    const/4 v2, 0x4

    if-gt v7, v2, :cond_a4

    cmp-long v2, v0, v85

    if-lez v2, :cond_a3

    if-eqz v11, :cond_a3

    const/4 v10, 0x1

    goto :goto_55

    :cond_a3
    const/4 v10, 0x0

    :goto_55
    move-wide/from16 v56, v0

    :goto_56
    move-object/from16 v2, p5

    move/from16 v23, v10

    move/from16 v3, v52

    goto :goto_59

    :cond_a4
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v13, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_a5
    new-instance v0, Linet/ipaddr/AddressStringException;

    move/from16 v3, v52

    invoke-direct {v0, v9, v3}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_a6
    move/from16 v78, v15

    move/from16 v3, v52

    move-object/from16 v15, v79

    iget-boolean v10, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v10, :cond_af

    iget-boolean v10, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    if-eqz v10, :cond_ae

    if-eqz v18, :cond_a8

    iget-boolean v10, v8, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_leading_zeros:Z

    if-eqz v10, :cond_a7

    goto :goto_57

    :cond_a7
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_a8
    :goto_57
    if-nez v6, :cond_ad

    const/16 v2, 0x8

    if-gt v7, v2, :cond_ac

    move-object/from16 v2, p5

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Linet/ipaddr/format/validate/IPAddressParseData;->set_has_inet_aton_value(Z)V

    cmp-long v6, v0, v85

    if-lez v6, :cond_a9

    if-eqz v11, :cond_a9

    const/4 v10, 0x1

    goto :goto_58

    :cond_a9
    const/4 v10, 0x0

    :goto_58
    move-wide/from16 v56, v0

    move/from16 v23, v10

    :goto_59
    move/from16 v10, v21

    move-wide/from16 v25, v56

    const/16 v6, 0x10

    :goto_5a
    if-eqz v23, :cond_ab

    iget-object v11, v14, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v11}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsReverseRange()Z

    move-result v11

    if-eqz v11, :cond_aa

    move/from16 v22, v5

    move/from16 v34, v6

    move/from16 v21, v16

    move/from16 v23, v24

    move-wide/from16 v31, v25

    move/from16 v25, v83

    move-wide/from16 v29, v85

    move/from16 v26, v4

    move/from16 v24, v10

    goto :goto_5b

    :cond_aa
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.invalidRange"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_ab
    move/from16 v23, v4

    move/from16 v21, v10

    move/from16 v34, v19

    move-wide/from16 v29, v25

    move/from16 v22, v83

    move-wide/from16 v31, v85

    move/from16 v25, v5

    move/from16 v19, v6

    move/from16 v26, v24

    move/from16 v24, v16

    :goto_5b
    const/high16 v4, 0x100000

    or-int v4, v17, v4

    or-int v33, v4, v19

    move-object/from16 v27, v77

    invoke-static/range {v21 .. v34}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJII)V

    move-object/from16 v76, v14

    move-object v11, v15

    move/from16 v4, v40

    :goto_5c
    move/from16 v6, v78

    goto/16 :goto_5d

    :cond_ac
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v13, v4}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_ad
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v12, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_ae
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.ipv4.segment.hex"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_af
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_b0
    move/from16 v83, v1

    new-instance v0, Linet/ipaddr/AddressStringException;

    move/from16 v4, v83

    const/4 v1, 0x1

    invoke-direct {v0, v9, v4, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_b1
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.no.range"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_b2
    move/from16 v19, v0

    move v4, v1

    move-object v2, v3

    move/from16 v16, v6

    move-object v15, v8

    move/from16 v24, v14

    move-object/from16 v14, v48

    move/from16 v3, v52

    move-wide/from16 v0, v56

    move/from16 v7, v62

    move-object/from16 v8, v94

    if-nez v10, :cond_b3

    or-int v19, v12, v19

    move/from16 v12, v16

    move v13, v5

    move-object/from16 v76, v14

    move/from16 v14, v24

    move-object v11, v15

    move/from16 v6, v78

    move-object/from16 v15, v77

    move/from16 v16, v28

    move-wide/from16 v17, v85

    invoke-static/range {v12 .. v19}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIILinet/ipaddr/format/validate/AddressParseData;IJI)V

    goto :goto_5d

    :cond_b3
    move-object/from16 v76, v14

    move-object v11, v15

    goto :goto_5c

    :goto_5d
    move/from16 v83, v4

    const/4 v10, 0x0

    :goto_5e
    invoke-virtual/range {v77 .. v77}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    add-int/lit8 v4, v5, 0x1

    move/from16 v78, v6

    move/from16 v62, v7

    move-object/from16 v48, v8

    move-object/from16 v79, v11

    move-object/from16 v56, v37

    move/from16 v16, v50

    move-wide/from16 v12, v58

    move/from16 v66, v63

    move/from16 v21, v68

    move/from16 v17, v69

    move/from16 v34, v72

    move-object/from16 v37, v75

    move-object/from16 v26, v76

    move-object/from16 v50, v77

    move-wide/from16 v74, v81

    const/16 v63, 0x0

    move-wide v6, v0

    move-object v8, v2

    move/from16 v58, v3

    move v11, v4

    move/from16 v81, v11

    move v1, v10

    move/from16 v10, v65

    move/from16 v0, v83

    const/4 v3, 0x1

    goto/16 :goto_b3

    :cond_b4
    move/from16 v24, v13

    move-object v13, v12

    new-instance v0, Linet/ipaddr/AddressStringException;

    move/from16 v14, v24

    invoke-direct {v0, v9, v13, v14}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_b5
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.ipv4.segment.hex"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_b6
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_b7
    move-object v9, v15

    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.ipv4.too.many.segments"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_b8
    move-object/from16 v88, v5

    move v5, v11

    move/from16 v44, v13

    move-object/from16 v92, v14

    move-object v9, v15

    move-object/from16 v95, v21

    move/from16 v15, v51

    move/from16 v3, v52

    move-wide/from16 v51, v56

    move/from16 v12, v62

    move/from16 v8, v65

    move/from16 v0, v78

    move/from16 v14, v81

    move/from16 v4, v83

    const/16 v1, 0x3a

    const/16 v11, 0x8

    const/16 v73, 0x0

    move-object/from16 v13, p5

    move-object/from16 v65, v10

    move-object/from16 v10, p4

    if-ne v2, v1, :cond_b9

    move/from16 v78, v0

    move-wide/from16 v74, v6

    move v0, v12

    move/from16 v57, v38

    move-object/from16 v6, v65

    move/from16 v2, v66

    move-object/from16 v1, v72

    move-object/from16 v96, v79

    move-object/from16 v7, v88

    move-object/from16 v97, v92

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5f
    const/16 v21, 0x6

    const/16 v56, 0x4

    move/from16 v65, v8

    move v8, v15

    move-object/from16 v15, v95

    goto/16 :goto_7c

    :cond_b9
    const/16 v1, 0x2d

    if-ne v2, v1, :cond_ba

    const/4 v1, 0x1

    goto :goto_60

    :cond_ba
    const/4 v1, 0x0

    :goto_60
    if-nez v1, :cond_bb

    if-eqz v20, :cond_bc

    const/16 v11, 0x7c

    if-ne v2, v11, :cond_bc

    :cond_bb
    move-wide/from16 v74, v6

    move-object/from16 v11, v80

    const/16 v56, 0x4

    goto/16 :goto_71

    :cond_bc
    if-eqz v20, :cond_bd

    const/16 v11, 0x20

    if-ne v2, v11, :cond_bd

    move/from16 v78, v0

    move v11, v1

    move-wide/from16 v74, v6

    move v0, v12

    move/from16 v57, v38

    move-object/from16 v6, v65

    move/from16 v2, v66

    move-object/from16 v1, v72

    move-object/from16 v96, v79

    move-object/from16 v7, v88

    move-object/from16 v97, v92

    const/4 v12, 0x1

    goto :goto_5f

    :cond_bd
    const/16 v1, 0x2f

    if-ne v2, v1, :cond_bf

    if-nez v20, :cond_be

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Linet/ipaddr/format/validate/IPAddressParseData;->setHasPrefixSeparator(Z)V

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v13, v11}, Linet/ipaddr/format/validate/IPAddressParseData;->setQualifierIndex(I)V

    move v2, v5

    move v11, v2

    move-object/from16 p4, v10

    move/from16 v13, v44

    move-object/from16 v1, v45

    move-wide/from16 v56, v51

    move/from16 v22, v61

    move/from16 v18, v64

    move/from16 v19, v67

    move/from16 v21, v68

    move-object/from16 v26, v72

    move-object/from16 v25, v76

    move-object/from16 v24, v79

    move/from16 v27, v84

    move v5, v0

    move/from16 v52, v3

    move v0, v4

    move-wide/from16 v43, v6

    move v10, v8

    move v7, v12

    move/from16 v45, v14

    move/from16 v51, v15

    move/from16 v3, v66

    move-object/from16 v4, v77

    move-object/from16 v6, v80

    move-object/from16 v8, p0

    move/from16 v14, p3

    move-object/from16 v12, p6

    move-object v15, v9

    goto/16 :goto_29

    :cond_be
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_bf
    const/16 v1, 0x41

    if-lt v2, v1, :cond_c0

    const/16 v1, 0x46

    if-gt v2, v1, :cond_c0

    add-int/lit8 v11, v5, 0x1

    const/16 v56, 0x4

    shl-long v5, v6, v56

    aget v1, v39, v2

    int-to-long v1, v1

    or-long/2addr v1, v5

    move v5, v0

    move v0, v4

    move-object/from16 p4, v10

    move v7, v12

    move/from16 v13, v44

    move-wide/from16 v56, v51

    move/from16 v22, v61

    move/from16 v18, v64

    move/from16 v19, v67

    move/from16 v21, v68

    move-object/from16 v26, v72

    move-object/from16 v25, v76

    move-object/from16 v4, v77

    move-object/from16 v24, v79

    move-object/from16 v6, v80

    move/from16 v27, v84

    const/16 v50, 0x1

    const/16 v54, 0x1

    move-object/from16 v12, p6

    move-wide/from16 v43, v1

    move/from16 v52, v3

    move v10, v8

    move/from16 v51, v15

    move-object/from16 v1, v45

    move/from16 v2, v63

    :goto_61
    move/from16 v3, v66

    move-object/from16 v8, p0

    move-object v15, v9

    move/from16 v45, v14

    move-object/from16 v9, p1

    :goto_62
    move/from16 v14, p3

    goto/16 :goto_2

    :cond_c0
    const/16 v1, 0x2a

    if-ne v2, v1, :cond_c1

    const/4 v1, 0x1

    goto :goto_63

    :cond_c1
    const/4 v1, 0x0

    :goto_63
    if-eqz v1, :cond_c2

    const/4 v11, 0x0

    goto :goto_65

    :cond_c2
    const/16 v1, 0x25

    if-ne v2, v1, :cond_c3

    const/4 v1, 0x1

    goto :goto_64

    :cond_c3
    const/4 v1, 0x0

    :goto_64
    move v11, v1

    :goto_65
    if-eqz v1, :cond_cb

    if-eqz v11, :cond_c9

    if-nez v20, :cond_c9

    move-object/from16 v11, v80

    iget-boolean v1, v11, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    if-eqz v1, :cond_c8

    invoke-virtual/range {v77 .. v77}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v1

    if-lez v1, :cond_c6

    if-nez p7, :cond_c4

    invoke-virtual/range {p5 .. p5}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v1

    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    if-eq v1, v2, :cond_c4

    goto :goto_67

    :cond_c4
    move-wide/from16 v74, v6

    :cond_c5
    :goto_66
    const/4 v1, 0x1

    goto :goto_69

    :cond_c6
    :goto_67
    sub-int v1, v5, v14

    move-wide/from16 v74, v6

    if-ltz v4, :cond_c7

    const/4 v2, 0x1

    goto :goto_68

    :cond_c7
    const/4 v2, 0x0

    :goto_68
    add-int v6, v0, v12

    invoke-static {v1, v2, v6, v11}, Linet/ipaddr/format/validate/Validator;->isSingleSegmentIPv6(IZILinet/ipaddr/ipv6/IPv6AddressStringParameters;)Z

    move-result v1

    if-nez v1, :cond_c5

    if-ne v8, v5, :cond_ca

    const/16 v1, 0x13

    if-gt v8, v1, :cond_ca

    goto :goto_66

    :goto_69
    invoke-virtual {v13, v1}, Linet/ipaddr/format/validate/IPAddressParseData;->setZoned(Z)V

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v13, v1}, Linet/ipaddr/format/validate/IPAddressParseData;->setQualifierIndex(I)V

    move v1, v5

    move v2, v1

    const/16 v34, 0x0

    goto/16 :goto_70

    :cond_c8
    move-wide/from16 v74, v6

    goto :goto_6a

    :cond_c9
    move-wide/from16 v74, v6

    move-object/from16 v11, v80

    :cond_ca
    :goto_6a
    add-int/lit8 v1, v8, 0x1

    add-int/lit8 v2, v5, 0x1

    move v8, v1

    move v1, v2

    :goto_6b
    move/from16 v2, v63

    goto/16 :goto_70

    :cond_cb
    move-wide/from16 v74, v6

    move-object/from16 v11, v80

    const/16 v1, 0x5f

    if-ne v2, v1, :cond_cc

    add-int/lit8 v1, v5, 0x1

    add-int/lit8 v35, v35, 0x1

    move/from16 v2, v63

    const/16 v50, 0x1

    goto/16 :goto_70

    :cond_cc
    invoke-static {v2}, Linet/ipaddr/format/validate/Validator;->isHexDelimiter(C)Z

    move-result v1

    if-eqz v1, :cond_d5

    if-nez v50, :cond_d2

    if-eqz v49, :cond_d2

    if-gtz v48, :cond_d2

    if-gez v15, :cond_d2

    if-lez v35, :cond_cd

    goto :goto_6d

    :cond_cd
    if-eqz v20, :cond_cf

    invoke-virtual/range {v77 .. v77}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v1

    if-gtz v1, :cond_ce

    goto :goto_6c

    :cond_ce
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_cf
    if-eqz v37, :cond_d1

    invoke-virtual/range {v37 .. v37}, Linet/ipaddr/IPAddress$IPVersion;->isIPv6()Z

    move-result v1

    if-nez v1, :cond_d0

    goto :goto_6c

    :cond_d0
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_d1
    :goto_6c
    add-int/lit8 v1, v5, 0x1

    move v14, v1

    move v15, v5

    move/from16 v2, v63

    const/16 v49, 0x0

    goto/16 :goto_70

    :cond_d2
    :goto_6d
    if-eqz v34, :cond_d4

    if-gez v44, :cond_d3

    :goto_6e
    move/from16 v44, v5

    :cond_d3
    add-int/lit8 v1, v5, 0x1

    goto :goto_6b

    :cond_d4
    new-instance v0, Linet/ipaddr/AddressStringException;

    const/4 v1, 0x1

    invoke-direct {v0, v9, v5, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_d5
    const/16 v1, 0xbb

    if-ne v2, v1, :cond_d9

    if-eqz v34, :cond_d8

    if-gez v44, :cond_d6

    move/from16 v44, v5

    goto :goto_6f

    :cond_d6
    if-gez v47, :cond_d7

    :goto_6f
    add-int/lit8 v1, v5, 0x1

    move/from16 v47, v5

    goto :goto_6b

    :cond_d7
    new-instance v0, Linet/ipaddr/AddressStringException;

    const/4 v1, 0x1

    invoke-direct {v0, v9, v5, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_d8
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_d9
    const/4 v1, 0x1

    const/16 v6, 0xa7

    if-ne v2, v6, :cond_db

    if-eqz v34, :cond_da

    if-nez v20, :cond_da

    iget-boolean v2, v11, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    if-eqz v2, :cond_da

    invoke-virtual {v13, v1}, Linet/ipaddr/format/validate/IPAddressParseData;->setZoned(Z)V

    invoke-virtual {v13, v1}, Linet/ipaddr/format/validate/IPAddressParseData;->setBase85Zoned(Z)V

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v13, v1}, Linet/ipaddr/format/validate/IPAddressParseData;->setQualifierIndex(I)V

    move v1, v5

    move v2, v1

    goto :goto_70

    :cond_da
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_db
    if-eqz v34, :cond_de

    if-ltz v2, :cond_dd

    sget-object v1, Linet/ipaddr/format/validate/Validator;->extendedChars:[I

    array-length v6, v1

    if-ge v2, v6, :cond_dd

    aget v1, v1, v2

    if-eqz v1, :cond_dc

    if-gez v44, :cond_d3

    goto :goto_6e

    :goto_70
    move v5, v0

    move v0, v4

    move-object/from16 p4, v10

    move-object v6, v11

    move v7, v12

    move/from16 v13, v44

    move-wide/from16 v56, v51

    move/from16 v22, v61

    move/from16 v18, v64

    move/from16 v19, v67

    move/from16 v21, v68

    move-object/from16 v26, v72

    move-wide/from16 v43, v74

    move-object/from16 v25, v76

    move-object/from16 v4, v77

    move-object/from16 v24, v79

    move/from16 v27, v84

    move-object/from16 v12, p6

    move v11, v1

    move/from16 v52, v3

    move v10, v8

    move/from16 v51, v15

    move-object/from16 v1, v45

    goto/16 :goto_61

    :cond_dc
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_dd
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_de
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :goto_71
    xor-int/lit8 v2, v1, 0x1

    if-eqz v20, :cond_f1

    if-nez v10, :cond_ee

    if-ltz v4, :cond_ec

    if-nez v38, :cond_ec

    if-gez v3, :cond_eb

    if-gez v15, :cond_ea

    move-object/from16 v7, p1

    move-object v6, v11

    iget-boolean v2, v7, Linet/ipaddr/MACAddressStringParameters;->allowDashed:Z

    if-eqz v2, :cond_e9

    sget-object v2, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DASHED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    move-object/from16 v10, p6

    invoke-virtual {v10, v2}, Linet/ipaddr/format/validate/MACAddressParseData;->setFormat(Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;)V

    move/from16 p4, v1

    move-object/from16 v11, v77

    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Linet/ipaddr/format/validate/AddressParseData;->initSegmentData(I)V

    move-object/from16 v57, v2

    move-object/from16 v1, v72

    if-lez v46, :cond_e3

    iget-object v2, v1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v2}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsWildcard()Z

    move-result v2

    if-eqz v2, :cond_e2

    if-gtz v53, :cond_e1

    if-gtz v0, :cond_e1

    if-gtz v12, :cond_e1

    if-gez v3, :cond_e1

    invoke-virtual {v11}, Linet/ipaddr/format/validate/AddressParseData;->setHasWildcard()V

    sub-int v2, v5, v14

    const/4 v14, 0x6

    if-nez v84, :cond_e0

    if-ne v2, v14, :cond_df

    goto :goto_72

    :cond_df
    const-wide/16 v31, 0xff

    goto :goto_73

    :cond_e0
    :goto_72
    const-wide/32 v16, 0xffffff

    move-wide/from16 v31, v16

    :goto_73
    sub-int v26, v4, v46

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/high16 v33, 0x10000

    move/from16 v21, v26

    move/from16 v22, v4

    move/from16 v23, v26

    move/from16 v24, v26

    move/from16 v25, v4

    move-object/from16 v27, v11

    invoke-static/range {v21 .. v33}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJI)V

    move/from16 v78, v0

    move-object/from16 v80, v6

    move-object/from16 v77, v11

    move v0, v12

    move/from16 v21, v14

    move-object/from16 v6, v65

    move-object/from16 v96, v79

    move-object/from16 v7, v88

    move-object/from16 v97, v92

    move-object/from16 v2, v95

    move/from16 v65, v8

    move v8, v15

    goto/16 :goto_76

    :cond_e1
    new-instance v0, Linet/ipaddr/AddressStringException;

    const/4 v1, 0x1

    invoke-direct {v0, v9, v4, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_e2
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.no.wildcard"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_e3
    const/4 v14, 0x6

    iget-boolean v2, v1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-nez v2, :cond_e4

    if-gtz v0, :cond_e5

    :cond_e4
    move-object/from16 v2, v95

    goto :goto_74

    :cond_e5
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v2, v95

    invoke-direct {v0, v9, v2}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :goto_74
    sub-int v14, v4, v12

    sub-int v18, v14, v0

    if-lez v53, :cond_e6

    const/16 v17, 0x0

    move/from16 v78, v0

    move-object/from16 v80, v6

    move-object v0, v10

    move-object/from16 v77, v11

    move-object/from16 v6, v65

    move-object/from16 v96, v79

    move-wide/from16 v10, v51

    move v0, v12

    move-object/from16 v7, v88

    move-object/from16 v12, p2

    move-object/from16 v97, v92

    move v13, v14

    const/16 v21, 0x6

    move v14, v4

    move/from16 v65, v8

    move v8, v15

    move/from16 v15, v35

    move-object/from16 v16, v77

    move-object/from16 v19, v1

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->assignSingleWildcard16(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    goto :goto_76

    :cond_e6
    move/from16 v78, v0

    move-object/from16 v80, v6

    move-object/from16 v77, v11

    move v0, v12

    move-object/from16 v6, v65

    move-object/from16 v96, v79

    move-object/from16 v7, v88

    move-object/from16 v97, v92

    const/16 v21, 0x6

    move/from16 v65, v8

    move v8, v15

    if-eqz v55, :cond_e7

    const/16 v19, 0x0

    goto :goto_75

    :cond_e7
    if-eqz v0, :cond_e8

    move/from16 v19, v43

    :goto_75
    const/16 v16, 0x0

    move v12, v14

    move v13, v4

    move/from16 v14, v18

    move-object/from16 v15, v77

    move-wide/from16 v17, v51

    invoke-static/range {v12 .. v19}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIILinet/ipaddr/format/validate/AddressParseData;IJI)V

    :goto_76
    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v77 .. v77}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    move-object v15, v2

    move v14, v4

    move/from16 v66, v14

    move/from16 v2, v38

    move/from16 v4, v40

    move-object/from16 v10, v57

    const/16 v17, 0x1

    const/16 v68, 0x0

    :goto_77
    move/from16 v38, p4

    goto/16 :goto_7a

    :cond_e8
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v7, v14}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_e9
    move-object/from16 v6, v65

    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_ea
    move v8, v15

    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v8}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_eb
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v3}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_ec
    move/from16 v78, v0

    move/from16 p4, v1

    move-object/from16 v80, v11

    move v0, v12

    move-object/from16 v6, v65

    move-object/from16 v1, v72

    move-object/from16 v96, v79

    move-object/from16 v7, v88

    move-object/from16 v97, v92

    const/16 v21, 0x6

    move/from16 v65, v8

    move v8, v15

    move-object/from16 v15, v95

    if-eqz v2, :cond_ed

    const/4 v2, 0x1

    :goto_78
    const/16 v38, 0x0

    goto :goto_7a

    :cond_ed
    move/from16 v2, v38

    goto :goto_7a

    :cond_ee
    move/from16 v78, v0

    move/from16 p4, v1

    move-object/from16 v80, v11

    move v0, v12

    move-object/from16 v6, v65

    move-object/from16 v1, v72

    move-object/from16 v96, v79

    move-object/from16 v7, v88

    move-object/from16 v97, v92

    const/16 v21, 0x6

    move/from16 v65, v8

    move v8, v15

    move-object/from16 v15, v95

    sget-object v11, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DASHED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    if-ne v10, v11, :cond_ef

    move/from16 v2, v38

    goto :goto_77

    :cond_ef
    if-nez v2, :cond_f0

    goto :goto_79

    :cond_f0
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_f1
    move/from16 v78, v0

    move/from16 p4, v1

    move-object/from16 v80, v11

    move v0, v12

    move-object/from16 v6, v65

    move-object/from16 v1, v72

    move-object/from16 v96, v79

    move-object/from16 v7, v88

    move-object/from16 v97, v92

    const/16 v21, 0x6

    move/from16 v65, v8

    move v8, v15

    move-object/from16 v15, v95

    :goto_79
    move/from16 v2, v38

    goto :goto_78

    :goto_7a
    if-nez v38, :cond_f6

    if-gez v44, :cond_f5

    if-ltz v4, :cond_f3

    if-eqz v34, :cond_f2

    add-int/lit8 v11, v5, 0x1

    move-object/from16 v12, p6

    move v7, v0

    move-object/from16 v26, v1

    move/from16 v38, v2

    move v0, v4

    move v13, v5

    move-object v15, v9

    move-object/from16 p4, v10

    :goto_7b
    move-object/from16 v1, v45

    move-wide/from16 v56, v51

    move/from16 v22, v61

    move/from16 v2, v63

    move/from16 v18, v64

    move/from16 v10, v65

    move/from16 v19, v67

    move/from16 v21, v68

    move-wide/from16 v43, v74

    move-object/from16 v25, v76

    move-object/from16 v4, v77

    move/from16 v5, v78

    move-object/from16 v6, v80

    move/from16 v27, v84

    move-object/from16 v24, v96

    move-object/from16 v9, p1

    move/from16 v52, v3

    move/from16 v51, v8

    move/from16 v45, v14

    move/from16 v3, v66

    move-object/from16 v8, p0

    goto/16 :goto_62

    :cond_f2
    new-instance v0, Linet/ipaddr/AddressStringException;

    const/4 v3, 0x1

    invoke-direct {v0, v9, v5, v3}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_f3
    const/4 v3, 0x1

    sub-int v11, v5, v14

    sub-int v11, v11, v48

    sub-int v11, v11, v65

    if-eqz v49, :cond_f4

    if-eq v11, v3, :cond_f4

    add-int/lit8 v48, v48, 0x1

    add-int/lit8 v11, v11, -0x1

    :cond_f4
    move v7, v11

    add-int/lit8 v11, v5, 0x1

    move/from16 v14, p3

    move/from16 v60, p4

    move-object/from16 v12, p6

    move-object/from16 v26, v1

    move/from16 v38, v2

    move v0, v5

    move/from16 v52, v8

    move-object v15, v9

    move-object/from16 p4, v10

    move/from16 v53, v35

    move/from16 v51, v40

    move/from16 v13, v44

    move-object/from16 v1, v45

    move/from16 v5, v48

    move/from16 v55, v54

    move/from16 v22, v61

    move/from16 v2, v63

    move/from16 v18, v64

    move/from16 v46, v65

    move/from16 v3, v66

    move/from16 v19, v67

    move/from16 v21, v68

    move-wide/from16 v56, v74

    move-object/from16 v25, v76

    move-object/from16 v4, v77

    move-object/from16 v6, v80

    move/from16 v27, v84

    move-object/from16 v24, v96

    const/4 v10, 0x0

    const/16 v35, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v54, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v45, v11

    move-wide/from16 v43, v41

    goto/16 :goto_2

    :cond_f5
    add-int/lit8 v11, v5, 0x1

    move-object/from16 v12, p6

    move v7, v0

    move-object/from16 v26, v1

    move/from16 v38, v2

    move v0, v4

    move-object v15, v9

    move-object/from16 p4, v10

    move/from16 v13, v44

    goto/16 :goto_7b

    :cond_f6
    move/from16 v11, p4

    move/from16 v57, v2

    move/from16 v2, v66

    const/4 v12, 0x0

    :goto_7c
    invoke-virtual/range {v77 .. v77}, Linet/ipaddr/format/validate/AddressParseData;->getSegmentCount()I

    move-result v13

    if-eqz v20, :cond_104

    move/from16 p4, v0

    if-nez v13, :cond_fe

    move-object/from16 v88, v7

    move-object/from16 v7, v77

    if-eqz v64, :cond_f7

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Linet/ipaddr/format/validate/AddressParseData;->initSegmentData(I)V

    move-object/from16 v0, p1

    move-object/from16 v72, v1

    move-object/from16 v6, v88

    goto/16 :goto_82

    :cond_f7
    if-gez v8, :cond_fd

    move-object/from16 v0, p1

    move-object/from16 v72, v1

    move-object/from16 v10, v88

    if-eqz v11, :cond_f8

    iget-boolean v1, v0, Linet/ipaddr/MACAddressStringParameters;->allowDashed:Z

    if-eqz v1, :cond_fc

    goto :goto_7d

    :cond_f8
    if-eqz v12, :cond_f9

    iget-boolean v1, v0, Linet/ipaddr/MACAddressStringParameters;->allowSpaceDelimited:Z

    if-eqz v1, :cond_fc

    goto :goto_7d

    :cond_f9
    iget-boolean v1, v0, Linet/ipaddr/MACAddressStringParameters;->allowColonDelimited:Z

    if-eqz v1, :cond_fc

    :goto_7d
    if-eqz v11, :cond_fa

    sget-object v1, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DASHED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    move/from16 v6, p4

    move-object/from16 v11, p6

    invoke-virtual {v11, v1}, Linet/ipaddr/format/validate/MACAddressParseData;->setFormat(Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;)V

    const/16 v12, 0x8

    const/16 v68, 0x0

    goto :goto_7f

    :cond_fa
    move/from16 v6, p4

    move-object/from16 v11, p6

    if-eqz v12, :cond_fb

    sget-object v1, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->SPACE_DELIMITED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    goto :goto_7e

    :cond_fb
    sget-object v1, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->COLON_DELIMITED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    :goto_7e
    invoke-virtual {v11, v1}, Linet/ipaddr/format/validate/MACAddressParseData;->setFormat(Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;)V

    const/16 v12, 0x8

    :goto_7f
    invoke-virtual {v7, v12}, Linet/ipaddr/format/validate/AddressParseData;->initSegmentData(I)V

    move/from16 p4, v6

    move-object v6, v10

    const/4 v11, 0x1

    move-object v10, v1

    goto :goto_83

    :cond_fc
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_fd
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v8}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_fe
    move-object/from16 v72, v1

    move-object v6, v7

    move-object/from16 v7, v77

    const/16 v1, 0x8

    move-object/from16 v0, p1

    if-eqz v11, :cond_ff

    sget-object v11, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->DASHED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    if-ne v10, v11, :cond_103

    goto :goto_81

    :cond_ff
    if-eqz v12, :cond_100

    sget-object v11, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->SPACE_DELIMITED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    goto :goto_80

    :cond_100
    sget-object v11, Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;->COLON_DELIMITED:Linet/ipaddr/format/validate/MACAddressParseData$MACFormat;

    :goto_80
    if-ne v10, v11, :cond_103

    :goto_81
    iget-object v11, v0, Linet/ipaddr/MACAddressStringParameters;->addressSize:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    sget-object v12, Linet/ipaddr/MACAddressStringParameters$AddressSize;->MAC:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    if-ne v11, v12, :cond_101

    move/from16 v1, v21

    :cond_101
    if-ge v13, v1, :cond_102

    :goto_82
    move/from16 v11, v17

    :goto_83
    move-object/from16 v12, p0

    move-object/from16 v1, p5

    move/from16 v38, v3

    move-object/from16 v56, v10

    move/from16 v70, v34

    move/from16 v66, v63

    move/from16 v69, v68

    move-object/from16 v10, v72

    const/4 v0, 0x2

    const/16 v63, 0x0

    move/from16 v3, p3

    move/from16 v68, v11

    :goto_84
    move-object/from16 v72, v37

    goto/16 :goto_89

    :cond_102
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v11, v82

    invoke-direct {v0, v9, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_103
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.mac.error.mix.format.characters.at.index"

    invoke-direct {v0, v9, v1, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_104
    move/from16 p4, v0

    move-object/from16 v72, v1

    move-object v6, v7

    move-object/from16 v7, v77

    move-object/from16 v11, v82

    const/16 v1, 0x8

    move-object/from16 v0, p1

    move-object/from16 v12, p0

    if-nez v13, :cond_10b

    iget-boolean v11, v12, Linet/ipaddr/IPAddressStringParameters;->allowIPv6:Z

    if-eqz v11, :cond_10a

    sget-object v11, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    move-object/from16 v1, p5

    invoke-virtual {v1, v11}, Linet/ipaddr/format/validate/IPAddressParseData;->setVersion(Linet/ipaddr/IPAddress$IPVersion;)V

    move/from16 v38, v3

    move/from16 v3, p3

    if-ne v5, v3, :cond_107

    add-int/lit8 v2, v5, 0x1

    move/from16 v6, v63

    if-eq v2, v6, :cond_106

    invoke-interface {v9, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_105

    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Linet/ipaddr/format/validate/AddressParseData;->initSegmentData(I)V

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Linet/ipaddr/format/validate/AddressParseData;->setConsecutiveSeparatorSegmentIndex(I)V

    invoke-virtual {v7, v5}, Linet/ipaddr/format/validate/AddressParseData;->setConsecutiveSeparatorIndex(I)V

    invoke-static {v2, v2, v7, v13, v2}, Linet/ipaddr/format/validate/Validator;->assignAttributes(IILinet/ipaddr/format/validate/AddressParseData;II)V

    invoke-virtual {v7}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    add-int/lit8 v2, v5, 0x2

    move v14, v3

    move-object v15, v9

    move-object/from16 v37, v11

    move/from16 v34, v13

    move/from16 v13, v44

    move-object/from16 v1, v45

    move/from16 v22, v61

    move/from16 v18, v64

    move/from16 v19, v67

    move/from16 v21, v68

    move-wide/from16 v43, v74

    move-object/from16 v25, v76

    move/from16 v5, v78

    move-object/from16 v26, v80

    move/from16 v27, v84

    move-object/from16 v24, v96

    const/16 v17, 0x1

    move-object v9, v0

    move v3, v2

    move v11, v3

    move/from16 v45, v11

    move v0, v4

    move v2, v6

    move-object v4, v7

    move-object/from16 v6, v26

    move/from16 v7, p4

    move-object/from16 p4, v10

    move/from16 v10, v65

    :goto_85
    move-object/from16 v107, v12

    move-object/from16 v12, p6

    move-wide/from16 v108, v51

    move/from16 v51, v8

    move-object/from16 v8, v107

    move/from16 v52, v38

    move/from16 v38, v57

    move-wide/from16 v56, v108

    goto/16 :goto_2

    :cond_105
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.ipv6.cannot.start.with.single.separator"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_106
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.too.few.segments"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_107
    move/from16 v66, v63

    const/16 v63, 0x0

    if-eqz v64, :cond_108

    const/4 v0, 0x1

    :goto_86
    invoke-virtual {v7, v0}, Linet/ipaddr/format/validate/AddressParseData;->initSegmentData(I)V

    goto :goto_87

    :cond_108
    if-gez v8, :cond_109

    const/16 v0, 0x8

    goto :goto_86

    :goto_87
    move-object/from16 v37, v11

    move/from16 v34, v63

    move-object/from16 v72, v80

    const/4 v11, 0x1

    goto :goto_88

    :cond_109
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v8}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_10a
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.ipv6"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_10b
    move-object/from16 v1, p5

    move/from16 v38, v3

    move/from16 v66, v63

    const/16 v63, 0x0

    move/from16 v3, p3

    invoke-virtual/range {p5 .. p5}, Linet/ipaddr/format/validate/IPAddressParseData;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/IPAddress$IPVersion;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_15b

    const/16 v0, 0x8

    if-ge v13, v0, :cond_15a

    move/from16 v11, v17

    :goto_88
    move/from16 v70, v34

    move/from16 v0, v56

    move/from16 v69, v68

    move-object/from16 v56, v10

    move/from16 v68, v11

    move-object/from16 v10, v72

    goto/16 :goto_84

    :goto_89
    if-ne v5, v2, :cond_10e

    if-nez v20, :cond_10d

    invoke-virtual {v7}, Linet/ipaddr/format/validate/AddressParseData;->getConsecutiveSeparatorIndex()I

    move-result v0

    if-gez v0, :cond_10c

    invoke-virtual {v7, v13}, Linet/ipaddr/format/validate/AddressParseData;->setConsecutiveSeparatorSegmentIndex(I)V

    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v7, v11}, Linet/ipaddr/format/validate/AddressParseData;->setConsecutiveSeparatorIndex(I)V

    invoke-static {v5, v5, v7, v13, v5}, Linet/ipaddr/format/validate/Validator;->assignAttributes(IILinet/ipaddr/format/validate/AddressParseData;II)V

    invoke-virtual {v7}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    move/from16 v13, p4

    move/from16 v89, v8

    move-object v2, v10

    move/from16 v10, v48

    :goto_8a
    move-object/from16 v48, v76

    move-object/from16 v79, v96

    const/4 v3, 0x1

    move-object v8, v1

    move-wide/from16 v0, v58

    move/from16 v59, v5

    move/from16 v58, v38

    move/from16 v107, v50

    move-object/from16 v50, v7

    move-wide/from16 v6, v51

    move/from16 v51, v107

    goto/16 :goto_b2

    :cond_10c
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.ipv6.ambiguous"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_10d
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v6, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_10e
    if-lez v65, :cond_113

    if-nez v67, :cond_113

    iget-object v0, v10, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v0}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsWildcard()Z

    move-result v0

    if-eqz v0, :cond_112

    sub-int v11, v5, v2

    move/from16 v2, v65

    if-ne v2, v11, :cond_111

    if-gez v8, :cond_111

    invoke-virtual {v7}, Linet/ipaddr/format/validate/AddressParseData;->setHasWildcard()V

    sub-int v26, v5, v2

    const-wide/16 v29, 0x0

    if-eqz v20, :cond_110

    if-eqz v84, :cond_10f

    const-wide/32 v14, 0xffffff

    move-wide/from16 v31, v14

    goto :goto_8b

    :cond_10f
    const-wide/16 v31, 0xff

    goto :goto_8b

    :cond_110
    const-wide/32 v31, 0xffff

    :goto_8b
    const/high16 v33, 0x10000

    move/from16 v21, v26

    move/from16 v22, v5

    move/from16 v23, v26

    move/from16 v24, v26

    move/from16 v25, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    invoke-static/range {v21 .. v33}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJI)V

    invoke-virtual {v7}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    move/from16 v13, p4

    move/from16 v89, v8

    move-object v2, v10

    move/from16 v10, v48

    move/from16 v65, v63

    goto :goto_8a

    :cond_111
    new-instance v0, Linet/ipaddr/AddressStringException;

    const/4 v11, 0x1

    invoke-direct {v0, v9, v5, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_112
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.no.wildcard"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_113
    move/from16 v2, v65

    const/4 v11, 0x1

    sub-int v1, v5, v14

    if-eqz v49, :cond_117

    if-ne v1, v11, :cond_115

    if-nez v48, :cond_114

    if-gez v4, :cond_114

    invoke-static {v14, v5, v7, v13, v14}, Linet/ipaddr/format/validate/Validator;->assignAttributes(IILinet/ipaddr/format/validate/AddressParseData;II)V

    invoke-virtual {v7}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    add-int/lit8 v0, v5, 0x1

    move v11, v0

    move v14, v3

    move-object v15, v9

    move-object/from16 v26, v10

    move/from16 v13, v44

    move-object/from16 v1, v45

    move/from16 v22, v61

    move/from16 v49, v63

    move/from16 v18, v64

    move/from16 v19, v67

    move/from16 v17, v68

    move/from16 v21, v69

    move/from16 v34, v70

    move-object/from16 v37, v72

    move-wide/from16 v43, v74

    move-object/from16 v25, v76

    move/from16 v5, v78

    move-object/from16 v6, v80

    move/from16 v27, v84

    move-object/from16 v24, v96

    move-object/from16 v9, p1

    move v3, v11

    move/from16 v45, v3

    move v10, v2

    move v0, v4

    move-object v4, v7

    move/from16 v2, v66

    move/from16 v7, p4

    move-object/from16 p4, v56

    goto/16 :goto_85

    :cond_114
    move v11, v14

    goto :goto_8c

    :cond_115
    if-eqz v50, :cond_116

    add-int/lit8 v48, v48, 0x1

    :cond_116
    add-int v11, v14, v48

    sub-int v1, v1, v48

    :goto_8c
    move/from16 v89, v8

    move/from16 v8, v48

    move/from16 v49, v63

    goto :goto_8d

    :cond_117
    move/from16 v89, v8

    move v11, v14

    move/from16 v8, v48

    :goto_8d
    if-nez v8, :cond_126

    if-nez v1, :cond_11d

    iget-object v1, v10, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v1}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsInferredBoundary()Z

    move-result v1

    if-eqz v1, :cond_11c

    if-eqz v20, :cond_11a

    if-eqz v64, :cond_119

    invoke-virtual/range {p6 .. p6}, Linet/ipaddr/format/validate/MACAddressParseData;->isExtended()Z

    move-result v1

    if-eqz v1, :cond_118

    const-wide/16 v16, -0x1

    goto :goto_8e

    :cond_118
    const-wide v16, 0xffffffffffffL

    goto :goto_8e

    :cond_119
    const-wide/16 v16, 0xff

    :goto_8e
    move-wide/from16 v107, v16

    move-wide/from16 v16, v58

    move-wide/from16 v58, v107

    goto :goto_8f

    :cond_11a
    if-eqz v67, :cond_11b

    const-wide/16 v58, -0x1

    move-wide/from16 v16, v58

    goto :goto_8f

    :cond_11b
    move-wide/from16 v16, v58

    const-wide/32 v58, 0xffff

    :goto_8f
    const/high16 v1, 0x400000

    move/from16 v101, p4

    move/from16 v104, v0

    move/from16 v65, v2

    move-object/from16 v103, v6

    move/from16 v21, v8

    move-object v2, v10

    move v12, v11

    move/from16 v28, v13

    move-object v6, v15

    move/from16 v3, v38

    move-wide/from16 v99, v51

    move-wide/from16 v105, v58

    move/from16 v10, v63

    move/from16 v19, v10

    move-object/from16 v48, v76

    move/from16 v102, v78

    move-object/from16 v0, v80

    move-object/from16 v92, v97

    move-object/from16 v8, p5

    move v11, v1

    move v1, v14

    move-wide/from16 v14, v16

    move/from16 v52, v35

    move/from16 v51, v50

    move-object/from16 v50, v7

    move v7, v5

    :goto_90
    const/4 v5, 0x1

    goto/16 :goto_a0

    :cond_11c
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v6, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_11d
    if-le v1, v0, :cond_11e

    if-nez v69, :cond_11f

    :cond_11e
    move-object/from16 v1, v97

    goto :goto_91

    :cond_11f
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v1, v97

    invoke-direct {v0, v9, v1, v14}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :goto_91
    if-lez v35, :cond_122

    if-gez v4, :cond_121

    move-object/from16 v48, v10

    move/from16 v21, v11

    if-eqz v67, :cond_120

    move-wide/from16 v10, v74

    move-object/from16 v12, p2

    move/from16 v28, v13

    move/from16 v13, v21

    move/from16 v23, v14

    move v14, v5

    move-object/from16 v98, v15

    move/from16 v15, v35

    move-object/from16 v16, v7

    move/from16 v17, v28

    move/from16 v18, v23

    move-object/from16 v19, v48

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->parseSingleSegmentSingleWildcard16(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    goto :goto_92

    :cond_120
    move/from16 v28, v13

    move/from16 v23, v14

    move-object/from16 v98, v15

    move-wide/from16 v10, v74

    move-object/from16 v12, p2

    move/from16 v13, v21

    move v14, v5

    move/from16 v15, v35

    move-object/from16 v16, v7

    move/from16 v17, v28

    move/from16 v18, v23

    move-object/from16 v19, v48

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->assignSingleWildcard16(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    :goto_92
    move/from16 v15, v21

    move-wide/from16 v74, v41

    move/from16 v11, v63

    move/from16 v35, v11

    move/from16 v54, v35

    const/4 v10, 0x1

    goto :goto_94

    :cond_121
    new-instance v0, Linet/ipaddr/AddressStringException;

    const/4 v1, 0x1

    invoke-direct {v0, v9, v5, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_122
    move-object/from16 v48, v10

    move/from16 v21, v11

    move/from16 v28, v13

    move/from16 v23, v14

    move-object/from16 v98, v15

    if-eqz v67, :cond_124

    add-int/lit8 v11, v5, -0x10

    move/from16 v15, v21

    if-ge v15, v11, :cond_123

    invoke-static {v9, v15, v11}, Linet/ipaddr/format/validate/Validator;->parseLong16(Ljava/lang/CharSequence;II)J

    move-result-wide v58

    invoke-static {v9, v11, v5}, Linet/ipaddr/format/validate/Validator;->parseLong16(Ljava/lang/CharSequence;II)J

    move-result-wide v10

    goto :goto_93

    :cond_123
    move-wide/from16 v10, v74

    :goto_93
    move-wide/from16 v74, v10

    move/from16 v10, v63

    move v11, v10

    goto :goto_94

    :cond_124
    move/from16 v15, v21

    if-eqz v54, :cond_125

    move/from16 v10, v63

    move v11, v10

    move/from16 v54, v11

    goto :goto_94

    :cond_125
    move/from16 v11, v43

    move/from16 v10, v63

    :goto_94
    move/from16 v101, p4

    move/from16 v104, v0

    move-object/from16 v92, v1

    move/from16 v65, v2

    move-object/from16 v103, v6

    move-object/from16 v50, v7

    move/from16 v21, v8

    move/from16 v19, v11

    move v12, v15

    move/from16 v1, v23

    move/from16 v3, v38

    move-object/from16 v2, v48

    move-wide/from16 v99, v51

    move-wide/from16 v14, v58

    move/from16 v11, v63

    move/from16 v51, v11

    move-wide/from16 v105, v74

    move-object/from16 v48, v76

    move/from16 v102, v78

    move-object/from16 v0, v80

    move-object/from16 v6, v98

    move-object/from16 v8, p5

    move v7, v5

    move/from16 v52, v35

    move-wide/from16 v74, v41

    goto/16 :goto_90

    :cond_126
    move-object/from16 v48, v10

    move/from16 v28, v13

    move/from16 v23, v14

    move-object/from16 v98, v15

    move-object/from16 v14, v97

    const/4 v10, 0x1

    move v15, v11

    if-ne v8, v10, :cond_12f

    const/16 v11, 0x11

    if-eq v1, v11, :cond_127

    const/16 v11, 0x81

    if-ne v1, v11, :cond_128

    :cond_127
    move-object/from16 v11, v80

    goto :goto_95

    :cond_128
    move/from16 v101, p4

    move v13, v0

    move/from16 v65, v2

    move-object/from16 v103, v6

    move-object/from16 v50, v7

    move/from16 v21, v8

    move/from16 v3, v38

    move-object/from16 v2, v48

    move-wide/from16 v99, v51

    move-object/from16 v48, v76

    move/from16 v102, v78

    move-object/from16 v0, v80

    move-object/from16 v6, v98

    move-object/from16 v8, p5

    move v7, v5

    move-object v5, v14

    move v14, v10

    move-wide/from16 v10, v74

    goto/16 :goto_9b

    :goto_95
    iget-boolean v12, v11, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    if-eqz v12, :cond_12e

    invoke-static {v9, v15}, Linet/ipaddr/format/validate/Validator;->isBinaryDelimiter(Ljava/lang/CharSequence;I)Z

    move-result v12

    if-eqz v12, :cond_12e

    move-object/from16 v13, v48

    iget-boolean v12, v13, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v12, :cond_12d

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v1, v1, -0x1

    if-lez v35, :cond_12b

    if-gez v4, :cond_12a

    if-eqz v67, :cond_129

    move/from16 v21, v8

    move/from16 v12, v38

    move-wide/from16 v99, v51

    move/from16 v1, v78

    move v8, v0

    move-object/from16 v0, p2

    move/from16 v101, p4

    move/from16 v102, v1

    move v1, v15

    move/from16 v65, v2

    move v2, v5

    move/from16 v22, v8

    move-object/from16 v48, v76

    move-object/from16 v8, p5

    move/from16 v3, v35

    move v8, v10

    move v10, v4

    move-object v4, v7

    move/from16 p4, v5

    move/from16 v5, v28

    move-object/from16 v103, v6

    move/from16 v6, v23

    move-object/from16 v50, v7

    move-object v7, v13

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/Validator;->parseSingleSegmentSingleWildcard2(Ljava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    move v4, v10

    move-object v0, v11

    move v3, v12

    move-object v2, v13

    move-object v5, v14

    move v6, v15

    goto :goto_96

    :cond_129
    move/from16 v101, p4

    move/from16 v22, v0

    move/from16 v65, v2

    move/from16 p4, v5

    move-object/from16 v103, v6

    move-object/from16 v50, v7

    move/from16 v21, v8

    move v8, v10

    move-object v0, v11

    move/from16 v12, v38

    move-wide/from16 v99, v51

    move-object/from16 v48, v76

    move/from16 v102, v78

    move-wide/from16 v10, v74

    move v3, v12

    move-object/from16 v12, p2

    move-object v2, v13

    move v13, v15

    move-object v5, v14

    move/from16 v14, p4

    move v6, v15

    move/from16 v15, v35

    move-object/from16 v16, v50

    move/from16 v17, v28

    move/from16 v18, v23

    move-object/from16 v19, v2

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->switchSingleWildcard2(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    :goto_96
    move/from16 v7, p4

    move v10, v8

    move v14, v10

    move-wide/from16 v11, v41

    move/from16 v1, v63

    move/from16 v35, v1

    :goto_97
    move-object/from16 v8, p5

    goto :goto_99

    :cond_12a
    move/from16 p4, v5

    move v8, v10

    new-instance v0, Linet/ipaddr/AddressStringException;

    move/from16 v7, p4

    invoke-direct {v0, v9, v7, v8}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_12b
    move/from16 v101, p4

    move/from16 v22, v0

    move/from16 v65, v2

    move-object/from16 v103, v6

    move-object/from16 v50, v7

    move/from16 v21, v8

    move v8, v10

    move-object v0, v11

    move-object v2, v13

    move v6, v15

    move/from16 v3, v38

    move-wide/from16 v99, v51

    move-object/from16 v48, v76

    move/from16 v102, v78

    move v7, v5

    move-object v5, v14

    if-eqz v67, :cond_12c

    add-int/lit8 v11, v7, -0x40

    invoke-static {v9, v6, v11}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v58

    invoke-static {v9, v11, v7}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v10

    goto :goto_98

    :cond_12c
    move-wide/from16 v10, v74

    invoke-static {v10, v11, v9, v1}, Linet/ipaddr/format/validate/Validator;->switchValue2(JLjava/lang/CharSequence;I)J

    move-result-wide v10

    :goto_98
    move v14, v8

    move-wide v11, v10

    move/from16 v10, v63

    const/4 v1, 0x2

    goto :goto_97

    :goto_99
    invoke-virtual {v8, v14}, Linet/ipaddr/format/validate/IPAddressParseData;->setHasBinaryDigits(Z)V

    move/from16 v19, v1

    move-object/from16 v92, v5

    move-wide/from16 v105, v11

    move v5, v14

    move/from16 v104, v22

    move/from16 v1, v23

    move/from16 v52, v35

    move-wide/from16 v74, v41

    move-wide/from16 v14, v58

    move/from16 v11, v63

    move/from16 v51, v11

    move v12, v6

    move-object/from16 v6, v98

    goto/16 :goto_a0

    :cond_12d
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v6, v98

    invoke-direct {v0, v9, v6}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_12e
    move/from16 v101, p4

    move/from16 v22, v0

    move/from16 v65, v2

    move-object/from16 v103, v6

    move-object/from16 v50, v7

    move/from16 v21, v8

    move-object v0, v11

    move/from16 v3, v38

    move-object/from16 v2, v48

    move-wide/from16 v99, v51

    move-object/from16 v48, v76

    move/from16 v102, v78

    :goto_9a
    move-object/from16 v6, v98

    move-object/from16 v8, p5

    move v7, v5

    move-object v5, v14

    move v14, v10

    move-wide/from16 v10, v74

    move/from16 v13, v22

    goto :goto_9b

    :cond_12f
    move/from16 v101, p4

    move/from16 v22, v0

    move/from16 v65, v2

    move-object/from16 v103, v6

    move-object/from16 v50, v7

    move/from16 v21, v8

    move/from16 v3, v38

    move-object/from16 v2, v48

    move-wide/from16 v99, v51

    move-object/from16 v48, v76

    move/from16 v102, v78

    move-object/from16 v0, v80

    goto :goto_9a

    :goto_9b
    if-le v1, v13, :cond_130

    if-nez v69, :cond_131

    :cond_130
    move/from16 v12, v23

    goto :goto_9c

    :cond_131
    new-instance v0, Linet/ipaddr/AddressStringException;

    move/from16 v12, v23

    invoke-direct {v0, v9, v5, v12}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :goto_9c
    iget-boolean v14, v2, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-eqz v14, :cond_159

    iget-boolean v14, v2, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    if-nez v14, :cond_133

    if-eqz v69, :cond_133

    add-int v1, v1, v21

    if-gt v1, v13, :cond_132

    goto :goto_9d

    :cond_132
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v5, v12}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_133
    :goto_9d
    if-lez v35, :cond_136

    if-gez v4, :cond_135

    if-eqz v67, :cond_134

    move v1, v12

    move-object/from16 v12, p2

    move v14, v13

    move v13, v15

    move-object/from16 v92, v5

    move/from16 v104, v14

    const/4 v5, 0x1

    move v14, v7

    move/from16 p4, v15

    move/from16 v15, v35

    move-object/from16 v16, v50

    move/from16 v17, v28

    move/from16 v18, v1

    move-object/from16 v19, v2

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->parseSingleSegmentSingleWildcard16(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    goto :goto_9e

    :cond_134
    move-object/from16 v92, v5

    move v1, v12

    move/from16 v104, v13

    move/from16 p4, v15

    const/4 v5, 0x1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v14, v7

    move/from16 v15, v35

    move-object/from16 v16, v50

    move/from16 v17, v28

    move/from16 v18, v1

    move-object/from16 v19, v2

    invoke-static/range {v10 .. v19}, Linet/ipaddr/format/validate/Validator;->assignSingleWildcard16(JLjava/lang/CharSequence;IIILinet/ipaddr/format/validate/AddressParseData;IILinet/ipaddr/AddressStringParameters$AddressStringFormatParameters;)V

    :goto_9e
    move/from16 v14, p4

    move v10, v5

    move-wide/from16 v12, v41

    move/from16 v11, v63

    move/from16 v35, v11

    move/from16 v54, v35

    goto :goto_9f

    :cond_135
    const/4 v5, 0x1

    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v7, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_136
    move-object/from16 v92, v5

    move v1, v12

    move/from16 v104, v13

    move/from16 p4, v15

    const/4 v5, 0x1

    if-eqz v67, :cond_138

    add-int/lit8 v12, v7, -0x10

    move/from16 v14, p4

    if-ge v14, v12, :cond_137

    invoke-static {v9, v14, v12}, Linet/ipaddr/format/validate/Validator;->parseLong16(Ljava/lang/CharSequence;II)J

    move-result-wide v58

    invoke-static {v9, v12, v7}, Linet/ipaddr/format/validate/Validator;->parseLong16(Ljava/lang/CharSequence;II)J

    move-result-wide v10

    :cond_137
    move-wide v12, v10

    move/from16 v10, v63

    move v11, v10

    goto :goto_9f

    :cond_138
    move/from16 v14, p4

    move-wide v12, v10

    if-eqz v54, :cond_139

    move/from16 v10, v63

    move v11, v10

    move/from16 v54, v11

    goto :goto_9f

    :cond_139
    move/from16 v11, v43

    move/from16 v10, v63

    :goto_9f
    move/from16 v19, v11

    move-wide/from16 v105, v12

    move v12, v14

    move/from16 v52, v35

    move-wide/from16 v74, v41

    move-wide/from16 v14, v58

    move/from16 v11, v63

    move/from16 v51, v11

    :goto_a0
    if-ltz v4, :cond_156

    move/from16 v13, v101

    sub-int v10, v4, v13

    move/from16 v23, v1

    move/from16 v5, v102

    sub-int v1, v10, v5

    move/from16 p4, v12

    add-int v12, v13, v5

    move-object/from16 v91, v6

    iget-object v6, v2, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v6}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsRangeSeparator()Z

    move-result v6

    if-eqz v6, :cond_155

    if-ltz v3, :cond_13b

    if-eqz v64, :cond_13a

    goto :goto_a1

    :cond_13a
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v3}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;I)V

    throw v0

    :cond_13b
    :goto_a1
    if-gtz v53, :cond_154

    if-gtz v46, :cond_154

    move/from16 v58, v3

    move-object/from16 v6, v96

    if-eqz v20, :cond_13d

    iget-boolean v3, v6, Linet/ipaddr/MACAddressStringParameters$MACAddressStringFormatParameters;->allowShortSegments:Z

    if-nez v3, :cond_13d

    const/4 v3, 0x2

    if-lt v12, v3, :cond_13c

    goto :goto_a2

    :cond_13c
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v2, "ipaddress.error.segment.too.short.at.index"

    invoke-direct {v0, v9, v2, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_13d
    const/4 v3, 0x2

    :goto_a2
    if-ne v10, v4, :cond_13e

    const/16 v16, 0x1

    goto :goto_a3

    :cond_13e
    move/from16 v16, v63

    :goto_a3
    if-eqz v16, :cond_140

    iget-object v3, v2, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v3}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsInferredBoundary()Z

    move-result v3

    if-eqz v3, :cond_13f

    const/high16 v3, 0x200000

    or-int/2addr v3, v11

    move-object/from16 v80, v0

    move/from16 v78, v5

    move-object/from16 v79, v6

    move/from16 v59, v7

    move/from16 v22, v10

    move-wide/from16 v11, v41

    move-wide/from16 v24, v11

    move/from16 v10, v63

    move/from16 v17, v10

    move/from16 v71, v17

    move-wide/from16 v6, v99

    move v5, v1

    move-wide/from16 v0, v105

    goto/16 :goto_ac

    :cond_13f
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v1, v103

    invoke-direct {v0, v9, v1, v7}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_140
    const/4 v3, 0x1

    if-ne v5, v3, :cond_142

    const/16 v3, 0x11

    if-ne v13, v3, :cond_142

    iget-boolean v3, v0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    if-eqz v3, :cond_142

    invoke-static {v9, v10}, Linet/ipaddr/format/validate/Validator;->isBinaryDelimiter(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_142

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v13, -0x1

    move-object/from16 v79, v6

    move/from16 v59, v7

    move-wide/from16 v11, v99

    invoke-static {v11, v12, v9, v3}, Linet/ipaddr/format/validate/Validator;->switchValue2(JLjava/lang/CharSequence;I)J

    move-result-wide v6

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Linet/ipaddr/format/validate/IPAddressParseData;->setHasBinaryDigits(Z)V

    move-object/from16 v80, v0

    move/from16 v17, v1

    move-wide/from16 v0, v105

    invoke-static {v6, v7, v0, v1}, Landroid/support/v4/media/session/a;->g(JJ)I

    move-result v13

    if-lez v13, :cond_141

    const/4 v13, 0x1

    goto :goto_a4

    :cond_141
    move/from16 v13, v63

    :goto_a4
    move/from16 v78, v5

    move-wide/from16 v24, v6

    move/from16 v22, v10

    move-wide v6, v11

    move v10, v13

    move/from16 v5, v17

    move-wide/from16 v11, v41

    const/16 v17, 0x1

    const/16 v71, 0x2

    move v13, v3

    const/4 v3, 0x2

    goto/16 :goto_ac

    :cond_142
    move-object/from16 v80, v0

    move/from16 v17, v1

    move-object/from16 v79, v6

    move/from16 v59, v7

    move-wide/from16 v6, v99

    move-wide/from16 v0, v105

    if-eqz v67, :cond_147

    const/16 v3, 0x81

    if-ne v13, v3, :cond_143

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v13, -0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Linet/ipaddr/format/validate/IPAddressParseData;->setHasBinaryDigits(Z)V

    add-int/lit8 v11, v4, -0x40

    invoke-static {v9, v10, v11}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v12

    invoke-static {v9, v11, v4}, Linet/ipaddr/format/validate/Validator;->parseLong2(Ljava/lang/CharSequence;II)J

    move-result-wide v24

    move/from16 v18, v3

    move/from16 v22, v10

    move-wide v10, v12

    move-wide/from16 v12, v24

    const/4 v3, 0x2

    const/16 v71, 0x2

    goto :goto_a5

    :cond_143
    add-int/lit8 v3, v4, -0x10

    if-ge v10, v3, :cond_144

    invoke-static {v9, v10, v3}, Linet/ipaddr/format/validate/Validator;->parseLong16(Ljava/lang/CharSequence;II)J

    move-result-wide v24

    invoke-static {v9, v3, v4}, Linet/ipaddr/format/validate/Validator;->parseLong16(Ljava/lang/CharSequence;II)J

    move-result-wide v26

    move/from16 v22, v10

    move v3, v11

    move/from16 v18, v13

    move-wide/from16 v10, v24

    move-wide/from16 v12, v26

    move/from16 v71, v63

    goto :goto_a5

    :cond_144
    move/from16 v22, v10

    move v3, v11

    move/from16 v18, v13

    move-wide/from16 v10, v41

    move/from16 v71, v63

    move-wide v12, v6

    :goto_a5
    invoke-static {v10, v11, v14, v15}, Landroid/support/v4/media/session/a;->g(JJ)I

    move-result v24

    if-gtz v24, :cond_146

    if-nez v24, :cond_145

    invoke-static {v12, v13, v0, v1}, Landroid/support/v4/media/session/a;->g(JJ)I

    move-result v24

    if-lez v24, :cond_145

    goto :goto_a6

    :cond_145
    move/from16 v24, v63

    goto :goto_a7

    :cond_146
    :goto_a6
    const/16 v24, 0x1

    :goto_a7
    move/from16 v78, v5

    move/from16 v5, v17

    move/from16 v17, v63

    move-wide/from16 v107, v12

    move/from16 v13, v18

    move-wide v11, v10

    move/from16 v10, v24

    move-wide/from16 v24, v107

    goto :goto_ac

    :cond_147
    iget-boolean v3, v2, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowLeadingZeros:Z

    if-nez v3, :cond_149

    if-gtz v5, :cond_148

    goto :goto_a8

    :cond_148
    new-instance v0, Linet/ipaddr/AddressStringException;

    move-object/from16 v1, v91

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_149
    :goto_a8
    if-eqz v69, :cond_14d

    move/from16 v3, v104

    if-gt v13, v3, :cond_14c

    move/from16 v78, v5

    iget-boolean v5, v2, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->allowUnlimitedLeadingZeros:Z

    if-nez v5, :cond_14a

    if-gt v12, v3, :cond_14b

    :cond_14a
    :goto_a9
    move/from16 v5, v17

    goto :goto_aa

    :cond_14b
    new-instance v0, Linet/ipaddr/AddressStringException;

    move/from16 v5, v17

    move-object/from16 v3, v92

    invoke-direct {v0, v9, v3, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_14c
    move/from16 v5, v17

    move-object/from16 v3, v92

    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v3, v5}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    throw v0

    :cond_14d
    move/from16 v78, v5

    goto :goto_a9

    :goto_aa
    invoke-static {v6, v7, v0, v1}, Landroid/support/v4/media/session/a;->g(JJ)I

    move-result v3

    if-lez v3, :cond_14e

    const/4 v3, 0x1

    goto :goto_ab

    :cond_14e
    move/from16 v3, v63

    :goto_ab
    move-wide/from16 v24, v6

    move/from16 v22, v10

    move/from16 v17, v63

    move/from16 v71, v17

    move v10, v3

    move v3, v11

    move-wide/from16 v11, v41

    :goto_ac
    move/from16 v18, v5

    if-eqz v10, :cond_150

    iget-object v5, v2, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v5}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsReverseRange()Z

    move-result v5

    if-eqz v5, :cond_14f

    move-wide/from16 v29, v0

    move-wide/from16 v31, v14

    move/from16 v26, v18

    move-wide/from16 v0, v24

    move/from16 v25, v4

    move-wide v14, v11

    move/from16 v24, v22

    move/from16 v4, v59

    move/from16 v22, p4

    goto :goto_ad

    :cond_14f
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.invalidRange"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_150
    move-wide/from16 v31, v11

    move/from16 v26, v23

    move-wide/from16 v29, v24

    move/from16 v25, v59

    move/from16 v24, p4

    move/from16 v23, v18

    :goto_ad
    if-eqz v67, :cond_151

    const/high16 v5, 0x100000

    or-int v37, v3, v5

    move/from16 v21, v22

    move/from16 v22, v4

    move-object/from16 v27, v50

    move-wide/from16 v33, v0

    move-wide/from16 v35, v14

    move/from16 v38, v71

    invoke-static/range {v21 .. v38}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJJJII)V

    goto :goto_af

    :cond_151
    if-nez v55, :cond_153

    if-nez v16, :cond_153

    if-nez v10, :cond_153

    if-nez v17, :cond_153

    if-nez v21, :cond_152

    and-int v5, v19, v43

    if-eqz v5, :cond_152

    if-eqz v60, :cond_152

    const/high16 v5, 0xc0000

    or-int/2addr v3, v5

    goto :goto_ae

    :cond_152
    or-int v3, v3, v43

    :cond_153
    :goto_ae
    const/high16 v5, 0x100000

    or-int v33, v3, v5

    move/from16 v21, v22

    move/from16 v22, v4

    move-object/from16 v27, v50

    move-wide/from16 v31, v0

    move/from16 v34, v71

    invoke-static/range {v21 .. v34}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIIIIILinet/ipaddr/format/validate/AddressParseData;IJJII)V

    :goto_af
    move-wide v10, v14

    move/from16 v4, v40

    const/4 v3, 0x1

    goto :goto_b1

    :cond_154
    new-instance v0, Linet/ipaddr/AddressStringException;

    const/4 v3, 0x1

    invoke-direct {v0, v9, v4, v3}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;IZ)V

    throw v0

    :cond_155
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.no.range"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_156
    move-object/from16 v80, v0

    move/from16 v23, v1

    move/from16 v58, v3

    move v3, v5

    move/from16 v59, v7

    move/from16 p4, v12

    move-object/from16 v79, v96

    move-wide/from16 v6, v99

    move/from16 v13, v101

    move/from16 v78, v102

    move-wide/from16 v0, v105

    if-nez v10, :cond_157

    if-eqz v67, :cond_158

    move/from16 v21, p4

    move/from16 v22, v59

    move-object/from16 v24, v50

    move/from16 v25, v28

    move-wide/from16 v26, v0

    move-wide/from16 v28, v14

    move/from16 v30, v19

    invoke-static/range {v21 .. v30}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIILinet/ipaddr/format/validate/AddressParseData;IJJI)V

    :cond_157
    move/from16 v62, v13

    move-wide v10, v14

    goto :goto_b0

    :cond_158
    move/from16 v12, p4

    move/from16 v62, v13

    move/from16 v13, v59

    move-wide v10, v14

    move/from16 v14, v23

    move-object/from16 v15, v50

    move/from16 v16, v28

    move-wide/from16 v17, v0

    invoke-static/range {v12 .. v19}, Linet/ipaddr/format/validate/Validator;->assignAttributesValuesFlags(IIILinet/ipaddr/format/validate/AddressParseData;IJI)V

    :goto_b0
    move/from16 v13, v62

    :goto_b1
    invoke-virtual/range {v50 .. v50}, Linet/ipaddr/format/validate/AddressParseData;->incrementSegmentCount()V

    move-wide v0, v10

    move/from16 v35, v52

    move/from16 v10, v63

    :goto_b2
    add-int/lit8 v11, v59, 0x1

    move-object/from16 v26, v2

    move/from16 v81, v11

    move/from16 v62, v13

    move/from16 v16, v51

    move/from16 v38, v57

    move/from16 v17, v68

    move/from16 v21, v69

    move/from16 v34, v70

    move-object/from16 v37, v72

    move/from16 v51, v89

    move-wide v12, v0

    move v0, v4

    move v1, v10

    move/from16 v4, v81

    move/from16 v10, v65

    :goto_b3
    move-object/from16 v8, p0

    move/from16 v14, p3

    move-object v15, v9

    move v3, v11

    move-object/from16 v25, v48

    move-object/from16 p4, v56

    move/from16 v52, v58

    move/from16 v22, v61

    move/from16 v18, v64

    move/from16 v2, v66

    move/from16 v19, v67

    move/from16 v5, v78

    move-object/from16 v24, v79

    move/from16 v27, v84

    move-object/from16 v9, p1

    move/from16 v48, v1

    move v11, v4

    move-wide/from16 v56, v6

    move-wide/from16 v58, v12

    move/from16 v13, v44

    move-object/from16 v1, v45

    move-object/from16 v4, v50

    move/from16 v7, v62

    move-wide/from16 v43, v74

    move-object/from16 v6, v80

    move/from16 v45, v81

    move-object/from16 v12, p6

    move/from16 v50, v16

    goto/16 :goto_2

    :cond_159
    move-object v1, v6

    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_15a
    new-instance v0, Linet/ipaddr/AddressStringException;

    invoke-direct {v0, v9, v11}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0

    :cond_15b
    new-instance v0, Linet/ipaddr/AddressStringException;

    const-string v1, "ipaddress.error.ipv6.separator"

    invoke-direct {v0, v9, v1}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw v0
.end method

.method private static validateHost(Linet/ipaddr/HostName;Ljava/lang/String;Linet/ipaddr/HostNameParameters;)Linet/ipaddr/format/validate/ParsedHost;
    .locals 42

    .line 2
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xfd

    if-gt v0, v2, :cond_73

    move v10, v0

    const/4 v0, -0x1

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_0
    add-int/lit8 v13, v0, 0x1

    const-string v2, "ipaddress.host.error.invalid"

    if-gt v13, v10, :cond_35

    if-ne v13, v10, :cond_9

    if-nez v13, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x1

    goto/16 :goto_17

    :cond_0
    if-eqz v3, :cond_1

    add-int/lit8 v15, v9, 0x1

    const/4 v1, 0x4

    if-eq v15, v1, :cond_4

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    add-int/lit8 v15, v9, 0x1

    if-ge v15, v1, :cond_2

    if-gez v8, :cond_4

    :cond_2
    if-ge v15, v1, :cond_3

    iget-object v1, v12, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v1}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v1

    iget-boolean v1, v1, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_joinedSegments:Z

    if-nez v1, :cond_4

    :cond_3
    if-nez v9, :cond_5

    iget-object v1, v12, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    iget-boolean v1, v1, Linet/ipaddr/AddressStringParameters;->allowSingleSegment:Z

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v5, :cond_8

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_3
    const/4 v4, 0x0

    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_17

    :cond_6
    if-eqz v16, :cond_7

    if-eqz v6, :cond_7

    :goto_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v2}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_8
    and-int/2addr v3, v1

    const/16 v1, 0x2e

    :goto_6
    const/16 v15, 0x61

    goto :goto_7

    :cond_9
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    :goto_7
    if-lt v1, v15, :cond_d

    const/16 v15, 0x7a

    if-gt v1, v15, :cond_d

    const/16 v0, 0x66

    if-le v1, v0, :cond_b

    const/16 v0, 0x78

    if-ne v1, v0, :cond_a

    iget-object v0, v12, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    iget-boolean v0, v0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    :goto_8
    and-int/2addr v3, v0

    :goto_9
    const/4 v6, 0x0

    goto :goto_a

    :cond_b
    const/16 v0, 0x62

    if-ne v1, v0, :cond_c

    iget-object v0, v12, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    iget-boolean v0, v0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    and-int/2addr v3, v0

    :cond_c
    :goto_a
    move v0, v13

    const/4 v5, 0x0

    goto/16 :goto_16

    :cond_d
    const/16 v15, 0x30

    if-lt v1, v15, :cond_e

    const/16 v15, 0x39

    if-gt v1, v15, :cond_e

    move-object/from16 v1, p0

    move v0, v13

    goto/16 :goto_0

    :cond_e
    const/16 v15, 0x41

    if-lt v1, v15, :cond_12

    const/16 v15, 0x5a

    if-gt v1, v15, :cond_12

    const/16 v0, 0x46

    if-le v1, v0, :cond_10

    const/16 v0, 0x58

    if-ne v1, v0, :cond_f

    iget-object v0, v12, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    iget-boolean v0, v0, Linet/ipaddr/ipv4/IPv4AddressStringParameters;->inet_aton_hex:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    :goto_b
    and-int/2addr v3, v0

    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    const/16 v0, 0x42

    if-ne v1, v0, :cond_11

    iget-object v0, v12, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v0

    iget-boolean v0, v0, Linet/ipaddr/IPAddressStringParameters$IPAddressStringFormatParameters;->allowBinary:Z

    and-int/2addr v3, v0

    :cond_11
    :goto_c
    move v0, v13

    const/4 v5, 0x0

    const/16 v17, 0x1

    goto/16 :goto_16

    :cond_12
    const/16 v15, 0x2e

    if-ne v1, v15, :cond_20

    sub-int v0, v13, v4

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_1f

    if-eqz v0, :cond_1e

    const/4 v2, 0x6

    if-ge v9, v2, :cond_18

    const/4 v0, 0x3

    if-ge v9, v0, :cond_15

    if-nez v9, :cond_13

    move/from16 v24, v13

    move/from16 v30, v17

    :goto_d
    move/from16 v17, v21

    goto :goto_e

    :cond_13
    if-ne v9, v1, :cond_14

    move/from16 v25, v13

    move/from16 v31, v17

    goto :goto_d

    :cond_14
    move/from16 v26, v13

    move/from16 v32, v17

    goto :goto_d

    :cond_15
    if-ne v9, v0, :cond_16

    move/from16 v27, v13

    goto :goto_e

    :cond_16
    const/4 v1, 0x4

    if-ne v9, v1, :cond_17

    move/from16 v28, v13

    move/from16 v22, v17

    goto :goto_d

    :cond_17
    move/from16 v29, v13

    move/from16 v23, v17

    goto :goto_d

    :goto_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v21, v17

    goto :goto_f

    :cond_18
    move v1, v2

    if-ne v9, v1, :cond_1a

    const/16 v0, 0x80

    new-array v7, v0, [I

    aput v13, v7, v9

    iget-boolean v1, v12, Linet/ipaddr/HostNameParameters;->normalizeToLowercase:Z

    if-eqz v1, :cond_19

    new-array v14, v0, [Z

    xor-int/lit8 v0, v17, 0x1

    aput-boolean v0, v14, v9

    or-int v18, v18, v17

    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_1a
    aput v13, v7, v9

    if-eqz v14, :cond_1b

    xor-int/lit8 v0, v17, 0x1

    aput-boolean v0, v14, v9

    or-int v18, v18, v17

    :cond_1b
    add-int/lit8 v9, v9, 0x1

    const/16 v0, 0x7f

    if-gt v9, v0, :cond_1d

    :goto_f
    if-ne v13, v10, :cond_1c

    const/4 v0, 0x1

    goto :goto_10

    :cond_1c
    const/4 v0, 0x0

    :goto_10
    and-int/2addr v0, v6

    move v6, v0

    move v0, v13

    move v4, v0

    const/16 v17, 0x0

    goto/16 :goto_16

    :cond_1d
    new-instance v0, Linet/ipaddr/HostNameException;

    const-string v1, "ipaddress.host.error.too.many.segments"

    invoke-direct {v0, v11, v1}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Linet/ipaddr/HostNameException;

    const-string v1, "ipaddress.host.error.segment.too.short"

    invoke-direct {v0, v11, v1}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Linet/ipaddr/HostNameException;

    const-string v1, "ipaddress.error.segment.too.long"

    invoke-direct {v0, v11, v1}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_20
    const/16 v15, 0x5f

    if-ne v1, v15, :cond_21

    goto/16 :goto_a

    :cond_21
    const/16 v15, 0x2d

    if-ne v1, v15, :cond_23

    add-int/lit8 v1, v4, 0x1

    if-eq v13, v1, :cond_22

    add-int/lit8 v1, v10, -0x1

    if-eq v13, v1, :cond_22

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_22

    goto/16 :goto_a

    :cond_22
    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v13}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_23
    const/16 v15, 0x5b

    if-ne v1, v15, :cond_25

    if-nez v13, :cond_24

    if-nez v9, :cond_24

    const/4 v1, 0x2

    if-le v10, v1, :cond_24

    const/4 v0, 0x1

    :goto_11
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_24
    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v13}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_25
    const/16 v15, 0x2f

    if-ne v1, v15, :cond_26

    add-int/lit8 v1, v0, 0x2

    move/from16 v19, v1

    move v10, v13

    const/16 v18, 0x1

    const/16 v20, 0x1

    goto/16 :goto_16

    :cond_26
    const/16 v15, 0x2a

    if-eq v1, v15, :cond_2e

    const/16 v15, 0x25

    if-ne v1, v15, :cond_27

    const/4 v15, 0x1

    goto :goto_12

    :cond_27
    const/4 v15, 0x0

    :goto_12
    if-eqz v15, :cond_28

    goto :goto_14

    :cond_28
    const/16 v15, 0x3a

    if-ne v1, v15, :cond_2c

    iget-boolean v1, v12, Linet/ipaddr/HostNameParameters;->allowPort:Z

    if-nez v1, :cond_2b

    iget-boolean v1, v12, Linet/ipaddr/HostNameParameters;->allowService:Z

    if-eqz v1, :cond_29

    goto :goto_13

    :cond_29
    if-eqz v6, :cond_2a

    goto/16 :goto_5

    :cond_2a
    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v13}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2b
    :goto_13
    add-int/lit8 v1, v0, 0x2

    move/from16 v19, v1

    move v10, v13

    const/16 v16, 0x1

    const/16 v18, 0x1

    goto :goto_16

    :cond_2c
    const/16 v0, 0xbb

    if-ne v1, v0, :cond_2d

    goto/16 :goto_a

    :cond_2d
    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v13}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2e
    const/4 v15, 0x0

    :goto_14
    iget-object v0, v12, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    if-eqz v15, :cond_30

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v1

    iget-boolean v1, v1, Linet/ipaddr/ipv6/IPv6AddressStringParameters;->allowZone:Z

    if-eqz v1, :cond_30

    if-eqz v6, :cond_2f

    const/16 v0, 0x8

    if-ge v9, v0, :cond_2f

    goto/16 :goto_5

    :cond_2f
    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v13}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_30
    if-eqz v3, :cond_31

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv4Parameters()Linet/ipaddr/ipv4/IPv4AddressStringParameters;

    move-result-object v1

    iget-object v1, v1, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v1}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsWildcard()Z

    move-result v1

    if-eqz v1, :cond_31

    if-gez v8, :cond_32

    move v8, v13

    goto :goto_15

    :cond_31
    const/4 v3, 0x0

    :cond_32
    :goto_15
    if-eqz v6, :cond_33

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->getIPv6Parameters()Linet/ipaddr/ipv6/IPv6AddressStringParameters;

    move-result-object v0

    iget-object v0, v0, Linet/ipaddr/AddressStringParameters$AddressStringFormatParameters;->rangeOptions:Linet/ipaddr/AddressStringParameters$RangeParameters;

    invoke-virtual {v0}, Linet/ipaddr/AddressStringParameters$RangeParameters;->allowsWildcard()Z

    move-result v0

    if-eqz v0, :cond_33

    if-gez v8, :cond_c

    move v8, v13

    goto/16 :goto_a

    :cond_33
    if-eqz v3, :cond_34

    goto/16 :goto_9

    :goto_16
    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_34
    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v13}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_35
    const/4 v0, 0x0

    goto/16 :goto_11

    :goto_17
    iget-object v15, v12, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    if-nez v0, :cond_37

    if-nez v1, :cond_37

    if-eqz v4, :cond_36

    goto :goto_18

    :cond_36
    const/4 v1, 0x0

    goto :goto_19

    :cond_37
    :goto_18
    const/4 v1, 0x1

    :goto_19
    :try_start_0
    iget-boolean v5, v12, Linet/ipaddr/HostNameParameters;->allowIPAddress:Z

    if-nez v5, :cond_39

    if-nez v1, :cond_38

    goto :goto_1a

    :cond_38
    new-instance v0, Linet/ipaddr/HostNameException;

    const-string v1, "ipaddress.host.error.ipaddress"

    invoke-direct {v0, v11, v1}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object/from16 v38, v2

    goto/16 :goto_49

    :cond_39
    if-nez v1, :cond_3b

    if-nez v3, :cond_3b

    if-eqz v6, :cond_3a

    goto :goto_1b

    :cond_3a
    :goto_1a
    move-object/from16 v38, v2

    move-object/from16 v39, v7

    move/from16 v40, v8

    move/from16 v41, v10

    move-object/from16 v37, v14

    move/from16 v5, v16

    move/from16 v7, v19

    move v14, v9

    goto/16 :goto_3e

    :cond_3b
    :goto_1b
    :try_start_1
    new-instance v5, Linet/ipaddr/format/validate/ParsedIPAddress;

    move-object/from16 v3, p0

    invoke-direct {v5, v3, v11, v15}, Linet/ipaddr/format/validate/ParsedIPAddress;-><init>(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V

    sget-object v17, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    if-eqz v0, :cond_4a

    add-int/lit8 v0, v10, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5d

    if-eq v4, v6, :cond_3c

    const/16 v34, 0x1

    goto :goto_1c

    :cond_3c
    const/16 v34, 0x0

    :goto_1c
    if-eqz v34, :cond_3e

    const/16 v33, -0x1

    :goto_1d
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_3e

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3d

    goto :goto_1d

    :cond_3d
    new-instance v0, Linet/ipaddr/HostNameException;

    const-string v3, "ipaddress.host.error.bracketed.missing.end"

    invoke-direct {v0, v11, v3}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v39, v7

    move/from16 v40, v8

    move/from16 v41, v10

    :goto_1e
    move-object/from16 v37, v14

    move v14, v9

    goto/16 :goto_3d

    :cond_3e
    const-string v4, "IPv6:"

    const/4 v6, 0x1

    invoke-virtual {v11, v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v4, 0x6

    goto :goto_1f

    :cond_3f
    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x76

    if-eq v4, v6, :cond_49

    sget-char v6, Linet/ipaddr/format/validate/Validator;->IPvFUTURE_UPPERCASE:C
    :try_end_1
    .catch Linet/ipaddr/AddressStringException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v4, v6, :cond_49

    const/4 v4, 0x1

    :goto_1f
    const/16 v33, 0x0

    move-object/from16 v38, v2

    const/16 v6, 0x2f

    move-object v2, v15

    move-object/from16 v3, p1

    move-object/from16 v35, v5

    move v5, v0

    move/from16 v37, v8

    move v8, v6

    move-object/from16 v6, v35

    move-object/from16 v39, v7

    move/from16 v7, v33

    :try_start_2
    invoke-static/range {v2 .. v7}, Linet/ipaddr/format/validate/Validator;->validateIPAddress(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Z)V

    if-eqz v34, :cond_45

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_40

    const/16 v20, 0x1

    goto :goto_20

    :cond_40
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_44

    const/16 v16, 0x1

    :goto_20
    add-int/lit8 v19, v0, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v33

    invoke-virtual/range {v35 .. v35}, Linet/ipaddr/format/validate/IPAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/validate/AddressParseData;->isProvidingEmpty()Z

    move-result v7

    invoke-virtual/range {v35 .. v35}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v34
    :try_end_2
    .catch Linet/ipaddr/AddressStringException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, p2

    move/from16 v5, v20

    move/from16 v6, v16

    move/from16 v40, v37

    move/from16 v8, v19

    move-object/from16 v37, v14

    move v14, v9

    move/from16 v9, v33

    move/from16 v41, v10

    move-object/from16 v10, v34

    :try_start_3
    invoke-static/range {v2 .. v10}, Linet/ipaddr/format/validate/Validator;->parseHostNameQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZZZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v10

    invoke-virtual/range {v35 .. v35}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifierIndex()I

    move-result v2

    invoke-virtual/range {v35 .. v35}, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_41

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x35

    if-ne v3, v4, :cond_41

    add-int/lit8 v2, v2, 0x2

    :cond_41
    move v8, v2

    goto :goto_21

    :catch_2
    move-exception v0

    goto/16 :goto_3d

    :goto_21
    const/4 v4, 0x0

    invoke-virtual/range {v35 .. v35}, Linet/ipaddr/format/validate/ParsedIPAddress;->hasPrefixSeparator()Z

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v7, v35

    move v9, v0

    invoke-static/range {v2 .. v9}, Linet/ipaddr/format/validate/Validator;->parseHostAddressQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZZLinet/ipaddr/format/validate/IPAddressParseData;II)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    if-eqz v20, :cond_43

    sget-object v2, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    if-ne v0, v2, :cond_42

    goto/16 :goto_24

    :cond_42
    invoke-virtual {v0, v10}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->merge(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V

    :goto_22
    move-object v10, v0

    goto/16 :goto_24

    :cond_43
    move-object/from16 v17, v10

    goto :goto_22

    :catch_3
    move-exception v0

    move/from16 v41, v10

    move/from16 v40, v37

    goto/16 :goto_1e

    :cond_44
    move/from16 v41, v10

    move/from16 v40, v37

    move-object/from16 v37, v14

    move v14, v9

    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v2}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_45
    move/from16 v41, v10

    move/from16 v40, v37

    move-object/from16 v37, v14

    move v14, v9

    invoke-virtual/range {v35 .. v35}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifierIndex()I

    move-result v2
    :try_end_3
    .catch Linet/ipaddr/AddressStringException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual/range {v35 .. v35}, Linet/ipaddr/format/validate/ParsedIPAddress;->hasPrefixSeparator()Z

    move-result v20

    const/16 v16, 0x0

    invoke-virtual/range {v35 .. v35}, Linet/ipaddr/format/validate/IPAddressParseData;->isZoned()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_46

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_4
    .catch Linet/ipaddr/AddressStringException; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v4, 0x35

    if-ne v3, v4, :cond_46

    add-int/lit8 v2, v2, 0x2

    :cond_46
    move/from16 v19, v2

    goto :goto_23

    :catch_4
    move-exception v0

    move/from16 v19, v2

    goto/16 :goto_3d

    :goto_23
    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, p2

    move/from16 v5, v20

    move/from16 v6, v16

    move-object/from16 v7, v35

    move/from16 v8, v19

    move v9, v0

    :try_start_5
    invoke-static/range {v2 .. v9}, Linet/ipaddr/format/validate/Validator;->parseHostAddressQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZZLinet/ipaddr/format/validate/IPAddressParseData;II)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v10

    :goto_24
    invoke-virtual/range {v35 .. v35}, Linet/ipaddr/format/validate/ParsedIPAddress;->getProviderIPVersion()Linet/ipaddr/IPAddress$IPVersion;

    move-result-object v0

    sget-object v2, Linet/ipaddr/IPAddress$IPVersion;->IPV6:Linet/ipaddr/IPAddress$IPVersion;

    if-eq v0, v2, :cond_48

    iget-boolean v0, v12, Linet/ipaddr/HostNameParameters;->allowBracketedIPv4:Z

    if-eqz v0, :cond_47

    goto :goto_25

    :cond_47
    new-instance v0, Linet/ipaddr/HostNameException;

    const-string v2, "ipaddress.host.error.bracketed.not.ipv6"

    invoke-direct {v0, v11, v2}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_48
    :goto_25
    move-object/from16 v2, p0

    move-object/from16 v0, v17

    move-object/from16 v5, v35

    goto/16 :goto_3c

    :cond_49
    move-object/from16 v38, v2

    move-object/from16 v39, v7

    move/from16 v40, v8

    move/from16 v41, v10

    move-object/from16 v37, v14

    move v14, v9

    new-instance v0, Linet/ipaddr/HostNameException;

    const-string v2, "ipaddress.host.error.invalid.mechanism"

    invoke-direct {v0, v11, v2}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4a
    move-object/from16 v38, v2

    move-object/from16 v35, v5

    move-object/from16 v39, v7

    move/from16 v40, v8

    move/from16 v41, v10

    move-object/from16 v37, v14

    const/16 v33, -0x1

    move v14, v9

    if-nez v6, :cond_4c

    if-eqz v4, :cond_4b

    goto :goto_26

    :cond_4b
    const/4 v8, 0x0

    goto :goto_27

    :cond_4c
    :goto_26
    const/4 v8, 0x1

    :goto_27
    if-eqz v8, :cond_57

    if-nez v20, :cond_56

    iget-boolean v0, v12, Linet/ipaddr/HostNameParameters;->allowPort:Z

    if-nez v0, :cond_4d

    iget-boolean v0, v12, Linet/ipaddr/HostNameParameters;->allowService:Z

    if-eqz v0, :cond_56

    :cond_4d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_28
    if-ltz v0, :cond_55

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_5
    .catch Linet/ipaddr/AddressStringException; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_4e

    add-int/2addr v0, v2

    move v2, v0

    const/4 v0, 0x1

    goto :goto_2e

    :cond_4e
    const/16 v2, 0x30

    const/16 v5, 0x39

    if-lt v3, v2, :cond_4f

    if-le v3, v5, :cond_50

    :cond_4f
    const/16 v6, 0x41

    goto :goto_2a

    :cond_50
    const/16 v2, 0x2a

    const/16 v6, 0x41

    const/16 v7, 0x5a

    :goto_29
    const/16 v9, 0x61

    const/16 v10, 0x7a

    goto :goto_2d

    :goto_2a
    const/16 v7, 0x5a

    if-lt v3, v6, :cond_51

    if-le v3, v7, :cond_52

    :cond_51
    const/16 v9, 0x61

    goto :goto_2b

    :cond_52
    const/16 v2, 0x2a

    goto :goto_29

    :goto_2b
    const/16 v10, 0x7a

    if-lt v3, v9, :cond_53

    if-le v3, v10, :cond_54

    :cond_53
    const/16 v2, 0x2d

    goto :goto_2c

    :cond_54
    const/16 v2, 0x2a

    goto :goto_2d

    :goto_2c
    if-eq v3, v2, :cond_54

    const/16 v2, 0x2a

    if-ne v3, v2, :cond_55

    :goto_2d
    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    goto :goto_28

    :cond_55
    move/from16 v2, v33

    const/4 v0, 0x0

    :goto_2e
    move v9, v2

    goto :goto_2f

    :cond_56
    move/from16 v9, v33

    const/4 v0, 0x0

    goto :goto_2f

    :cond_57
    move/from16 v0, v16

    move/from16 v9, v19

    :goto_2f
    if-eqz v0, :cond_5c

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v11, v2, v12, v9, v0}, Linet/ipaddr/format/validate/Validator;->parsePortOrService(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/HostNameParameters;II)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0
    :try_end_6
    .catch Linet/ipaddr/AddressStringException; {:try_start_6 .. :try_end_6} :catch_c

    if-eqz v8, :cond_5a

    :try_start_7
    iget-boolean v10, v12, Linet/ipaddr/HostNameParameters;->expectPort:Z
    :try_end_7
    .catch Linet/ipaddr/AddressStringException; {:try_start_7 .. :try_end_7} :catch_b

    if-eqz v10, :cond_58

    add-int/lit8 v2, v9, -0x1

    move-object/from16 v17, v0

    move v7, v2

    goto :goto_30

    :cond_58
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    :try_end_8
    .catch Linet/ipaddr/AddressStringException; {:try_start_8 .. :try_end_8} :catch_6

    move v7, v2

    move-object/from16 v17, v3

    :goto_30
    const/4 v4, 0x0

    const/16 v33, 0x0

    move-object v2, v15

    move-object/from16 v3, p1

    move v5, v7

    move-object/from16 v6, v35

    move-object/from16 v34, v0

    move v0, v7

    move/from16 v7, v33

    :try_start_9
    invoke-static/range {v2 .. v7}, Linet/ipaddr/format/validate/Validator;->validateIPAddress(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Z)V
    :try_end_9
    .catch Linet/ipaddr/AddressStringException; {:try_start_9 .. :try_end_9} :catch_5

    move-object/from16 v3, v35

    const/4 v2, 0x0

    :try_start_a
    invoke-static {v11, v15, v2, v3, v0}, Linet/ipaddr/format/validate/Validator;->parseAddressQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;Linet/ipaddr/format/validate/IPAddressParseData;I)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v4
    :try_end_a
    .catch Linet/ipaddr/AddressStringException; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v7, p0

    move-object v5, v3

    const/4 v2, 0x1

    const/16 v36, 0x1

    move v3, v0

    move-object/from16 v0, v17

    goto :goto_34

    :catch_5
    :goto_31
    move-object/from16 v3, v35

    goto :goto_32

    :catch_6
    move-object/from16 v34, v0

    goto :goto_31

    :catch_7
    :goto_32
    :try_start_b
    new-instance v5, Linet/ipaddr/format/validate/ParsedIPAddress;
    :try_end_b
    .catch Linet/ipaddr/AddressStringException; {:try_start_b .. :try_end_b} :catch_a

    move-object/from16 v7, p0

    :try_start_c
    invoke-direct {v5, v7, v11, v15}, Linet/ipaddr/format/validate/ParsedIPAddress;-><init>(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V
    :try_end_c
    .catch Linet/ipaddr/AddressStringException; {:try_start_c .. :try_end_c} :catch_9

    if-eqz v10, :cond_59

    :try_start_d
    sget-object v0, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_d
    .catch Linet/ipaddr/AddressStringException; {:try_start_d .. :try_end_d} :catch_8

    move v3, v2

    const/4 v2, 0x1

    :goto_33
    const/4 v4, 0x0

    const/16 v36, 0x0

    goto :goto_34

    :catch_8
    move-exception v0

    goto :goto_38

    :cond_59
    const/4 v2, 0x1

    add-int/lit8 v0, v9, -0x1

    move v3, v0

    move-object/from16 v0, v34

    goto :goto_33

    :goto_34
    move-object/from16 v17, v0

    move/from16 v0, v36

    goto :goto_37

    :catch_9
    move-exception v0

    :goto_35
    const/4 v2, 0x1

    :goto_36
    move-object v5, v3

    goto :goto_38

    :catch_a
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_35

    :catch_b
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v3, v35

    goto :goto_35

    :cond_5a
    move-object/from16 v7, p0

    move-object/from16 v34, v0

    move-object/from16 v3, v35

    const/4 v2, 0x1

    add-int/lit8 v0, v9, -0x1

    move-object v5, v3

    move-object/from16 v17, v34

    const/4 v4, 0x0

    move v3, v0

    const/4 v0, 0x0

    :goto_37
    move v8, v3

    move-object v10, v4

    move-object v9, v5

    goto :goto_3a

    :catch_c
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v3, v35

    goto :goto_36

    :goto_38
    if-eqz v8, :cond_5b

    :try_start_e
    sget-object v17, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move v8, v3

    move-object v9, v5

    :goto_39
    const/4 v0, 0x0

    const/4 v10, 0x0

    goto :goto_3a

    :cond_5b
    throw v0

    :cond_5c
    move-object/from16 v7, p0

    move-object/from16 v3, v35

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    move v8, v0

    move-object v9, v3

    goto :goto_39

    :goto_3a
    if-nez v0, :cond_5d

    const/4 v4, 0x0

    const/4 v0, 0x0

    move-object v2, v15

    move-object/from16 v3, p1

    move v5, v8

    move-object v6, v9

    move-object v10, v7

    move v7, v0

    invoke-static/range {v2 .. v7}, Linet/ipaddr/format/validate/Validator;->validateIPAddress(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Z)V

    const/4 v2, 0x0

    invoke-static {v11, v15, v2, v9, v8}, Linet/ipaddr/format/validate/Validator;->parseAddressQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;Linet/ipaddr/format/validate/IPAddressParseData;I)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    move-object v5, v9

    move-object v2, v10

    move-object v10, v0

    :goto_3b
    move-object/from16 v0, v17

    goto :goto_3c

    :cond_5d
    move-object v2, v7

    move-object v5, v9

    goto :goto_3b

    :goto_3c
    invoke-static {v2, v11, v15, v5, v10}, Linet/ipaddr/format/validate/Validator;->chooseProvider(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/format/validate/ParsedIPAddress;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object v2

    new-instance v3, Linet/ipaddr/format/validate/ParsedHost;

    invoke-direct {v3, v11, v2, v0}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;Linet/ipaddr/format/validate/IPAddressProvider;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V
    :try_end_e
    .catch Linet/ipaddr/AddressStringException; {:try_start_e .. :try_end_e} :catch_2

    return-object v3

    :goto_3d
    if-nez v1, :cond_72

    move/from16 v5, v16

    move/from16 v7, v19

    :goto_3e
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, p2

    move/from16 v4, v20

    move v6, v13

    invoke-static/range {v1 .. v9}, Linet/ipaddr/format/validate/Validator;->parseHostNameQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;ZZZIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    if-eqz v13, :cond_60

    iget-boolean v1, v12, Linet/ipaddr/HostNameParameters;->allowEmpty:Z

    if-eqz v1, :cond_5f

    sget-object v1, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    if-ne v0, v1, :cond_5e

    sget-object v0, Linet/ipaddr/format/validate/Validator;->DEFAULT_EMPTY_HOST:Linet/ipaddr/format/validate/ParsedHost;

    goto/16 :goto_48

    :catch_d
    move-exception v0

    goto/16 :goto_49

    :cond_5e
    new-instance v1, Linet/ipaddr/format/validate/ParsedHost;

    sget-object v2, Linet/ipaddr/format/validate/Validator;->EMPTY_INDICES:[I

    const/4 v3, 0x0

    invoke-direct {v1, v11, v2, v3, v0}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;[I[ZLinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V

    move-object v0, v1

    goto/16 :goto_48

    :cond_5f
    new-instance v0, Linet/ipaddr/HostNameException;

    const-string v1, "ipaddress.host.error.empty"

    invoke-direct {v0, v11, v1}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_60
    const/4 v1, 0x6

    const/4 v3, 0x0

    if-gt v14, v1, :cond_62

    new-array v1, v14, [I

    iget-boolean v2, v12, Linet/ipaddr/HostNameParameters;->normalizeToLowercase:Z

    if-eqz v2, :cond_61

    new-array v2, v14, [Z

    move-object v7, v1

    move-object v4, v2

    move v9, v14

    goto :goto_40

    :cond_61
    move-object v7, v1

    move v9, v14

    move-object/from16 v4, v37

    goto :goto_40

    :cond_62
    move-object/from16 v7, v39

    array-length v1, v7

    if-eq v14, v1, :cond_64

    new-array v1, v14, [I

    add-int/lit8 v9, v14, -0x6

    const/4 v2, 0x6

    invoke-static {v7, v2, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v37, :cond_63

    new-array v4, v14, [Z

    move-object/from16 v14, v37

    invoke-static {v14, v2, v4, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v1

    move v9, v2

    goto :goto_40

    :cond_63
    move-object/from16 v14, v37

    move-object v7, v1

    :goto_3f
    move v9, v2

    move-object v4, v14

    goto :goto_40

    :cond_64
    move-object/from16 v14, v37

    const/4 v2, 0x6

    goto :goto_3f

    :goto_40
    const/4 v14, 0x0

    :goto_41
    if-ge v14, v9, :cond_6b

    const/4 v1, 0x2

    if-ge v14, v1, :cond_66

    if-nez v14, :cond_65

    move/from16 v5, v24

    move/from16 v6, v30

    :goto_42
    const/4 v2, 0x4

    goto :goto_43

    :cond_65
    move/from16 v5, v25

    move/from16 v6, v31

    goto :goto_42

    :cond_66
    const/4 v2, 0x4

    if-ge v14, v2, :cond_68

    if-ne v14, v1, :cond_67

    move/from16 v5, v26

    move/from16 v6, v32

    goto :goto_43

    :cond_67
    move/from16 v6, v21

    move/from16 v5, v27

    goto :goto_43

    :cond_68
    if-ne v14, v2, :cond_69

    move/from16 v6, v22

    move/from16 v5, v28

    goto :goto_43

    :cond_69
    move/from16 v6, v23

    move/from16 v5, v29

    :goto_43
    aput v5, v7, v14

    if-eqz v4, :cond_6a

    const/4 v5, 0x1

    xor-int/lit8 v8, v6, 0x1

    aput-boolean v8, v4, v14

    or-int v6, v18, v6

    move/from16 v18, v6

    goto :goto_44

    :cond_6a
    const/4 v5, 0x1

    :goto_44
    add-int/lit8 v14, v14, 0x1

    goto :goto_41

    :cond_6b
    if-eqz v20, :cond_6c

    sget-object v1, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-object v2, v1

    move/from16 v10, v41

    move-object v1, v0

    goto :goto_45

    :cond_6c
    sget-object v1, Linet/ipaddr/format/validate/ParsedHost;->NO_QUALIFIER:Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-object v2, v0

    move/from16 v10, v41

    :goto_45
    invoke-static {v11, v10, v1}, Linet/ipaddr/format/validate/Validator;->checkSpecialHosts(Ljava/lang/String;ILinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;

    move-result-object v8

    move/from16 v1, v40

    if-ltz v1, :cond_6f

    if-eqz v8, :cond_6d

    iget-object v13, v8, Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;->addressStringException:Linet/ipaddr/AddressStringException;

    if-eqz v13, :cond_6f

    goto :goto_46

    :cond_6d
    move-object v13, v3

    :goto_46
    if-eqz v13, :cond_6e

    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v1, v13}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    :cond_6e
    new-instance v0, Linet/ipaddr/HostNameException;

    invoke-direct {v0, v11, v1}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_6f
    new-instance v9, Linet/ipaddr/format/validate/ParsedHost;

    if-nez v8, :cond_70

    move-object v5, v0

    goto :goto_47

    :cond_70
    move-object v5, v2

    :goto_47
    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Linet/ipaddr/format/validate/ParsedHost;-><init>(Ljava/lang/String;[I[ZLinet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;Linet/ipaddr/format/validate/ParsedHost$EmbeddedAddress;)V

    if-nez v18, :cond_71

    if-nez v8, :cond_71

    iput-object v11, v9, Linet/ipaddr/format/validate/ParsedHost;->host:Ljava/lang/String;

    :cond_71
    move-object v0, v9

    :goto_48
    return-object v0

    :cond_72
    throw v0
    :try_end_f
    .catch Linet/ipaddr/AddressStringException; {:try_start_f .. :try_end_f} :catch_d

    :goto_49
    new-instance v1, Linet/ipaddr/HostNameException;

    move-object/from16 v2, v38

    invoke-direct {v1, v11, v0, v2}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Linet/ipaddr/AddressStringException;Ljava/lang/String;)V

    throw v1

    :cond_73
    new-instance v0, Linet/ipaddr/HostNameException;

    const-string v1, "ipaddress.host.error.invalid.length"

    invoke-direct {v0, v11, v1}, Linet/ipaddr/HostNameException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static validateHostImpl(Linet/ipaddr/HostName;)Linet/ipaddr/format/validate/ParsedHost;
    .locals 2

    invoke-virtual {p0}, Linet/ipaddr/HostName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Linet/ipaddr/HostName;->getValidationOptions()Linet/ipaddr/HostNameParameters;

    move-result-object v1

    invoke-static {p0, v0, v1}, Linet/ipaddr/format/validate/Validator;->validateHost(Linet/ipaddr/HostName;Ljava/lang/String;Linet/ipaddr/HostNameParameters;)Linet/ipaddr/format/validate/ParsedHost;

    move-result-object p0

    return-object p0
.end method

.method private static validateIPAddress(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Z)V
    .locals 8

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/Validator;->validateAddress(Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/MACAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Linet/ipaddr/format/validate/MACAddressParseData;Z)V

    return-void
.end method

.method private static validateMACAddress(Linet/ipaddr/MACAddressStringParameters;Ljava/lang/String;IILinet/ipaddr/format/validate/MACAddressParseData;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Linet/ipaddr/format/validate/Validator;->validateAddress(Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/MACAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Linet/ipaddr/format/validate/MACAddressParseData;Z)V

    return-void
.end method

.method private static validatePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;IILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;
    .locals 14

    .line 2
    move-object v1, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v0, p5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ne v5, v2, :cond_0

    return-object v3

    :cond_0
    sget-object v2, Linet/ipaddr/format/validate/Validator;->chars:[I

    const/4 v6, 0x0

    move v9, v5

    move v7, v6

    move v8, v7

    move v10, v8

    :goto_0
    const/4 v11, 0x1

    if-ge v9, v0, :cond_6

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0x31

    if-lt v12, v13, :cond_1

    const/16 v13, 0x39

    if-gt v12, v13, :cond_1

    mul-int/lit8 v7, v7, 0xa

    aget v10, v2, v12

    add-int/2addr v7, v10

    move v10, v11

    goto :goto_1

    :cond_1
    const/16 v13, 0x30

    if-ne v12, v13, :cond_3

    if-eqz v10, :cond_2

    mul-int/lit8 v7, v7, 0xa

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    const/16 v2, 0x3a

    if-ne v12, v2, :cond_4

    if-eqz v4, :cond_4

    iget-boolean v2, v4, Linet/ipaddr/HostNameParameters;->allowPort:Z

    if-nez v2, :cond_5

    iget-boolean v2, v4, Linet/ipaddr/HostNameParameters;->allowService:Z

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v10, p1

    goto :goto_3

    :cond_5
    :goto_2
    if-le v9, v5, :cond_4

    add-int/lit8 v2, v9, 0x1

    move-object v10, p1

    :try_start_0
    invoke-static {p0, p1, v4, v2, v0}, Linet/ipaddr/format/validate/Validator;->parsePortOrService(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/HostNameParameters;II)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0
    :try_end_0
    .catch Linet/ipaddr/AddressStringException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v11

    move-object v11, v0

    goto :goto_5

    :catch_0
    return-object v3

    :goto_3
    move v9, v0

    :goto_4
    move-object v11, v3

    goto :goto_5

    :cond_6
    move-object v10, p1

    move v9, v0

    move v6, v11

    goto :goto_4

    :goto_5
    if-eqz v6, :cond_8

    sub-int v12, v9, v5

    move v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move v6, v9

    move v7, v12

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Linet/ipaddr/format/validate/Validator;->parseValidatedPrefix(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;IIIILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    if-eqz v11, :cond_7

    invoke-virtual {v11, v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->overridePrefix(Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)V

    return-object v11

    :cond_7
    return-object v0

    :cond_8
    return-object v3
.end method

.method public static validatePrefixImpl(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 7

    const/4 v1, 0x0

    sget-object v2, Linet/ipaddr/format/validate/Validator;->DEFAULT_PREFIX_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Linet/ipaddr/format/validate/Validator;->validatePrefix(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;IILinet/ipaddr/IPAddress$IPVersion;)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p1, Linet/ipaddr/AddressStringException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ipaddress.error.invalidCIDRPrefix"

    invoke-direct {p1, p0, v0}, Linet/ipaddr/AddressStringException;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    throw p1
.end method

.method public static validateZone(Ljava/lang/CharSequence;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public validateAddress(Linet/ipaddr/IPAddressString;)Linet/ipaddr/format/validate/IPAddressProvider;
    .locals 9

    .line 1
    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Linet/ipaddr/IPAddressString;->getValidationOptions()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v7

    new-instance v8, Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-direct {v8, p1, v6, v7}, Linet/ipaddr/format/validate/ParsedIPAddress;-><init>(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;)V

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Linet/ipaddr/format/validate/Validator;->validateIPAddress(Linet/ipaddr/IPAddressStringParameters;Ljava/lang/CharSequence;IILinet/ipaddr/format/validate/IPAddressParseData;Z)V

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v6, v7, v0, v8, v1}, Linet/ipaddr/format/validate/Validator;->parseAddressQualifier(Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/HostNameParameters;Linet/ipaddr/format/validate/IPAddressParseData;I)Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    invoke-static {p1, v6, v7, v8, v0}, Linet/ipaddr/format/validate/Validator;->chooseProvider(Linet/ipaddr/HostIdentifierString;Ljava/lang/CharSequence;Linet/ipaddr/IPAddressStringParameters;Linet/ipaddr/format/validate/ParsedIPAddress;Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;)Linet/ipaddr/format/validate/IPAddressProvider;

    move-result-object p1

    return-object p1
.end method

.method public validateAddress(Linet/ipaddr/MACAddressString;)Linet/ipaddr/format/validate/MACAddressProvider;
    .locals 5

    .line 2
    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->getValidationOptions()Linet/ipaddr/MACAddressStringParameters;

    move-result-object v1

    new-instance v2, Linet/ipaddr/format/validate/ParsedMACAddress;

    invoke-direct {v2, p1, v0}, Linet/ipaddr/format/validate/ParsedMACAddress;-><init>(Linet/ipaddr/MACAddressString;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v3, v2}, Linet/ipaddr/format/validate/Validator;->validateMACAddress(Linet/ipaddr/MACAddressStringParameters;Ljava/lang/String;IILinet/ipaddr/format/validate/MACAddressParseData;)V

    invoke-virtual {v2}, Linet/ipaddr/format/validate/MACAddressParseData;->getAddressParseData()Linet/ipaddr/format/validate/AddressParseData;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->isProvidingEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p1, Linet/ipaddr/format/validate/MACAddressProvider;->EMPTY_PROVIDER:Linet/ipaddr/format/validate/MACAddressProvider;

    return-object p1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/format/validate/AddressParseData;->isAll()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Linet/ipaddr/format/validate/MACAddressProvider;->getAllProvider(Linet/ipaddr/MACAddressStringParameters;)Linet/ipaddr/format/validate/MACAddressProvider;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Linet/ipaddr/MACAddressString;->getValidationOptions()Linet/ipaddr/MACAddressStringParameters;

    move-result-object p1

    invoke-static {v0, p1, v2}, Linet/ipaddr/format/validate/Validator;->checkSegments(Ljava/lang/String;Linet/ipaddr/MACAddressStringParameters;Linet/ipaddr/format/validate/ParsedMACAddress;)V

    return-object v2
.end method

.method public validateHost(Linet/ipaddr/HostName;)Linet/ipaddr/format/validate/ParsedHost;
    .locals 0

    .line 1
    invoke-static {p1}, Linet/ipaddr/format/validate/Validator;->validateHostImpl(Linet/ipaddr/HostName;)Linet/ipaddr/format/validate/ParsedHost;

    move-result-object p1

    return-object p1
.end method

.method public validatePrefix(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Linet/ipaddr/format/validate/Validator;->validatePrefixImpl(Ljava/lang/CharSequence;Linet/ipaddr/IPAddress$IPVersion;)I

    move-result p1

    return p1
.end method
