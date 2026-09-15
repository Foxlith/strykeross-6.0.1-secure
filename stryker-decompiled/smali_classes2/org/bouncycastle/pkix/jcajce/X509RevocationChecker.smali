.class public Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;,
        Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;
    }
.end annotation


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field private static LOG:Ljava/util/logging/Logger;

.field public static final PKIX_VALIDITY_MODEL:I

.field private static final crlCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/security/cert/X509CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final crlReasons:[Ljava/lang/String;


# instance fields
.field private final canSoftFail:Z

.field private final crlCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentDate:Ljava/util/Date;

.field private final failHardMaxTime:J

.field private final failLogMaxTime:J

.field private final failures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isCheckEEOnly:Z

.field private signingCert:Ljava/security/cert/X509Certificate;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final validityModel:I

.field private workingIssuerName:Ljavax/security/auth/x500/X500Principal;

.field private workingPublicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-class v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCache:Ljava/util/Map;

    const-string v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string v8, "unknown"

    const-string v9, "removeFromCRL"

    const-string v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$100(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$200(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$300(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->isCheckEEOnly:Z

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$400(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validityModel:I

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$500(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$600(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->canSoftFail:Z

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$700(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failLogMaxTime:J

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$800(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failHardMaxTime:J

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$900(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$900(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$1000(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$1000(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)V

    return-void
.end method

.method private addIssuers(Ljava/util/List;Ljava/security/cert/CertStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Ljava/security/cert/CertStore;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    return-void
.end method

.method private addIssuers(Ljava/util/List;Lorg/bouncycastle/util/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V

    invoke-interface {p2, v0}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    return-void
.end method

.method private downloadCRLs(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/cert/CRL;
    .locals 16

    move-object/from16 v1, p2

    invoke-static/range {p3 .. p3}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    array-length v0, v2

    const/4 v5, 0x0

    if-eq v4, v0, :cond_5

    aget-object v0, v2, v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    if-eq v7, v0, :cond_4

    aget-object v0, v6, v7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    sget-object v8, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCache:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509CRL;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    if-nez v10, :cond_0

    return-object v9

    :cond_0
    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v10, "X.509"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v11, p4

    :try_start_2
    invoke-interface {v11, v10}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v10, v13}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509CRL;

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    sget-object v12, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloaded CRL from CrlDP "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " for issuer \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v15, p1

    :try_start_3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v13, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v10

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v15, p1

    move-object/from16 v11, p4

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v15, p1

    move-object/from16 v11, p4

    move-object v9, v5

    :goto_2
    sget-object v3, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const-string v10, " ignored: "

    const-string v12, "CrlDP "

    if-eqz v3, :cond_2

    sget-object v3, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    sget-object v3, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object/from16 v15, p1

    move-object/from16 v11, p4

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v15, p1

    move-object/from16 v11, p4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v5
.end method

.method public static getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/x509/CRLDistPoint;",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v0, "could not read distribution points could not be read"

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 2
    .line 3
    iget-boolean p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->isCheckEEOnly:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq p2, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 30
    .line 31
    if-nez p2, :cond_5

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 38
    .line 39
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const/4 v0, 0x0

    .line 46
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 57
    .line 58
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    :cond_2
    move-object v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v0, "no trust anchor found for "

    .line 108
    .line 109
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p1, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p1

    .line 125
    :cond_5
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    :try_start_0
    new-instance v0, Ljava/security/cert/PKIXParameters;

    .line 131
    .line 132
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    .line 133
    .line 134
    invoke-direct {v0, v1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 135
    .line 136
    .line 137
    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    .line 144
    .line 145
    .line 146
    move v2, v1

    .line 147
    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eq v2, v3, :cond_7

    .line 154
    .line 155
    sget-object v3, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 156
    .line 157
    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_6

    .line 164
    .line 165
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Ljava/security/cert/CertStore;

    .line 172
    .line 173
    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Ljava/security/cert/CertStore;)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catch_0
    move-exception p1

    .line 178
    goto/16 :goto_c

    .line 179
    .line 180
    :cond_6
    :goto_3
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Ljava/security/cert/CertStore;

    .line 187
    .line 188
    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v2, v2, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_7
    new-instance v9, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 195
    .line 196
    invoke-direct {v9, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 197
    .line 198
    .line 199
    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->validityModel:I

    .line 200
    .line 201
    invoke-virtual {v9, v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    move v0, v1

    .line 205
    :goto_4
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eq v0, v2, :cond_9

    .line 212
    .line 213
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 214
    .line 215
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_8

    .line 222
    .line 223
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    .line 224
    .line 225
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Lorg/bouncycastle/util/Store;

    .line 230
    .line 231
    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Lorg/bouncycastle/util/Store;)V

    .line 232
    .line 233
    .line 234
    :cond_8
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;

    .line 235
    .line 236
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    .line 237
    .line 238
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    check-cast v3, Lorg/bouncycastle/util/Store;

    .line 243
    .line 244
    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Lorg/bouncycastle/util/Store;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9, v2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 248
    .line 249
    .line 250
    add-int/lit8 v0, v0, 0x1

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    const-string v10, "\""

    .line 258
    .line 259
    if-eqz v0, :cond_a

    .line 260
    .line 261
    sget-object p2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 262
    .line 263
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 264
    .line 265
    const-string v1, "configured with 0 pre-loaded CRLs"

    .line 266
    .line 267
    invoke-virtual {p2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_6

    .line 271
    :cond_a
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 272
    .line 273
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_b

    .line 280
    .line 281
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eq v1, v0, :cond_c

    .line 286
    .line 287
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 288
    .line 289
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 290
    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v4, "configuring with CRL for issuer \""

    .line 294
    .line 295
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    add-int/lit8 v1, v1, 0x1

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_b
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 319
    .line 320
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 321
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v3, "configured with "

    .line 325
    .line 326
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 330
    .line 331
    .line 332
    move-result p2

    .line 333
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p2, " pre-loaded CRLs"

    .line 337
    .line 338
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    :cond_c
    :goto_6
    invoke-virtual {v9}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    .line 353
    .line 354
    invoke-static {v1, p2}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    .line 359
    .line 360
    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 361
    .line 362
    iget-object v6, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 363
    .line 364
    new-instance v7, Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .line 368
    .line 369
    iget-object v8, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 370
    .line 371
    move-object v0, p0

    .line 372
    move-object v4, p1

    .line 373
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    .line 375
    .line 376
    goto/16 :goto_a

    .line 377
    .line 378
    :catch_1
    move-exception p2

    .line 379
    goto :goto_7

    .line 380
    :catch_2
    move-exception p1

    .line 381
    goto/16 :goto_b

    .line 382
    .line 383
    :goto_7
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 384
    .line 385
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-interface {p1, v1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    if-eqz v1, :cond_13

    .line 394
    .line 395
    :try_start_2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    .line 400
    .line 401
    invoke-static {p1, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 406
    .line 407
    invoke-direct {p0, v1, v2, v0, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->downloadCRLs(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/cert/CRL;

    .line 408
    .line 409
    .line 410
    move-result-object v0
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 411
    if-eqz v0, :cond_d

    .line 412
    .line 413
    :try_start_3
    new-instance p2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;

    .line 414
    .line 415
    new-instance v1, Lorg/bouncycastle/util/CollectionStore;

    .line 416
    .line 417
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-direct {v1, v0}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    .line 422
    .line 423
    .line 424
    invoke-direct {p2, p0, v1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Lorg/bouncycastle/util/Store;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v9, p2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v9}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    .line 435
    .line 436
    invoke-static {v1, p2}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    .line 441
    .line 442
    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 443
    .line 444
    iget-object v6, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 445
    .line 446
    new-instance v7, Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .line 450
    .line 451
    iget-object v8, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 452
    .line 453
    move-object v0, p0

    .line 454
    move-object v4, p1

    .line 455
    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 456
    .line 457
    .line 458
    goto :goto_a

    .line 459
    :catch_3
    move-exception p1

    .line 460
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    .line 461
    .line 462
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    .line 472
    .line 473
    throw p2

    .line 474
    :cond_d
    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->canSoftFail:Z

    .line 475
    .line 476
    if-eqz v0, :cond_12

    .line 477
    .line 478
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    .line 483
    .line 484
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    check-cast v1, Ljava/lang/Long;

    .line 489
    .line 490
    if-eqz v1, :cond_11

    .line 491
    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 493
    .line 494
    .line 495
    move-result-wide v2

    .line 496
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 497
    .line 498
    .line 499
    move-result-wide v4

    .line 500
    sub-long/2addr v2, v4

    .line 501
    iget-wide v4, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failHardMaxTime:J

    .line 502
    .line 503
    const-wide/16 v6, -0x1

    .line 504
    .line 505
    cmp-long v1, v4, v6

    .line 506
    .line 507
    if-eqz v1, :cond_f

    .line 508
    .line 509
    cmp-long v1, v4, v2

    .line 510
    .line 511
    if-ltz v1, :cond_e

    .line 512
    .line 513
    goto :goto_8

    .line 514
    :cond_e
    throw p2

    .line 515
    :cond_f
    :goto_8
    iget-wide v4, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failLogMaxTime:J

    .line 516
    .line 517
    cmp-long p2, v2, v4

    .line 518
    .line 519
    const-string v1, "soft failing for issuer: \""

    .line 520
    .line 521
    if-gez p2, :cond_10

    .line 522
    .line 523
    sget-object p2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 524
    .line 525
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 526
    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {p2, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    goto :goto_a

    .line 546
    :cond_10
    sget-object p2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    .line 547
    .line 548
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 549
    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    goto :goto_9

    .line 556
    :cond_11
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    .line 557
    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 559
    .line 560
    .line 561
    move-result-wide v1

    .line 562
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    :goto_a
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    .line 570
    .line 571
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 572
    .line 573
    .line 574
    move-result-object p2

    .line 575
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    .line 576
    .line 577
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    .line 582
    .line 583
    return-void

    .line 584
    :cond_12
    throw p2

    .line 585
    :catch_4
    move-exception p1

    .line 586
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    .line 587
    .line 588
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    .line 598
    .line 599
    throw p2

    .line 600
    :cond_13
    throw p2

    .line 601
    :goto_b
    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    .line 602
    .line 603
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    .line 613
    .line 614
    throw p2

    .line 615
    :goto_c
    new-instance p2, Ljava/lang/RuntimeException;

    .line 616
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    const-string v1, "error setting up baseParams: "

    .line 620
    .line 621
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    throw p2
.end method

.method public checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 21

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    new-instance v13, Lorg/bouncycastle/pkix/jcajce/CertStatus;

    invoke-direct {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;-><init>()V

    new-instance v14, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    invoke-direct {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>()V

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v9, 0xb

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v8, :cond_2

    new-instance v1, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v7, p1

    invoke-direct {v1, v7}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v6

    move-object/from16 v5, p2

    invoke-static {v6, v5}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v16

    move-object v0, v10

    move v4, v11

    move/from16 v17, v4

    :goto_1
    array-length v1, v8

    if-ge v4, v1, :cond_1

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v9, :cond_1

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_3
    aget-object v1, v8, v4
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v6

    move-object/from16 v3, p2

    move/from16 v18, v4

    move-object/from16 v4, v16

    move-object/from16 v5, p4

    move-object/from16 v19, v6

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v20, v8

    move-object v8, v13

    move v15, v9

    move-object v9, v14

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    :try_start_4
    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/pkix/jcajce/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v17, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    move v15, v9

    :goto_2
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v7, p1

    move-object/from16 v5, p2

    move v9, v15

    move-object/from16 v6, v19

    move-object/from16 v8, v20

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    move v15, v9

    goto :goto_5

    :goto_3
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "no additional CRL locations could be decoded from CRL distribution point extension"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    move v15, v9

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v0

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "cannot read distribution points"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    const/4 v0, 0x0

    const/16 v17, 0x0

    :goto_5
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v15, :cond_3

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_5
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v4, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    const/4 v6, 0x4

    invoke-direct {v5, v6, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    const/4 v1, 0x0

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1, v1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/ReasonFlags;Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/pkix/jcajce/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_4

    const/16 v17, 0x1

    goto :goto_6

    :catch_4
    move-exception v0

    :cond_3
    :goto_6
    if-nez v17, :cond_5

    instance-of v1, v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "no valid CRL found"

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v15, :cond_8

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v15, :cond_6

    invoke-virtual {v13, v1}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->setCertStatus(I)V

    :cond_6
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v1, "certificate status could not be determined"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "certificate [issuer=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\",serialNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",subject=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\"] revoked after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", reason: "

    .line 1
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlReasons:[Ljava/lang/String;

    .line 2
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "cannot read CRL distribution point extension"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->currentDate:Ljava/util/Date;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "forward processing not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
