.class public final synthetic Linet/ipaddr/format/util/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/BinaryOperator;

.field public final synthetic c:Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;Ljava/util/function/BinaryOperator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Linet/ipaddr/format/util/l;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/format/util/l;->c:Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;

    .line 7
    .line 8
    iput-object p2, p0, Linet/ipaddr/format/util/l;->b:Ljava/util/function/BinaryOperator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/format/util/l;->a:I

    iget-object v1, p0, Linet/ipaddr/format/util/l;->b:Ljava/util/function/BinaryOperator;

    iget-object v2, p0, Linet/ipaddr/format/util/l;->c:Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    check-cast p2, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-static {v2, v1, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;->b(Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v2, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    check-cast p2, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-static {v2, v1, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;->a(Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast v2, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    check-cast p2, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-static {v2, v1, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->b(Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
