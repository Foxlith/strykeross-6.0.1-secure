.class public Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;
.super Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedFullRangeMasker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final extendedUpperMask:J

.field private final upperMask:J


# direct methods
.method public constructor <init>(IZ)V
    .locals 4

    invoke-direct {p0, p2}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;-><init>(Z)V

    const-wide/16 v0, -0x1

    const/16 p2, 0x40

    if-lt p1, p2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;->extendedUpperMask:J

    sub-int/2addr p1, p2

    ushr-long p1, v0, p1

    iput-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;->upperMask:J

    goto :goto_0

    :cond_0
    ushr-long p1, v0, p1

    iput-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;->extendedUpperMask:J

    iput-wide v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;->upperMask:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getExtendedLowerMasked(JJ)J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;->extendedUpperMask:J

    not-long v0, v0

    and-long/2addr p1, v0

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;->getExtendedLowerMasked(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getExtendedUpperMasked(JJ)J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;->extendedUpperMask:J

    or-long/2addr p1, v0

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMaskedLower(JJ)J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;->upperMask:J

    not-long v0, v0

    and-long/2addr p1, v0

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMaskedUpper(JJ)J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedFullRangeMasker;->upperMask:J

    or-long/2addr p1, v0

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide p1

    return-wide p1
.end method
