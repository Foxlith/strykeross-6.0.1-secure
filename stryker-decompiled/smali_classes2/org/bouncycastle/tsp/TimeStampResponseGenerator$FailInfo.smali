.class Lorg/bouncycastle/tsp/TimeStampResponseGenerator$FailInfo;
.super Lorg/bouncycastle/asn1/DERBitString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/tsp/TimeStampResponseGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FailInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/tsp/TimeStampResponseGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/tsp/TimeStampResponseGenerator;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampResponseGenerator$FailInfo;->this$0:Lorg/bouncycastle/tsp/TimeStampResponseGenerator;

    invoke-static {p2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes(I)[B

    move-result-object p1

    invoke-static {p2}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method
