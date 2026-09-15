.class public Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/SubjectPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field choice:I

.field value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public all()Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->choice:I

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public choice(I)Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->choice:I

    return-object p0
.end method

.method public createSubjectPermissions()Lorg/bouncycastle/oer/its/SubjectPermissions;
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/its/SubjectPermissions;

    iget v1, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/SubjectPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public explicit(Lorg/bouncycastle/oer/its/SequenceOfPsidSspRange;)Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->choice:I

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public extension(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->choice:I

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public value(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method
