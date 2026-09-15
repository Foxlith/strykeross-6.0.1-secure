.class public final enum Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "inet_aton_radix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

.field public static final enum DECIMAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

.field public static final enum HEX:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

.field public static final enum OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    const-string v1, "OCTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    new-instance v1, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    const-string v2, "HEX"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->HEX:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    new-instance v2, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    const-string v3, "DECIMAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;-><init>(Ljava/lang/String;I)V

    sput-object v2, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->DECIMAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    filled-new-array {v0, v1, v2}, [Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    move-result-object v0

    sput-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->$VALUES:[Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

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

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;
    .locals 1

    const-class v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->$VALUES:[Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    invoke-virtual {v0}, [Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    return-object v0
.end method


# virtual methods
.method public getRadix()I
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p0, v0, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->HEX:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p0, v0, :cond_1

    const/16 v0, 0x10

    return v0

    :cond_1
    const/16 v0, 0xa

    return v0
.end method

.method public getSegmentStrPrefix()Ljava/lang/String;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p0, v0, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->HEX:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p0, v0, :cond_1

    const-string v0, "0x"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->OCTAL:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p0, v0, :cond_0

    const-string v0, "octal"

    return-object v0

    :cond_0
    sget-object v0, Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;->HEX:Linet/ipaddr/ipv4/IPv4Address$inet_aton_radix;

    if-ne p0, v0, :cond_1

    const-string v0, "hexadecimal"

    return-object v0

    :cond_1
    const-string v0, "decimal"

    return-object v0
.end method
