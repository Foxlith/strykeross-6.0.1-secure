.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 29

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Mappings;->PREFIX:Ljava/lang/String;

    const-string v3, "$AlgParams"

    const-string v4, "AlgorithmParameters.DSTU7624"

    .line 1
    invoke-static {v1, v2, v3, v0, v4}, Ll1/e;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "AlgorithmParameters"

    .line 3
    invoke-static {v2, v3, v0, v4, v1}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 4
    sget-object v5, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 5
    invoke-static {v2, v3, v0, v4, v5}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 6
    sget-object v6, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v6, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$AlgParamGen128"

    const-string v7, "AlgorithmParameterGenerator.DSTU7624"

    .line 7
    invoke-static {v3, v2, v4, v0, v7}, Ll1/e;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8
    invoke-static {v3, v2, v4}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlgorithmParameterGenerator"

    .line 9
    invoke-static {v0, v4, v1, v3, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$AlgParamGen256"

    .line 10
    invoke-static {v3, v7, v0, v4, v5}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$AlgParamGen512"

    .line 11
    invoke-static {v3, v2, v7}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v0, v4, v6, v3, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ECB_128"

    const-string v7, "Cipher.DSTU7624"

    .line 13
    invoke-static {v3, v4, v0, v7, v2}, Ll1/e;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "Cipher.DSTU7624-128"

    invoke-static {v3, v4, v0, v7, v2}, Ll1/e;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ECB_256"

    const-string v7, "Cipher.DSTU7624-256"

    invoke-static {v3, v4, v0, v7, v2}, Ll1/e;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ECB_512"

    const-string v7, "Cipher.DSTU7624-512"

    .line 14
    invoke-static {v3, v4, v0, v7}, Ll1/e;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    .line 15
    sget-object v3, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "$ECB128"

    const-string v7, "Cipher"

    .line 16
    invoke-static {v2, v4, v0, v7, v3}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 17
    sget-object v4, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "$ECB256"

    .line 18
    invoke-static {v2, v8, v0, v7, v4}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 19
    sget-object v8, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "$ECB512"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v7, v8, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$CBC128"

    .line 20
    invoke-static {v9, v2, v10}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-static {v0, v7, v1, v9, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$CBC256"

    .line 22
    invoke-static {v9, v10, v0, v7, v5}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$CBC512"

    .line 23
    invoke-static {v9, v2, v10}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-interface {v0, v7, v6, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v9, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "$OFB128"

    .line 25
    invoke-static {v2, v10, v0, v7, v9}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 26
    sget-object v10, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "$OFB256"

    .line 27
    invoke-static {v2, v11, v0, v7, v10}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 28
    sget-object v11, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v12, "$OFB512"

    .line 29
    invoke-static {v2, v12, v0, v7, v11}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 30
    sget-object v12, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v13, "$CFB128"

    .line 31
    invoke-static {v2, v13, v0, v7, v12}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 32
    sget-object v13, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v14, "$CFB256"

    .line 33
    invoke-static {v2, v14, v0, v7, v13}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 34
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "$CFB512"

    .line 35
    invoke-static {v2, v15, v0, v7, v14}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 36
    sget-object v15, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v14

    const-string v14, "$CTR128"

    .line 37
    invoke-static {v2, v14, v0, v7, v15}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 38
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v15

    const-string v15, "$CTR256"

    .line 39
    invoke-static {v2, v15, v0, v7, v14}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 40
    sget-object v15, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v14

    const-string v14, "$CTR512"

    .line 41
    invoke-static {v2, v14, v0, v7, v15}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 42
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v19, v15

    const-string v15, "$CCM128"

    .line 43
    invoke-static {v2, v15, v0, v7, v14}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 44
    sget-object v15, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v20, v14

    const-string v14, "$CCM256"

    .line 45
    invoke-static {v2, v14, v0, v7, v15}, Ll1/e;->v(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 46
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v13

    const-string v13, "$CCM512"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v7, v14, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "$Wrap"

    const-string v15, "Cipher.DSTU7624KW"

    .line 47
    invoke-static {v7, v2, v13, v0, v15}, Ll1/e;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Cipher.DSTU7624WRAP"

    const-string v13, "DSTU7624KW"

    const-string v15, "$Wrap128"

    .line 48
    invoke-static {v0, v7, v13, v2, v15}, Ll1/e;->n(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "Cipher.DSTU7624-128KW"

    const-string v15, "Alg.Alias.Cipher."

    .line 49
    invoke-static {v0, v13, v7, v15}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 50
    sget-object v13, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v23, v14

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-128KW"

    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Cipher.DSTU7624-128WRAP"

    move-object/from16 v24, v12

    const-string v12, "$Wrap256"

    .line 51
    invoke-static {v0, v7, v14, v2, v12}, Ll1/e;->n(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "Cipher.DSTU7624-256KW"

    .line 52
    invoke-static {v0, v12, v7, v15}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 53
    sget-object v12, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-256KW"

    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Cipher.DSTU7624-256WRAP"

    move-object/from16 v25, v11

    const-string v11, "$Wrap512"

    .line 54
    invoke-static {v0, v7, v14, v2, v11}, Ll1/e;->n(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "Cipher.DSTU7624-512KW"

    .line 55
    invoke-static {v0, v11, v7, v15}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 56
    sget-object v11, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-512KW"

    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Alg.Alias.Cipher.DSTU7624-512WRAP"

    const-string v15, "$GMAC"

    .line 57
    invoke-static {v0, v7, v14, v2, v15}, Ll1/e;->n(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Mac.DSTU7624GMAC"

    const-string v15, "$GMAC128"

    invoke-static {v0, v14, v7, v2, v15}, Ll1/e;->n(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Mac.DSTU7624-128GMAC"

    const-string v15, "Alg.Alias.Mac."

    .line 58
    invoke-static {v0, v14, v7, v15}, Ll1/e;->s(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 59
    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v26, v10

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "DSTU7624-128GMAC"

    invoke-interface {v0, v7, v10}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "$GMAC256"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Mac.DSTU7624-256GMAC"

    invoke-interface {v0, v10, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v27, v14

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-256GMAC"

    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "$GMAC512"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "Mac.DSTU7624-512GMAC"

    invoke-interface {v0, v14, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v15, "DSTU7624-512GMAC"

    invoke-interface {v0, v7, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "$KeyGen"

    move-object/from16 v28, v14

    const-string v14, "KeyGenerator.DSTU7624"

    .line 60
    invoke-static {v7, v15, v0, v14, v2}, Ll1/e;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "$KeyGen128"

    const-string v15, "KeyGenerator"

    .line 61
    invoke-static {v7, v14, v0, v15, v13}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "$KeyGen256"

    .line 62
    invoke-static {v7, v2, v13}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-static {v0, v15, v12, v7, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "$KeyGen512"

    .line 64
    invoke-static {v7, v12, v0, v15, v11}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 65
    invoke-static {v7, v2, v14}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    invoke-static {v0, v15, v3, v7, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 67
    invoke-static {v3, v13, v0, v15, v4}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    invoke-static {v3, v2, v12}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v0, v15, v8, v3, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    invoke-static {v3, v14, v0, v15, v1}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-static {v1, v2, v13}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v15, v5, v1, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-static {v1, v12, v0, v15, v6}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-static {v1, v2, v14}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0, v15, v9, v1, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v26

    .line 76
    invoke-static {v1, v13, v0, v15, v3}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    invoke-static {v1, v2, v12}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v25

    .line 78
    invoke-static {v0, v15, v3, v1, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v24

    .line 79
    invoke-static {v1, v14, v0, v15, v3}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-static {v1, v2, v13}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v22

    .line 81
    invoke-static {v0, v15, v3, v1, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v16

    .line 82
    invoke-static {v1, v12, v0, v15, v3}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    invoke-static {v1, v2, v14}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v17

    .line 84
    invoke-static {v0, v15, v3, v1, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v18

    .line 85
    invoke-static {v1, v13, v0, v15, v3}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-static {v1, v2, v12}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v19

    .line 87
    invoke-static {v0, v15, v3, v1, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v20

    .line 88
    invoke-static {v1, v14, v0, v15, v3}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-static {v1, v2, v13}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v21

    .line 90
    invoke-static {v0, v15, v3, v1, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v23

    .line 91
    invoke-static {v1, v12, v0, v15, v3}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    invoke-static {v1, v2, v14}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v27

    .line 93
    invoke-static {v0, v15, v3, v1, v2}, Ll1/e;->t(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    invoke-static {v1, v13, v0, v15, v10}, Ll1/e;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    invoke-static {v1, v2, v12}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v28

    .line 96
    invoke-interface {v0, v15, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-void
.end method
