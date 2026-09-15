.class public Lorg/bouncycastle/oer/its/Certificate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/Certificate$Builder;
    }
.end annotation


# instance fields
.field private final certificateBase:Lorg/bouncycastle/oer/its/CertificateBase;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/CertificateBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Certificate;->certificateBase:Lorg/bouncycastle/oer/its/CertificateBase;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/Certificate$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/Certificate$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/Certificate$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/Certificate;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/oer/its/Certificate;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/Certificate;

    return-object p0

    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/its/Certificate$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/Certificate$Builder;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/oer/its/CertificateBase;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CertificateBase;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/Certificate$Builder;->setCertificateBase(Lorg/bouncycastle/oer/its/CertificateBase;)Lorg/bouncycastle/oer/its/Certificate$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/Certificate$Builder;->createCertificate()Lorg/bouncycastle/oer/its/Certificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCertificateBase()Lorg/bouncycastle/oer/its/CertificateBase;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/Certificate;->certificateBase:Lorg/bouncycastle/oer/its/CertificateBase;

    return-object v0
.end method
