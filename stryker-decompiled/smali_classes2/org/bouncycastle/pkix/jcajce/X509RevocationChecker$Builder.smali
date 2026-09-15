.class public Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private canSoftFail:Z

.field private crlCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field private failHardMaxTime:J

.field private failLogMaxTime:J

.field private isCheckEEOnly:Z

.field private provider:Ljava/security/Provider;

.field private providerName:Ljava/lang/String;

.field private trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private validityModel:I


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    new-instance v3, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/TrustAnchor;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$100(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->isCheckEEOnly:Z

    return p0
.end method

.method public static synthetic access$400(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    return p0
.end method

.method public static synthetic access$500(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->trustAnchors:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->canSoftFail:Z

    return p0
.end method

.method public static synthetic access$700(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failLogMaxTime:J

    return-wide v0
.end method

.method public static synthetic access$800(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failHardMaxTime:J

    return-wide v0
.end method

.method public static synthetic access$900(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->provider:Ljava/security/Provider;

    return-object p0
.end method


# virtual methods
.method public addCrls(Ljava/security/cert/CertStore;)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crlCertStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCrls(Lorg/bouncycastle/util/Store;)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;)",
            "Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->crls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;)V

    return-object v0
.end method

.method public setCheckEndEntityOnly(Z)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->isCheckEEOnly:Z

    return-object p0
.end method

.method public setSoftFail(ZJ)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->canSoftFail:Z

    iput-wide p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failLogMaxTime:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failHardMaxTime:J

    return-object p0
.end method

.method public setSoftFailHardLimit(ZJ)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 4

    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->canSoftFail:Z

    const-wide/16 v0, 0x3

    mul-long/2addr v0, p2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failLogMaxTime:J

    iput-wide p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->failHardMaxTime:J

    return-object p0
.end method

.method public setValidityModel(I)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->validityModel:I

    return-object p0
.end method

.method public usingProvider(Ljava/lang/String;)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method public usingProvider(Ljava/security/Provider;)Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->provider:Ljava/security/Provider;

    return-object p0
.end method
