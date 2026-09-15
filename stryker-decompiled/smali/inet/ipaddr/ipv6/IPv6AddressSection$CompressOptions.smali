.class public Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompressOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;,
        Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;
    }
.end annotation


# instance fields
.field public final compressMixedOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

.field public final compressSingle:Z

.field public final rangeSelection:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;


# direct methods
.method public constructor <init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;)V
    .locals 1

    .line 1
    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->YES:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    invoke-direct {p0, p1, p2, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;-><init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;)V

    return-void
.end method

.method public constructor <init>(ZLinet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;->compressSingle:Z

    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;->rangeSelection:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    if-nez p3, :cond_0

    sget-object p3, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->YES:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    :cond_0
    iput-object p3, p0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;->compressMixedOptions:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    return-void
.end method
