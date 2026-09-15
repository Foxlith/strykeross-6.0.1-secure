.class public final enum Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

.field public static final enum ALL:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

.field public static final enum FAST_PAIR:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

.field public static final enum PAIRED:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

.field public static final enum VULNERABLE:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;


# direct methods
.method private static synthetic $values()[Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;
    .locals 4

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->FAST_PAIR:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    sget-object v1, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->ALL:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    sget-object v2, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->VULNERABLE:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    sget-object v3, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->PAIRED:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    filled-new-array {v0, v1, v2, v3}, [Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    const-string v1, "FAST_PAIR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->FAST_PAIR:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    const-string v1, "ALL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->ALL:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    const-string v1, "VULNERABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->VULNERABLE:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    new-instance v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    const-string v1, "PAIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->PAIRED:Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    invoke-static {}, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->$values()[Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->$VALUES:[Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;
    .locals 1

    const-class v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    return-object p0
.end method

.method public static values()[Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;
    .locals 1

    sget-object v0, Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->$VALUES:[Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    invoke-virtual {v0}, [Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zalexdev/stryker/wpair/WpairDeviceAdapter$Filter;

    return-object v0
.end method
