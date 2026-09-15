.class public Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;
    }
.end annotation


# instance fields
.field private helper:Lorg/bouncycastle/cert/jcajce/CertHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cert/jcajce/DefaultCertHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    new-instance v0, Lorg/bouncycastle/cert/jcajce/DefaultCertHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/DefaultCertHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    return-void
.end method


# virtual methods
.method public getCRL(Lorg/bouncycastle/cert/X509CRLHolder;)Ljava/security/cert/X509CRL;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    .line 2
    .line 3
    const-string v1, "X.509"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/bouncycastle/cert/jcajce/CertHelper;->getCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getEncoded()[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/security/cert/X509CRL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    return-object p1

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :catch_2
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :goto_0
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "cannot create factory: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, p0, v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;-><init>(Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :goto_1
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "cannot find required provider:"

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, p0, v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;-><init>(Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :goto_2
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;

    .line 80
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v2, "exception parsing certificate: "

    .line 84
    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->l(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, p0, v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;-><init>(Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/cert/jcajce/NamedCertHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/NamedCertHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/cert/jcajce/ProviderCertHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/ProviderCertHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->helper:Lorg/bouncycastle/cert/jcajce/CertHelper;

    return-object p0
.end method
