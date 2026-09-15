.class public Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private givenName:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private pseudonym:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private surname:Lorg/bouncycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->surname:Lorg/bouncycastle/asn1/x500/DirectoryString;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->givenName:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad object encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1, v1}, Ll1/e;->k(Lorg/bouncycastle/asn1/ASN1Sequence;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->pseudonym:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->surname:Lorg/bouncycastle/asn1/x500/DirectoryString;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->givenName:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1String;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 13
    .line 14
    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 27
    .line 28
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v1, "illegal object in getInstance: "

    .line 37
    .line 38
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_3
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 47
    .line 48
    return-object p0
.end method


# virtual methods
.method public getGivenName()[Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->givenName:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x500/DirectoryString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->givenName:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPseudonym()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->pseudonym:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getSurname()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->surname:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->pseudonym:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->surname:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/sigi/NameOrPseudonym;->givenName:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
