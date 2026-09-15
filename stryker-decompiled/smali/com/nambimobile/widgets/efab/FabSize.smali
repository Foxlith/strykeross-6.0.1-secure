.class public final enum Lcom/nambimobile/widgets/efab/FabSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nambimobile/widgets/efab/FabSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nambimobile/widgets/efab/FabSize;

.field public static final enum AUTO:Lcom/nambimobile/widgets/efab/FabSize;

.field public static final enum CUSTOM:Lcom/nambimobile/widgets/efab/FabSize;

.field public static final enum MINI:Lcom/nambimobile/widgets/efab/FabSize;

.field public static final enum NORMAL:Lcom/nambimobile/widgets/efab/FabSize;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/nambimobile/widgets/efab/FabSize;
    .locals 4

    sget-object v0, Lcom/nambimobile/widgets/efab/FabSize;->MINI:Lcom/nambimobile/widgets/efab/FabSize;

    sget-object v1, Lcom/nambimobile/widgets/efab/FabSize;->NORMAL:Lcom/nambimobile/widgets/efab/FabSize;

    sget-object v2, Lcom/nambimobile/widgets/efab/FabSize;->AUTO:Lcom/nambimobile/widgets/efab/FabSize;

    sget-object v3, Lcom/nambimobile/widgets/efab/FabSize;->CUSTOM:Lcom/nambimobile/widgets/efab/FabSize;

    filled-new-array {v0, v1, v2, v3}, [Lcom/nambimobile/widgets/efab/FabSize;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nambimobile/widgets/efab/FabSize;

    const-string v1, "MINI"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/nambimobile/widgets/efab/FabSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nambimobile/widgets/efab/FabSize;->MINI:Lcom/nambimobile/widgets/efab/FabSize;

    new-instance v0, Lcom/nambimobile/widgets/efab/FabSize;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3, v2}, Lcom/nambimobile/widgets/efab/FabSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nambimobile/widgets/efab/FabSize;->NORMAL:Lcom/nambimobile/widgets/efab/FabSize;

    new-instance v0, Lcom/nambimobile/widgets/efab/FabSize;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "AUTO"

    invoke-direct {v0, v3, v1, v2}, Lcom/nambimobile/widgets/efab/FabSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nambimobile/widgets/efab/FabSize;->AUTO:Lcom/nambimobile/widgets/efab/FabSize;

    new-instance v0, Lcom/nambimobile/widgets/efab/FabSize;

    const/4 v1, 0x3

    const/16 v2, -0x4d2

    const-string v3, "CUSTOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/nambimobile/widgets/efab/FabSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nambimobile/widgets/efab/FabSize;->CUSTOM:Lcom/nambimobile/widgets/efab/FabSize;

    invoke-static {}, Lcom/nambimobile/widgets/efab/FabSize;->$values()[Lcom/nambimobile/widgets/efab/FabSize;

    move-result-object v0

    sput-object v0, Lcom/nambimobile/widgets/efab/FabSize;->$VALUES:[Lcom/nambimobile/widgets/efab/FabSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/nambimobile/widgets/efab/FabSize;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nambimobile/widgets/efab/FabSize;
    .locals 1

    const-class v0, Lcom/nambimobile/widgets/efab/FabSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nambimobile/widgets/efab/FabSize;

    return-object p0
.end method

.method public static values()[Lcom/nambimobile/widgets/efab/FabSize;
    .locals 1

    sget-object v0, Lcom/nambimobile/widgets/efab/FabSize;->$VALUES:[Lcom/nambimobile/widgets/efab/FabSize;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nambimobile/widgets/efab/FabSize;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/FabSize;->value:I

    return v0
.end method
