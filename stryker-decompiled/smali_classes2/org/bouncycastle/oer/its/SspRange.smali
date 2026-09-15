.class public Lorg/bouncycastle/oer/its/SspRange;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/SspRange$Builder;
    }
.end annotation


# static fields
.field private static final all:I = 0x1

.field private static final bitmapSspRange:I = 0x3

.field private static final extension:I = 0x2

.field private static final opaque:I


# instance fields
.field private final choice:I

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/oer/its/BitmapSspRange;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value is not BitmapSspRange"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v0, p2, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value is not ASN1OctetString"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of v0, p2, Lorg/bouncycastle/asn1/ASN1Null;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value is not ASN1Null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of v0, p2, Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    if-eqz v0, :cond_7

    :goto_0
    iput p1, p0, Lorg/bouncycastle/oer/its/SspRange;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/SspRange;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value is not SequenceOfOctetString"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static builder()Lorg/bouncycastle/oer/its/SspRange$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/SspRange$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/SspRange$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SspRange;
    .locals 3

    .line 1
    instance-of v0, p0, Lorg/bouncycastle/oer/its/SspRange;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/bouncycastle/oer/its/SspRange;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    new-instance v0, Lorg/bouncycastle/oer/its/SspRange;

    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lorg/bouncycastle/oer/its/BitmapSspRange;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/BitmapSspRange;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/SspRange;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v1, "unknown choice "

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    :try_start_0
    new-instance v0, Lorg/bouncycastle/oer/its/SspRange;

    .line 54
    .line 55
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    .line 56
    .line 57
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/SspRange;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_3
    new-instance p0, Lorg/bouncycastle/oer/its/SspRange;

    .line 84
    .line 85
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    .line 86
    .line 87
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/oer/its/SspRange;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 88
    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_4
    new-instance v0, Lorg/bouncycastle/oer/its/SspRange;

    .line 92
    .line 93
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Lorg/bouncycastle/oer/its/SequenceOfOctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfOctetString;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/its/SspRange;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/SspRange;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/SspRange;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
