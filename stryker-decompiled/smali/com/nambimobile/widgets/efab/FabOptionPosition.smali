.class public final enum Lcom/nambimobile/widgets/efab/FabOptionPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nambimobile/widgets/efab/FabOptionPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nambimobile/widgets/efab/FabOptionPosition;

.field public static final enum ABOVE:Lcom/nambimobile/widgets/efab/FabOptionPosition;

.field public static final enum BELOW:Lcom/nambimobile/widgets/efab/FabOptionPosition;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/nambimobile/widgets/efab/FabOptionPosition;
    .locals 2

    sget-object v0, Lcom/nambimobile/widgets/efab/FabOptionPosition;->ABOVE:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    sget-object v1, Lcom/nambimobile/widgets/efab/FabOptionPosition;->BELOW:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    filled-new-array {v0, v1}, [Lcom/nambimobile/widgets/efab/FabOptionPosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nambimobile/widgets/efab/FabOptionPosition;

    const/4 v1, 0x0

    const/16 v2, 0x31

    const-string v3, "ABOVE"

    invoke-direct {v0, v3, v1, v2}, Lcom/nambimobile/widgets/efab/FabOptionPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nambimobile/widgets/efab/FabOptionPosition;->ABOVE:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    new-instance v0, Lcom/nambimobile/widgets/efab/FabOptionPosition;

    const/4 v1, 0x1

    const/16 v2, 0x51

    const-string v3, "BELOW"

    invoke-direct {v0, v3, v1, v2}, Lcom/nambimobile/widgets/efab/FabOptionPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nambimobile/widgets/efab/FabOptionPosition;->BELOW:Lcom/nambimobile/widgets/efab/FabOptionPosition;

    invoke-static {}, Lcom/nambimobile/widgets/efab/FabOptionPosition;->$values()[Lcom/nambimobile/widgets/efab/FabOptionPosition;

    move-result-object v0

    sput-object v0, Lcom/nambimobile/widgets/efab/FabOptionPosition;->$VALUES:[Lcom/nambimobile/widgets/efab/FabOptionPosition;

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

    iput p3, p0, Lcom/nambimobile/widgets/efab/FabOptionPosition;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nambimobile/widgets/efab/FabOptionPosition;
    .locals 1

    const-class v0, Lcom/nambimobile/widgets/efab/FabOptionPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nambimobile/widgets/efab/FabOptionPosition;

    return-object p0
.end method

.method public static values()[Lcom/nambimobile/widgets/efab/FabOptionPosition;
    .locals 1

    sget-object v0, Lcom/nambimobile/widgets/efab/FabOptionPosition;->$VALUES:[Lcom/nambimobile/widgets/efab/FabOptionPosition;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nambimobile/widgets/efab/FabOptionPosition;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/nambimobile/widgets/efab/FabOptionPosition;->value:I

    return v0
.end method
