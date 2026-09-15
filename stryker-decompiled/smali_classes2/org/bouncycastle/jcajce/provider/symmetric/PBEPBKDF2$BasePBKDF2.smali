.class public Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasePBKDF2"
.end annotation


# instance fields
.field private defaultDigest:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 2
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    return-void
.end method

.method private getDigestCode(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I
    .locals 2

    .line 1
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->access$000()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    .line 19
    .line 20
    const-string v1, "Invalid KeySpec: unknown PRF algorithm "

    .line 21
    .line 22
    invoke-static {v1, p1}, Ll1/e;->i(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 10

    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_6

    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/bouncycastle/jcajce/PBKDF2Key;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/crypto/PasswordConverter;->ASCII:Lorg/bouncycastle/crypto/PasswordConverter;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/crypto/PasswordConverter;->UTF8:Lorg/bouncycastle/crypto/PasswordConverter;

    :goto_0
    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/PBKDF2Key;-><init>([CLorg/bouncycastle/crypto/CharToByteConverter;)V

    return-object p1

    :cond_1
    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_3

    instance-of p1, v8, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    if-eqz p1, :cond_2

    move-object p1, v8

    check-cast p1, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/PBKDF2KeySpec;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->getDigestCode(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v5

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v6

    const/4 v7, -0x1

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v8, p1, v5, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object p1

    :cond_2
    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->defaultDigest:I

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v6

    const/4 v7, -0x1

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    invoke-static {v8, p1, v5, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;->algOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;->scheme:I

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/CipherParameters;)V

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "password empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "positive key length required: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getKeyLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "positive iteration count required: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
