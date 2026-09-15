.class public Lorg/bouncycastle/asn1/x500/DirectoryString;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;
.implements Lorg/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:Lorg/bouncycastle/asn1/ASN1String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1BMPString;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1PrintableString;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1T61String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1UniversalString;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 2

    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1T61String;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1T61String;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1T61String;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1PrintableString;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1PrintableString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1PrintableString;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1UniversalString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1UniversalString;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1UTF8String;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v0, :cond_5

    new-instance v0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;-><init>(Lorg/bouncycastle/asn1/ASN1BMPString;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance: "

    .line 1
    invoke-static {p0, v1}, Ll1/e;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 0

    .line 6
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/DirectoryString;->string:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
