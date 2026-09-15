.class public final enum Linet/ipaddr/MACAddressStringParameters$AddressSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/MACAddressStringParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/MACAddressStringParameters$AddressSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/MACAddressStringParameters$AddressSize;

.field public static final enum ANY:Linet/ipaddr/MACAddressStringParameters$AddressSize;

.field public static final enum EUI64:Linet/ipaddr/MACAddressStringParameters$AddressSize;

.field public static final enum MAC:Linet/ipaddr/MACAddressStringParameters$AddressSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Linet/ipaddr/MACAddressStringParameters$AddressSize;

    const-string v1, "MAC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linet/ipaddr/MACAddressStringParameters$AddressSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linet/ipaddr/MACAddressStringParameters$AddressSize;->MAC:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    new-instance v1, Linet/ipaddr/MACAddressStringParameters$AddressSize;

    const-string v2, "EUI64"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linet/ipaddr/MACAddressStringParameters$AddressSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linet/ipaddr/MACAddressStringParameters$AddressSize;->EUI64:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    new-instance v2, Linet/ipaddr/MACAddressStringParameters$AddressSize;

    const-string v3, "ANY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Linet/ipaddr/MACAddressStringParameters$AddressSize;-><init>(Ljava/lang/String;I)V

    sput-object v2, Linet/ipaddr/MACAddressStringParameters$AddressSize;->ANY:Linet/ipaddr/MACAddressStringParameters$AddressSize;

    filled-new-array {v0, v1, v2}, [Linet/ipaddr/MACAddressStringParameters$AddressSize;

    move-result-object v0

    sput-object v0, Linet/ipaddr/MACAddressStringParameters$AddressSize;->$VALUES:[Linet/ipaddr/MACAddressStringParameters$AddressSize;

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

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/MACAddressStringParameters$AddressSize;
    .locals 1

    const-class v0, Linet/ipaddr/MACAddressStringParameters$AddressSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/MACAddressStringParameters$AddressSize;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/MACAddressStringParameters$AddressSize;
    .locals 1

    sget-object v0, Linet/ipaddr/MACAddressStringParameters$AddressSize;->$VALUES:[Linet/ipaddr/MACAddressStringParameters$AddressSize;

    invoke-virtual {v0}, [Linet/ipaddr/MACAddressStringParameters$AddressSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/MACAddressStringParameters$AddressSize;

    return-object v0
.end method
