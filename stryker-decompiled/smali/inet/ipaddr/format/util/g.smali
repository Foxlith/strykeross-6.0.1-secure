.class public final synthetic Linet/ipaddr/format/util/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/format/util/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/format/util/g;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/format/util/g;->a:I

    iget-object v1, p0, Linet/ipaddr/format/util/g;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Ljava/util/function/Predicate;

    invoke-static {v1, p1}, Linet/ipaddr/format/util/Partition;->b(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_0
    check-cast v1, Linet/ipaddr/format/util/BinaryTreeNode$Bounds;

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-static {v1, p1}, Linet/ipaddr/format/util/BinaryTreeNode;->a(Linet/ipaddr/format/util/BinaryTreeNode$Bounds;Linet/ipaddr/format/util/BinaryTreeNode;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
