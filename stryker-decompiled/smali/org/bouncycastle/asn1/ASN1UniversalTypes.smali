.class final Lorg/bouncycastle/asn1/ASN1UniversalTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(I)Lorg/bouncycastle/asn1/ASN1UniversalType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/bouncycastle/asn1/ASN1UniversalString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/bouncycastle/asn1/ASN1GeneralString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/bouncycastle/asn1/ASN1VisibleString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/bouncycastle/asn1/ASN1IA5String;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/bouncycastle/asn1/ASN1VideotexString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/bouncycastle/asn1/ASN1T61String;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/bouncycastle/asn1/ASN1PrintableString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/bouncycastle/asn1/ASN1NumericString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_d
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Set;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_e
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Sequence;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_f
    sget-object p0, Lorg/bouncycastle/asn1/ASN1RelativeOID;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_10
    sget-object p0, Lorg/bouncycastle/asn1/ASN1UTF8String;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_11
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Enumerated;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_12
    sget-object p0, Lorg/bouncycastle/asn1/ASN1External;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_13
    sget-object p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_14
    sget-object p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_15
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Null;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_16
    sget-object p0, Lorg/bouncycastle/asn1/ASN1OctetString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_17
    sget-object p0, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_18
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Integer;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_19
    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
