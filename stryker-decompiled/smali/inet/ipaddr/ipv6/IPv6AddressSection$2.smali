.class synthetic Linet/ipaddr/ipv6/IPv6AddressSection$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$inet$ipaddr$ipv6$IPv6AddressSection$CompressOptions$MixedCompressionOptions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->values()[Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$2;->$SwitchMap$inet$ipaddr$ipv6$IPv6AddressSection$CompressOptions$MixedCompressionOptions:[I

    :try_start_0
    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->YES:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$2;->$SwitchMap$inet$ipaddr$ipv6$IPv6AddressSection$CompressOptions$MixedCompressionOptions:[I

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->NO:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$2;->$SwitchMap$inet$ipaddr$ipv6$IPv6AddressSection$CompressOptions$MixedCompressionOptions:[I

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->NO_HOST:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$2;->$SwitchMap$inet$ipaddr$ipv6$IPv6AddressSection$CompressOptions$MixedCompressionOptions:[I

    sget-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;->COVERED_BY_HOST:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$MixedCompressionOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
