.class public Lorg/bouncycastle/asn1/x509/TBSCertList;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;,
        Lorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;,
        Lorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;
    }
.end annotation


# instance fields
.field crlExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field revokedCertificates:Lorg/bouncycastle/asn1/ASN1Sequence;

.field signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-lt v0, v1, :cond_5

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x7

    .line 16
    if-gt v0, v1, :cond_5

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 37
    .line 38
    move v0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 42
    .line 43
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 54
    .line 55
    add-int/lit8 v3, v0, 0x2

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 66
    .line 67
    add-int/lit8 v1, v0, 0x3

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Time;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 78
    .line 79
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-ge v1, v3, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1UTCTime;

    .line 90
    .line 91
    if-nez v3, :cond_1

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 98
    .line 99
    if-nez v3, :cond_1

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    instance-of v3, v3, Lorg/bouncycastle/asn1/x509/Time;

    .line 106
    .line 107
    if-eqz v3, :cond_2

    .line 108
    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x4

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Time;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 120
    .line 121
    move v1, v0

    .line 122
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-ge v1, v0, :cond_3

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 133
    .line 134
    if-nez v0, :cond_3

    .line 135
    .line 136
    add-int/lit8 v0, v1, 0x1

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 147
    .line 148
    move v1, v0

    .line 149
    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-ge v1, v0, :cond_4

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 160
    .line 161
    if-eqz v0, :cond_4

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 168
    .line 169
    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 178
    .line 179
    :cond_4
    return-void

    .line 180
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v2, "Bad sequence size: "

    .line 185
    .line 186
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p1, v1}, Ll1/e;->k(Lorg/bouncycastle/asn1/ASN1Sequence;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertList;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/TBSCertList;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/TBSCertList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/TBSCertList;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getNextUpdate()Lorg/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/x509/TBSCertList$1;)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;-><init>(Lorg/bouncycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getThisUpdate()Lorg/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_3

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
