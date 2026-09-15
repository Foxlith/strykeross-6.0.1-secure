.class public Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;
.super Linet/ipaddr/format/validate/ParsedIPAddress$Masker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedMasker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public getExtendedLowerMasked(JJ)J
    .locals 0

    and-long/2addr p1, p3

    return-wide p1
.end method

.method public getExtendedUpperMasked(JJ)J
    .locals 0

    and-long/2addr p1, p3

    return-wide p1
.end method
