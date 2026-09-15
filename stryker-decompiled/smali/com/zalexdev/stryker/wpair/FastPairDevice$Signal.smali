.class public final enum Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/FastPairDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Signal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

.field public static final enum EXCELLENT:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

.field public static final enum FAIR:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

.field public static final enum GOOD:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

.field public static final enum VERY_WEAK:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

.field public static final enum WEAK:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;


# direct methods
.method private static synthetic $values()[Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;
    .locals 5

    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->EXCELLENT:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    sget-object v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->GOOD:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    sget-object v2, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->FAIR:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    sget-object v3, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->WEAK:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    sget-object v4, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->VERY_WEAK:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    const-string v1, "EXCELLENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->EXCELLENT:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    const-string v1, "GOOD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->GOOD:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    const-string v1, "FAIR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->FAIR:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    const-string v1, "WEAK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->WEAK:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    const-string v1, "VERY_WEAK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->VERY_WEAK:Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    invoke-static {}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->$values()[Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->$VALUES:[Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;
    .locals 1

    const-class v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    return-object p0
.end method

.method public static values()[Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;
    .locals 1

    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->$VALUES:[Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    invoke-virtual {v0}, [Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zalexdev/stryker/wpair/FastPairDevice$Signal;

    return-object v0
.end method
