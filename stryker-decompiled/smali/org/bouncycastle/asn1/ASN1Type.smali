.class abstract Lorg/bouncycastle/asn1/ASN1Type;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final javaClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Type;->javaClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getJavaClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Type;->javaClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
