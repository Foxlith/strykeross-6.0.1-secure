.class public final enum Linet/ipaddr/AddressNetwork$PrefixConfiguration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/AddressNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrefixConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/AddressNetwork$PrefixConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/AddressNetwork$PrefixConfiguration;

.field public static final enum ALL_PREFIXED_ADDRESSES_ARE_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

.field public static final enum EXPLICIT_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

.field public static final enum PREFIXED_ZERO_HOSTS_ARE_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    const-string v1, "ALL_PREFIXED_ADDRESSES_ARE_SUBNETS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->ALL_PREFIXED_ADDRESSES_ARE_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    new-instance v1, Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    const-string v2, "PREFIXED_ZERO_HOSTS_ARE_SUBNETS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->PREFIXED_ZERO_HOSTS_ARE_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    new-instance v2, Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    const-string v3, "EXPLICIT_SUBNETS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Linet/ipaddr/AddressNetwork$PrefixConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v2, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->EXPLICIT_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    filled-new-array {v0, v1, v2}, [Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    move-result-object v0

    sput-object v0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->$VALUES:[Linet/ipaddr/AddressNetwork$PrefixConfiguration;

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

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/AddressNetwork$PrefixConfiguration;
    .locals 1

    const-class v0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/AddressNetwork$PrefixConfiguration;
    .locals 1

    sget-object v0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->$VALUES:[Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    invoke-virtual {v0}, [Linet/ipaddr/AddressNetwork$PrefixConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    return-object v0
.end method


# virtual methods
.method public allPrefixedAddressesAreSubnets()Z
    .locals 1

    sget-object v0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->ALL_PREFIXED_ADDRESSES_ARE_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prefixedSubnetsAreExplicit()Z
    .locals 1

    sget-object v0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->EXPLICIT_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public zeroHostsAreSubnets()Z
    .locals 1

    sget-object v0, Linet/ipaddr/AddressNetwork$PrefixConfiguration;->PREFIXED_ZERO_HOSTS_ARE_SUBNETS:Linet/ipaddr/AddressNetwork$PrefixConfiguration;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
