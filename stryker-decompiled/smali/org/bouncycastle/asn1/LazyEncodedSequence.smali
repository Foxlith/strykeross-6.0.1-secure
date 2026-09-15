.class Lorg/bouncycastle/asn1/LazyEncodedSequence;
.super Lorg/bouncycastle/asn1/ASN1Sequence;
.source "SourceFile"


# instance fields
.field private encoded:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'encoded\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized force()V
    .locals 4

    const-string v0, "malformed ASN.1: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    iget-object v2, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ASN1Sequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getContents()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->getContents()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncodingDL(ZI[B)V

    return-void

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method public encodedLength(Z)I
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->getContents()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result p1

    return p1
.end method

.method public getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->getContents()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    return-object v1

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    return v0
.end method

.method public toASN1BitString()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1BitString()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0
.end method

.method public toASN1External()Lorg/bouncycastle/asn1/ASN1External;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1External()Lorg/bouncycastle/asn1/ASN1External;

    move-result-object v0

    return-object v0
.end method

.method public toASN1OctetString()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1OctetString()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Set()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1Set()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toArrayInternal()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toArrayInternal()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
