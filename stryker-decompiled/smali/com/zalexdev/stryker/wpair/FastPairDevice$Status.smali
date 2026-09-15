.class public final enum Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/FastPairDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

.field public static final enum ERROR:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

.field public static final enum NOT_TESTED:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

.field public static final enum PATCHED:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

.field public static final enum TESTING:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

.field public static final enum VULNERABLE:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;


# direct methods
.method private static synthetic $values()[Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;
    .locals 5

    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->NOT_TESTED:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    sget-object v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->TESTING:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    sget-object v2, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->VULNERABLE:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    sget-object v3, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->PATCHED:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    sget-object v4, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->ERROR:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    const-string v1, "NOT_TESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->NOT_TESTED:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    const-string v1, "TESTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->TESTING:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    const-string v1, "VULNERABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->VULNERABLE:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    const-string v1, "PATCHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->PATCHED:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    new-instance v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->ERROR:Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    invoke-static {}, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->$values()[Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->$VALUES:[Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;
    .locals 1

    const-class v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    return-object p0
.end method

.method public static values()[Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;
    .locals 1

    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->$VALUES:[Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    invoke-virtual {v0}, [Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zalexdev/stryker/wpair/FastPairDevice$Status;

    return-object v0
.end method
