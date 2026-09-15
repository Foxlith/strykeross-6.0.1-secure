.class public Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;
.super Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedSpecificValueMasker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final extendedLower:J

.field private final extendedUpper:J

.field private final lower:J

.field private final upper:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;-><init>(Z)V

    iput-wide p3, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;->lower:J

    iput-wide p7, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;->upper:J

    iput-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;->extendedLower:J

    iput-wide p5, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;->extendedUpper:J

    return-void
.end method


# virtual methods
.method public getExtendedLowerMasked(JJ)J
    .locals 0

    iget-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;->extendedLower:J

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;->getExtendedLowerMasked(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getExtendedUpperMasked(JJ)J
    .locals 0

    iget-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;->extendedUpper:J

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;->getExtendedUpperMasked(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMaskedLower(JJ)J
    .locals 0

    iget-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;->lower:J

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMaskedUpper(JJ)J
    .locals 0

    iget-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedSpecificValueMasker;->upper:J

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide p1

    return-wide p1
.end method
