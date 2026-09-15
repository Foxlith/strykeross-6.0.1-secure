.class final Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/jcajce/JcaJceUtils;->getCertPathTrustManager(Ljava/util/Set;[Ljava/security/cert/CRL;)[Ljavax/net/ssl/X509TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$anchors:Ljava/util/Set;

.field final synthetic val$revocationLists:[Ljava/security/cert/CRL;

.field final synthetic val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/util/Set;[Ljava/security/cert/CRL;[Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$anchors:Ljava/util/Set;

    iput-object p2, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$revocationLists:[Ljava/security/cert/CRL;

    iput-object p3, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p2, "BC"

    .line 2
    .line 3
    const-string v0, "Collection"

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Ljava/security/cert/CollectionCertStoreParameters;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p2}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "PKIX"

    .line 19
    .line 20
    invoke-static {v2, p2}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance v2, Ljava/security/cert/X509CertSelector;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aget-object v4, p1, v3

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Ljava/security/cert/PKIXBuilderParameters;

    .line 36
    .line 37
    iget-object v5, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$anchors:Ljava/util/Set;

    .line 38
    .line 39
    invoke-direct {v4, v5, v2}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v1}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$revocationLists:[Ljava/security/cert/CRL;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-virtual {v4, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Ljava/security/cert/CollectionCertStoreParameters;

    .line 54
    .line 55
    iget-object v2, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$revocationLists:[Ljava/security/cert/CRL;

    .line 56
    .line 57
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, v2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v4, v0}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :catch_1
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :cond_0
    invoke-virtual {v4, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {p2, v4}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    check-cast p2, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 84
    .line 85
    aget-object p1, p1, v3

    .line 86
    .line 87
    invoke-static {p1}, Lorg/bouncycastle/est/jcajce/JcaJceUtils;->validateServerCertUsage(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :goto_1
    new-instance p2, Ljava/security/cert/CertificateException;

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v1, "unable to process certificates: "

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->t(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw p2

    .line 108
    :goto_2
    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/est/jcajce/JcaJceUtils$2;->val$x509CertificateTrustAnchors:[Ljava/security/cert/X509Certificate;

    array-length v1, v0

    new-array v2, v1, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
