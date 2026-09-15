.class public Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueBitwiseOrer;
.super Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecificValueBitwiseOrer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final lower:J

.field private final upper:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;-><init>(Z)V

    iput-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueBitwiseOrer;->lower:J

    iput-wide p3, p0, Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueBitwiseOrer;->upper:J

    return-void
.end method


# virtual methods
.method public getOredLower(JJ)J
    .locals 0

    iget-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueBitwiseOrer;->lower:J

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;->getOredLower(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getOredUpper(JJ)J
    .locals 0

    iget-wide p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$SpecificValueBitwiseOrer;->upper:J

    invoke-super {p0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$BitwiseOrer;->getOredUpper(JJ)J

    move-result-wide p1

    return-wide p1
.end method
