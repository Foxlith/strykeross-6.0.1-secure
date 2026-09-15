.class public Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;
.super Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv6StringBuilderOptions"
.end annotation


# static fields
.field public static final ALL_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

.field public static final COMPRESSION_ALL_FULL:I = 0xf00

.field public static final COMPRESSION_ALL_PARTIAL:I = 0x1f00

.field public static final COMPRESSION_CANONICAL:I = 0x100

.field public static final COMPRESSION_LARGEST:I = 0x700

.field public static final COMPRESSION_SINGLE:I = 0x300

.field public static final DATABASE_SEARCH_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

.field public static final IPV4_CONVERSIONS:I = 0x10000

.field public static final MIXED:I = 0x2

.field public static final STANDARD_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

.field public static final UPPERCASE:I = 0x4


# instance fields
.field public final converter:Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;

.field public final ipv4ConverterOptions:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

.field public final mixedOptions:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>(I)V

    const/16 v2, 0xf15

    invoke-direct {v0, v2, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)V

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->STANDARD_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    new-instance v1, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    const/16 v2, 0x31

    invoke-direct {v1, v2}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>(I)V

    new-instance v2, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    const/16 v3, 0x33f

    invoke-direct {v2, v3}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>(I)V

    const v3, 0x10f37

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4, v2}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)V

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->ALL_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    const/16 v1, 0x701

    invoke-direct {v0, v1}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;-><init>(I)V

    sput-object v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->DATABASE_SEARCH_OPTS:Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)V

    return-void
.end method

.method public constructor <init>(ILinet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;-><init>(ILinet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)V

    return-void
.end method

.method public constructor <init>(ILinet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;)V
    .locals 3

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    or-int/2addr p1, v2

    const/high16 v2, 0x10000

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    or-int/2addr p1, v0

    invoke-direct {p0, p1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;-><init>(I)V

    invoke-virtual {p0, v1}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    new-instance p2, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-direct {p2}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>()V

    :cond_2
    iput-object p2, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->mixedOptions:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-virtual {p0, v2}, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->includes(I)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p4, :cond_3

    new-instance p4, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    invoke-direct {p4}, Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;-><init>()V

    :cond_3
    if-nez p3, :cond_4

    sget-object p3, Linet/ipaddr/IPAddress;->DEFAULT_ADDRESS_CONVERTER:Linet/ipaddr/IPAddressConverter;

    :cond_4
    iput-object p4, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->ipv4ConverterOptions:Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringBuilderOptions;

    iput-object p3, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;->converter:Linet/ipaddr/ipv4/IPv4Address$IPv4AddressConverter;

    return-void
.end method

.method public static from(Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;)Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;
    .locals 2

    instance-of v0, p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    if-eqz v0, :cond_0

    check-cast p0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    return-object p0

    :cond_0
    new-instance v0, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;

    iget p0, p0, Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;->options:I

    const v1, -0x11f07

    and-int/2addr p0, v1

    invoke-direct {v0, p0}, Linet/ipaddr/ipv6/IPv6AddressSection$IPv6StringBuilderOptions;-><init>(I)V

    return-object v0
.end method
