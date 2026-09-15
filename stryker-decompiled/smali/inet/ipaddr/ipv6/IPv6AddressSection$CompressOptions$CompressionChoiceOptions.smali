.class public final enum Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressionChoiceOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

.field public static final enum HOST_PREFERRED:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

.field public static final enum MIXED_PREFERRED:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

.field public static final enum ZEROS:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

.field public static final enum ZEROS_OR_HOST:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    const-string v1, "HOST_PREFERRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->HOST_PREFERRED:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    const-string v2, "MIXED_PREFERRED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->MIXED_PREFERRED:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    new-instance v2, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    const-string v3, "ZEROS_OR_HOST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;-><init>(Ljava/lang/String;I)V

    sput-object v2, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->ZEROS_OR_HOST:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    new-instance v3, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    const-string v4, "ZEROS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->ZEROS:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    filled-new-array {v0, v1, v2, v3}, [Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->$VALUES:[Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

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

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;
    .locals 1

    const-class v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->$VALUES:[Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    invoke-virtual {v0}, [Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    return-object v0
.end method


# virtual methods
.method public compressHost()Z
    .locals 1

    sget-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;->ZEROS:Linet/ipaddr/ipv6/IPv6AddressSection$CompressOptions$CompressionChoiceOptions;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
