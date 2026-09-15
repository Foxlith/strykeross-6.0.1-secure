.class public Lorg/bouncycastle/cert/path/CertPathValidationContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Memoable;


# instance fields
.field private criticalExtensions:Ljava/util/Set;

.field private endEntity:Z

.field private handledExtensions:Ljava/util/Set;

.field private index:I


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    iput-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->criticalExtensions:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnhandledCriticalExtensionOIDs()Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->criticalExtensions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->handledExtensions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public isEndEntity()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->endEntity:Z

    return v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    return-void
.end method

.method public setIsEndEntity(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationContext;->endEntity:Z

    return-void
.end method
