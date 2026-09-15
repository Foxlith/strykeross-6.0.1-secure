.class final enum Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode$Bounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BoundsCheck"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

.field public static final enum EQUIVALENT_TO_EXCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

.field public static final enum EQUIVALENT_TO_INCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

.field public static final enum EQUIVALENT_TO_UNBOUNDED:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

.field public static final enum INSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

.field public static final enum OUTSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

.field public static final enum SAME:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;


# instance fields
.field private less:Z

.field private more:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    const-string v1, "INSIDE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->INSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    new-instance v1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    const-string v4, "EQUIVALENT_TO_UNBOUNDED"

    invoke-direct {v1, v4, v3, v2, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_UNBOUNDED:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    new-instance v4, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    const-string v5, "EQUIVALENT_TO_EXCLUSIVE"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v2, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_EXCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    new-instance v5, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    const-string v6, "EQUIVALENT_TO_INCLUSIVE"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v2, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->EQUIVALENT_TO_INCLUSIVE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    new-instance v6, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    const-string v7, "SAME"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v2, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;-><init>(Ljava/lang/String;IZZ)V

    sput-object v6, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->SAME:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    new-instance v7, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    const-string v8, "OUTSIDE"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v3, v2}, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;-><init>(Ljava/lang/String;IZZ)V

    sput-object v7, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->OUTSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    filled-new-array/range {v0 .. v5}, [Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->$VALUES:[Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->less:Z

    iput-boolean p4, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->more:Z

    return-void
.end method

.method public static convertEquivBoundaryComparison(I)Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;
    .locals 0

    if-lez p0, :cond_0

    sget-object p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->OUTSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p0

    :cond_0
    if-gez p0, :cond_1

    sget-object p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->INSIDE:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p0

    :cond_1
    sget-object p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->SAME:Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;
    .locals 1

    const-class v0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;
    .locals 1

    sget-object v0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->$VALUES:[Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    invoke-virtual {v0}, [Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;

    return-object v0
.end method


# virtual methods
.method public isLessRestrictive()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->less:Z

    return v0
.end method

.method public isMoreRestrictive()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$Bounds$BoundsCheck;->more:Z

    return v0
.end method
