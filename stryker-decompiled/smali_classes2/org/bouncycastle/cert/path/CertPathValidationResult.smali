.class public Lorg/bouncycastle/cert/path/CertPathValidationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

.field private causes:[Lorg/bouncycastle/cert/path/CertPathValidationException;

.field private final certIndex:I

.field private certIndexes:[I

.field private final isValid:Z

.field private final ruleIndex:I

.field private ruleIndexes:[I

.field private final unhandledCriticalExtensionOIDs:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndex:I

    iput p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndex:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;IILorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    iput p2, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndex:I

    iput p3, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndex:I

    iput-object p4, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;[I[I[Lorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    aget-object v0, p4, p1

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    aget v0, p2, p1

    iput v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndex:I

    aget p1, p3, p1

    iput p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndex:I

    iput-object p4, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->causes:[Lorg/bouncycastle/cert/path/CertPathValidationException;

    iput-object p2, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    iput-object p3, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndexes:[I

    return-void
.end method


# virtual methods
.method public getCause()Lorg/bouncycastle/cert/path/CertPathValidationException;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "Unhandled Critical Extensions"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCauses()[Lorg/bouncycastle/cert/path/CertPathValidationException;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->causes:[Lorg/bouncycastle/cert/path/CertPathValidationException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    new-array v2, v2, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v2, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v3, "Unhandled Critical Extensions"

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFailingCertIndex()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndex:I

    return v0
.end method

.method public getFailingCertIndexes()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFailingRuleIndex()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndex:I

    return v0
.end method

.method public getFailingRuleIndexes()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->ruleIndexes:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getUnhandledCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    return-object v0
.end method

.method public isDetailed()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    return v0
.end method
