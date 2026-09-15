.class final enum Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/AssociativeAddressTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REMAP_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

.field public static final enum DO_NOTHING:Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

.field public static final enum REMOVE_NODE:Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    const-string v1, "DO_NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;->DO_NOTHING:Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    new-instance v1, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    const-string v2, "REMOVE_NODE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;->REMOVE_NODE:Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    filled-new-array {v0, v1}, [Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;->$VALUES:[Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

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

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;
    .locals 1

    const-class v0, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;
    .locals 1

    sget-object v0, Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;->$VALUES:[Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    invoke-virtual {v0}, [Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/util/AssociativeAddressTrie$REMAP_ACTION;

    return-object v0
.end method
