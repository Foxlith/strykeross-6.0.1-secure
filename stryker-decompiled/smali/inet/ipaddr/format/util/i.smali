.class public final synthetic Linet/ipaddr/format/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Linet/ipaddr/format/util/i;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Linet/ipaddr/format/util/i;->a:I

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    check-cast p2, Linet/ipaddr/format/util/BinaryTreeNode;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->previousPreOrderNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->nextPreOrderNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->previousPostOrderNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->nextPostOrderNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->previousNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->nextNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->nextNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode;->previousNode(Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
