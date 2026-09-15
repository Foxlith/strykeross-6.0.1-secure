.class public interface abstract Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Encodable;
.implements Lorg/bouncycastle/asn1/InMemoryRepresentable;


# virtual methods
.method public abstract getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;
.end method

.method public abstract getTagClass()I
.end method

.method public abstract getTagNo()I
.end method

.method public abstract hasContextTag(I)Z
.end method

.method public abstract hasTag(II)Z
.end method

.method public abstract parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
.end method

.method public abstract parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;
.end method

.method public abstract parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
.end method

.method public abstract parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
.end method
