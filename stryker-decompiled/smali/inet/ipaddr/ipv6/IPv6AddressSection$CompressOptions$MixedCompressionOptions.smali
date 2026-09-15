.class public final enum Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MixedCompressionOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

.field public static final enum COVERED_BY_HOST:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

.field public static final enum NO:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

.field public static final enum NO_HOST:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

.field public static final enum YES:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    const-string v1, "NO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->NO:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    const-string v2, "NO_HOST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->NO_HOST:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    new-instance v2, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    const-string v3, "COVERED_BY_HOST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;-><init>(Ljava/lang/String;I)V

    sput-object v2, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->COVERED_BY_HOST:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    const-string v4, "YES"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->YES:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    filled-new-array {v0, v1, v2, v3}, [Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->$VALUES:[Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;
    .locals 1

    const-class v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->$VALUES:[Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    invoke-virtual {v0}, [Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    return-object v0
.end method


# virtual methods
.method public compressMixed(Linet/ipaddr/ipv6/IPv6AddressSection;)Z
    .locals 5

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$2;->$SwitchMap$inet$ipaddr$ipv6$IPv6AddressSection$CompressOptions$MixedCompressionOptions:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Linet/ipaddr/ipv6/IPv6AddressSection;->addressSegmentIndex:I

    rsub-int/lit8 v0, v0, 0x6

    invoke-virtual {p1}, Linet/ipaddr/IPAddressSection;->getSegmentCount()I

    move-result v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v1, v4

    if-lez v1, :cond_2

    invoke-virtual {p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->getBitsPerSegment()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->getNetworkPrefixLength()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt v1, p1, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p1}, Linet/ipaddr/format/AddressDivisionGroupingBase;->isPrefixed()Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_4
    return v2
.end method
