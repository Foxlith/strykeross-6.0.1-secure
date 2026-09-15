.class public Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/bc/BcDigestProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$AdjustedXof;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

.field private static final lookup:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->createTable()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->lookup:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;

    invoke-direct {v0}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTable()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$1;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$2;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$3;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$4;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$5;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$6;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$7;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$8;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$9;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$9;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$10;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$10;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$11;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$12;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$12;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$13;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$13;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$14;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$14;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$15;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$15;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$16;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$16;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$17;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$17;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$18;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$18;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$19;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$19;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$20;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$20;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$21;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$21;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$22;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$22;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$23;

    invoke-direct {v2}, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider$23;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;
    .locals 2

    sget-object v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->lookup:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/operator/bc/BcDigestProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string v0, "cannot recognise digest"

    invoke-direct {p1, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
