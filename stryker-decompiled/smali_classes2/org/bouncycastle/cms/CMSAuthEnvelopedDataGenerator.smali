.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;
.super Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;-><init>()V

    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 10

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p2, v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    sget-object v5, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v3, v5}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    .line 30
    .line 31
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Lorg/bouncycastle/operator/AADProcessor;->getAADStream()Ljava/io/OutputStream;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v6, "DER"

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    move-object v5, v4

    .line 56
    :goto_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {p2}, Lorg/bouncycastle/operator/AADProcessor;->getMAC()[B

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    new-instance v6, Lorg/bouncycastle/asn1/BEROctetString;

    .line 72
    .line 73
    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_1

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    check-cast v7, Lorg/bouncycastle/cms/RecipientInfoGenerator;

    .line 97
    .line 98
    invoke-interface {v7, p2}, Lorg/bouncycastle/cms/RecipientInfoGenerator;->generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    new-instance p2, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    .line 107
    .line 108
    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p2, p1, v3, v6}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 116
    .line 117
    if-eqz p1, :cond_2

    .line 118
    .line 119
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 120
    .line 121
    invoke-interface {p1, v1}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance v4, Lorg/bouncycastle/asn1/DLSet;

    .line 126
    .line 127
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {v4, p1}, Lorg/bouncycastle/asn1/DLSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    move-object v6, v4

    .line 135
    new-instance p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 136
    .line 137
    sget-object v7, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 138
    .line 139
    new-instance v8, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;

    .line 140
    .line 141
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 142
    .line 143
    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    .line 144
    .line 145
    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 146
    .line 147
    .line 148
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    .line 149
    .line 150
    invoke-direct {v9, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 151
    .line 152
    .line 153
    move-object v0, v8

    .line 154
    move-object v2, v3

    .line 155
    move-object v3, p2

    .line 156
    move-object v4, v5

    .line 157
    move-object v5, v9

    .line 158
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {p1, v7, v8}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 162
    .line 163
    .line 164
    new-instance p2, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    .line 165
    .line 166
    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 167
    .line 168
    .line 169
    return-object p2

    .line 170
    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 171
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string v1, "unable to process authenticated content: "

    .line 175
    .line 176
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 184
    .line 185
    .line 186
    throw p2
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    move-result-object p1

    return-object p1
.end method
