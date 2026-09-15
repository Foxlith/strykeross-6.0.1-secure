.class public Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;
.super Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrappedMasker"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final masker:Linet/ipaddr/format/validate/ParsedIPAddress$Masker;


# direct methods
.method public constructor <init>(Linet/ipaddr/format/validate/ParsedIPAddress$Masker;)V
    .locals 1

    invoke-virtual {p1}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->isSequential()Z

    move-result v0

    invoke-direct {p0, v0}, Linet/ipaddr/format/validate/ParsedIPAddress$ExtendedMasker;-><init>(Z)V

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;->masker:Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    return-void
.end method


# virtual methods
.method public getMaskedLower(JJ)J
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;->masker:Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    invoke-virtual {v0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedLower(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMaskedUpper(JJ)J
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$WrappedMasker;->masker:Linet/ipaddr/format/validate/ParsedIPAddress$Masker;

    invoke-virtual {v0, p1, p2, p3, p4}, Linet/ipaddr/format/validate/ParsedIPAddress$Masker;->getMaskedUpper(JJ)J

    move-result-wide p1

    return-wide p1
.end method
