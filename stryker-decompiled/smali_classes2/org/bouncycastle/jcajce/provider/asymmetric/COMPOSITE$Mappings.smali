.class public Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 4

    .line 1
    const-string v0, "KeyFactory.COMPOSITE"

    .line 2
    .line 3
    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric.COMPOSITE$KeyFactory"

    .line 4
    .line 5
    const-string v2, "KeyFactory."

    .line 6
    .line 7
    invoke-static {p1, v0, v1, v2}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v2, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_alg_composite:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    .line 13
    const-string v3, "KeyFactory.OID."

    .line 14
    .line 15
    invoke-static {v0, v2, p1, v1, v3}, Ll1/e;->r(Ljava/lang/StringBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$CompositeKeyInfoConverter;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE$CompositeKeyInfoConverter;-><init>(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->access$002(Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/COMPOSITE;->access$000()Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p1, v2, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
