.class public Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;
.super Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4StringBuilderOptions"
.end annotation


# static fields
.field public static final ALL_JOINS:I = 0xe

.field public static final ALL_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

.field public static final DATABASE_SEARCH_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

.field public static final HEX:I = 0x200

.field public static final IPV6_CONVERSIONS:I = 0x10000

.field public static final JOIN_ALL:I = 0x2

.field public static final JOIN_ONE:I = 0x8

.field public static final JOIN_TWO:I = 0x4

.field public static final OCTAL:I = 0x100

.field public static final STANDARD_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;


# instance fields
.field public final converter:Linet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;

.field public final ipv6ConverterOptions:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>(I)V

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->STANDARD_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-direct {v0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>()V

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->DATABASE_SEARCH_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    new-instance v1, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/16 v2, 0xf37

    invoke-direct {v1, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;-><init>(I)V

    const v2, 0x1033f    # 9.3E-41f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>(ILinet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)V

    sput-object v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->ALL_OPTS:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->ipv6ConverterOptions:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    iput-object v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->converter:Linet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>(ILinet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)V

    return-void
.end method

.method public constructor <init>(ILinet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;)V
    .locals 2

    .line 3
    const/high16 v0, 0x10000

    if-nez p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    or-int/2addr p1, v1

    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;-><init>(I)V

    invoke-virtual {p0, v0}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    new-instance p3, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/16 p1, 0xf17

    invoke-direct {p3, p1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;-><init>(I)V

    :cond_1
    if-nez p2, :cond_2

    sget-object p2, Linet/ipaddr/IPAddress;->DEFAULT_ADDRESS_CONVERTER:Linet/ipaddr/IPAddressConverter;

    :cond_2
    iput-object p3, p0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->ipv6ConverterOptions:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    iput-object p2, p0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;->converter:Linet/ipaddr/ipv6/IPv6Address$IPv6AddressConverter;

    return-void
.end method

.method public static from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;
    .locals 2

    instance-of v0, p0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    if-eqz v0, :cond_0

    check-cast p0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    return-object p0

    :cond_0
    new-instance v0, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    iget p0, p0, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->options:I

    const v1, -0x1030f

    and-int/2addr p0, v1

    invoke-direct {v0, p0}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>(I)V

    return-object v0
.end method
