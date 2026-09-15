.class public final enum Linet/ipaddr/format/util/AddressTrie$Operation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AddressTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/format/util/AddressTrie$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/format/util/AddressTrie$Operation;

.field public static final enum CONTAINING:Linet/ipaddr/format/util/AddressTrie$Operation;

.field public static final enum INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

.field public static final enum INSERTED_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;

.field public static final enum LOOKUP:Linet/ipaddr/format/util/AddressTrie$Operation;

.field public static final enum NEAR:Linet/ipaddr/format/util/AddressTrie$Operation;

.field public static final enum REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

.field public static final enum SUBNET_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Linet/ipaddr/format/util/AddressTrie$Operation;

    const-string v1, "INSERT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/AddressTrie$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERT:Linet/ipaddr/format/util/AddressTrie$Operation;

    new-instance v1, Linet/ipaddr/format/util/AddressTrie$Operation;

    const-string v2, "REMAP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linet/ipaddr/format/util/AddressTrie$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linet/ipaddr/format/util/AddressTrie$Operation;->REMAP:Linet/ipaddr/format/util/AddressTrie$Operation;

    new-instance v2, Linet/ipaddr/format/util/AddressTrie$Operation;

    const-string v3, "LOOKUP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Linet/ipaddr/format/util/AddressTrie$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v2, Linet/ipaddr/format/util/AddressTrie$Operation;->LOOKUP:Linet/ipaddr/format/util/AddressTrie$Operation;

    new-instance v3, Linet/ipaddr/format/util/AddressTrie$Operation;

    const-string v4, "NEAR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Linet/ipaddr/format/util/AddressTrie$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Linet/ipaddr/format/util/AddressTrie$Operation;->NEAR:Linet/ipaddr/format/util/AddressTrie$Operation;

    new-instance v4, Linet/ipaddr/format/util/AddressTrie$Operation;

    const-string v5, "CONTAINING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Linet/ipaddr/format/util/AddressTrie$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Linet/ipaddr/format/util/AddressTrie$Operation;->CONTAINING:Linet/ipaddr/format/util/AddressTrie$Operation;

    new-instance v5, Linet/ipaddr/format/util/AddressTrie$Operation;

    const-string v6, "INSERTED_DELETE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Linet/ipaddr/format/util/AddressTrie$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Linet/ipaddr/format/util/AddressTrie$Operation;->INSERTED_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;

    new-instance v6, Linet/ipaddr/format/util/AddressTrie$Operation;

    const-string v7, "SUBNET_DELETE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Linet/ipaddr/format/util/AddressTrie$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v6, Linet/ipaddr/format/util/AddressTrie$Operation;->SUBNET_DELETE:Linet/ipaddr/format/util/AddressTrie$Operation;

    filled-new-array/range {v0 .. v6}, [Linet/ipaddr/format/util/AddressTrie$Operation;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->$VALUES:[Linet/ipaddr/format/util/AddressTrie$Operation;

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

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/format/util/AddressTrie$Operation;
    .locals 1

    const-class v0, Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/format/util/AddressTrie$Operation;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/format/util/AddressTrie$Operation;
    .locals 1

    sget-object v0, Linet/ipaddr/format/util/AddressTrie$Operation;->$VALUES:[Linet/ipaddr/format/util/AddressTrie$Operation;

    invoke-virtual {v0}, [Linet/ipaddr/format/util/AddressTrie$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/util/AddressTrie$Operation;

    return-object v0
.end method
