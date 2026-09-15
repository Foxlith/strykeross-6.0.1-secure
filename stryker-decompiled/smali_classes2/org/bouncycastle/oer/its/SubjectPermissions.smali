.class public Lorg/bouncycastle/oer/its/SubjectPermissions;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;
    }
.end annotation


# static fields
.field public static final all:I = 0x1

.field public static final explicit:I = 0x0

.field public static final extension:I = 0x3


# instance fields
.field private final choice:I

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/oer/its/SubjectPermissions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput p1, p0, Lorg/bouncycastle/oer/its/SubjectPermissions;->choice:I

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/SubjectPermissions$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SubjectPermissions;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/SubjectPermissions;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/SubjectPermissions;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/bouncycastle/oer/its/SubjectPermissions;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/SubjectPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p0, Lorg/bouncycastle/oer/its/SubjectPermissions;

    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/oer/its/SubjectPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_3
    new-instance v0, Lorg/bouncycastle/oer/its/SubjectPermissions;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/SequenceOfPsidSspRange;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfPsidSspRange;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/SubjectPermissions;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/SubjectPermissions;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SubjectPermissions;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
