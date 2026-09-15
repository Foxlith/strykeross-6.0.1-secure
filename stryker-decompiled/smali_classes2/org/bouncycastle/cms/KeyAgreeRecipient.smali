.class public interface abstract Lorg/bouncycastle/cms/KeyAgreeRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/Recipient;


# virtual methods
.method public abstract getPrivateKeyAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method

.method public abstract getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Lorg/bouncycastle/cms/RecipientOperator;
.end method
