.class public Linet/ipaddr/format/standard/AddressDivision$MaskResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/standard/AddressDivision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaskResult"
.end annotation


# instance fields
.field private final maskValue:J

.field private final masker:Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

.field private final upperValue:J

.field private final value:J


# direct methods
.method public constructor <init>(JJJLinet/ipaddr/format/validate/ParsedIPAddress$Masker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->value:J

    iput-wide p3, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->upperValue:J

    iput-wide p5, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->maskValue:J

    iput-object p7, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->masker:Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    return-void
.end method


# virtual methods
.method public getMaskedLower()J
    .locals 5

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->masker:Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    iget-wide v1, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->value:J

    iget-wide v3, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->maskValue:J

    invoke-virtual {v0, v1, v2, v3, v4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaskedUpper()J
    .locals 5

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->masker:Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    iget-wide v1, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->upperValue:J

    iget-wide v3, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->maskValue:J

    invoke-virtual {v0, v1, v2, v3, v4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSequential()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivision$MaskResult;->masker:Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v0

    return v0
.end method
