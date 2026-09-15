.class final enum Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

.field public static final enum ALL:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

.field public static final enum BEGINNING:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

.field public static final enum ENDING:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->ALL:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    new-instance v1, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    const-string v2, "BEGINNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;-><init>(Ljava/lang/String;I)V

    sput-object v1, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->BEGINNING:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    new-instance v2, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    const-string v3, "ENDING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;-><init>(Ljava/lang/String;I)V

    sput-object v2, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->ENDING:Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    filled-new-array {v0, v1, v2}, [Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    move-result-object v0

    sput-object v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->$VALUES:[Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

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

.method public static valueOf(Ljava/lang/String;)Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;
    .locals 1

    const-class v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    return-object p0
.end method

.method public static values()[Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;
    .locals 1

    sget-object v0, Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->$VALUES:[Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    invoke-virtual {v0}, [Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/format/util/BinaryTreeNode$NodeSpliterator$Side;

    return-object v0
.end method
