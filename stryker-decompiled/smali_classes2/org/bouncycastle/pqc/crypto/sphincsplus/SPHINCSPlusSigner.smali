.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-result-object v0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->prf:[B

    invoke-virtual {v0, v3, v1, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF_msg([B[B[B)[B

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    invoke-virtual {v0, v1, v4, v3, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    move-result-object p1

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->digest:[B

    iget-wide v4, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_tree:J

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_leaf:I

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    invoke-virtual {v6, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v8, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->seed:[B

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-virtual {v2, v3, v8, v7, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-virtual {v2, v7, v3, v8, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->pkFromSig([Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->getSeed()[B

    move-result-object v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v8

    invoke-direct {v3, v0, v6, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V

    invoke-virtual {v3, v2, v4, v5, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->sign([BJI)[B

    move-result-object p1

    array-length v0, v7

    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v1, v2, v3

    :goto_0
    array-length v1, v7

    if-eq v3, v1, :cond_1

    add-int/lit8 v1, v3, 0x1

    aget-object v3, v7, v3

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->sk:[B

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->authPath:[[B

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v3

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    aput-object v3, v2, v1

    move v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object p1

    return-object p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_1

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    :goto_0
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    iget v8, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    iget v9, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    move-object v3, v11

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;-><init>(IIIIII[B)V

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->getR()[B

    move-result-object v3

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->getSIG_FORS()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    move-result-object v4

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->getSIG_HT()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v14

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getRoot()[B

    move-result-object v6

    move-object/from16 v7, p1

    invoke-virtual {v1, v3, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    move-result-object v3

    iget-object v5, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->digest:[B

    iget-wide v6, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_tree:J

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_leaf:I

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;

    invoke-direct {v8, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v9

    invoke-virtual {v8, v4, v5, v9, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->pkFromSig([Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v13

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    new-instance v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v12, v1, v4, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v15

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getRoot()[B

    move-result-object v19

    move-wide/from16 v16, v6

    move/from16 v18, v3

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->verify([B[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[BJI[B)Z

    move-result v1

    return v1
.end method
