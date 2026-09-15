.class public Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_VERSION:I = 0x1

.field private static final TAG_DATA_LOCATIONS:I = 0x3

.field private static final TAG_DVCS:I = 0x2

.field private static final TAG_EXTENSIONS:I = 0x4

.field private static final TAG_REQUESTER:I = 0x0

.field private static final TAG_REQUEST_POLICY:I = 0x1


# instance fields
.field private dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private nonce:Ljava/math/BigInteger;

.field private requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

.field private requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

.field private requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

.field private version:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    .line 29
    .line 30
    move v2, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    .line 33
    .line 34
    move v2, v1

    .line 35
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lorg/bouncycastle/asn1/dvcs/ServiceType;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/ServiceType;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    .line 46
    .line 47
    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-ge v3, v2, :cond_9

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    instance-of v4, v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->nonce:Ljava/math/BigInteger;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    instance-of v4, v2, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 73
    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    invoke-static {v2}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    instance-of v4, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 84
    .line 85
    if-eqz v4, :cond_8

    .line 86
    .line 87
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_7

    .line 96
    .line 97
    if-eq v4, v0, :cond_6

    .line 98
    .line 99
    const/4 v5, 0x2

    .line 100
    if-eq v4, v5, :cond_5

    .line 101
    .line 102
    const/4 v5, 0x3

    .line 103
    if-eq v4, v5, :cond_4

    .line 104
    .line 105
    const/4 v5, 0x4

    .line 106
    if-ne v4, v5, :cond_3

    .line 107
    .line 108
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string v0, "unknown tag number encountered: "

    .line 118
    .line 119
    invoke-static {v0, v4}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1

    .line 127
    :cond_4
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_8
    invoke-static {v2}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    .line 164
    .line 165
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_9
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDVCS()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getDataLocations()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getRequestPolicy()Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    return-object v0
.end method

.method public getRequestTime()Lorg/bouncycastle/asn1/dvcs/DVCSTime;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-object v0
.end method

.method public getRequester()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getService()Lorg/bouncycastle/asn1/dvcs/ServiceType;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 10

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->nonce:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->nonce:Ljava/math/BigInteger;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x4

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v6

    const/4 v7, 0x5

    new-array v8, v7, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v9, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

    aput-object v9, v8, v1

    iget-object v9, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    aput-object v9, v8, v2

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    aput-object v2, v8, v3

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    aput-object v2, v8, v4

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    aput-object v2, v8, v5

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_4

    aget v3, v6, v2

    aget-object v4, v8, v2

    if-eqz v4, :cond_3

    new-instance v5, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v1, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "DVCSRequestInformation {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    const/4 v2, 0x1

    const-string v3, "\n"

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->service:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->nonce:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nonce: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestTime:Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requester: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requester:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestPolicy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->requestPolicy:Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dvcs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dvcs:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataLocations: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->dataLocations:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extensions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformation;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
