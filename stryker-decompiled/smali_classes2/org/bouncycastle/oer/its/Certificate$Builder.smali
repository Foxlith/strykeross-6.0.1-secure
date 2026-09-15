.class public Lorg/bouncycastle/oer/its/Certificate$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/Certificate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private certificateBase:Lorg/bouncycastle/oer/its/CertificateBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCertificate()Lorg/bouncycastle/oer/its/Certificate;
    .locals 2

    new-instance v0, Lorg/bouncycastle/oer/its/Certificate;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/Certificate$Builder;->certificateBase:Lorg/bouncycastle/oer/its/CertificateBase;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/Certificate;-><init>(Lorg/bouncycastle/oer/its/CertificateBase;)V

    return-object v0
.end method

.method public setCertificateBase(Lorg/bouncycastle/oer/its/CertificateBase;)Lorg/bouncycastle/oer/its/Certificate$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/Certificate$Builder;->certificateBase:Lorg/bouncycastle/oer/its/CertificateBase;

    return-object p0
.end method
