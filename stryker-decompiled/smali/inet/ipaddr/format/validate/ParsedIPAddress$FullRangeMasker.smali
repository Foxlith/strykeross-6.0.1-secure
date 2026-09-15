.class public Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;
.super Linet/ipaddr/format/validate/ParsedIPAddress$Masker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullRangeMasker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final fullRangeBit:I

.field private final upperMask:J


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0, p2}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;-><init>(Z)V

    iput p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;->fullRangeBit:I

    const-wide/16 v0, -0x1

    ushr-long p1, v0, p1

    iput-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;->upperMask:J

    return-void
.end method


# virtual methods
.method public getMaskedLower(JJ)J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;->upperMask:J

    not-long v0, v0

    and-long/2addr p1, v0

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMaskedUpper(JJ)J
    .locals 2

    iget-wide v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$FullRangeMasker;->upperMask:J

    or-long/2addr p1, v0

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide p1

    return-wide p1
.end method
