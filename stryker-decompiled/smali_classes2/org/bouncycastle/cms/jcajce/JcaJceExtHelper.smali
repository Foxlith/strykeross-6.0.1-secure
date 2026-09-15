.class interface abstract Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# virtual methods
.method public abstract createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
.end method

.method public abstract createAsymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;[B[B)Lorg/bouncycastle/operator/jcajce/JceKTSKeyUnwrapper;
.end method

.method public abstract createSymmetricUnwrapper(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/SecretKey;)Lorg/bouncycastle/operator/SymmetricKeyUnwrapper;
.end method
