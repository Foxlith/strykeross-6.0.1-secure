.class public final synthetic Linet/ipaddr/format/util/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BinaryOperator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/format/util/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/format/util/k;->b:Ljava/util/function/BinaryOperator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/format/util/k;->a:I

    iget-object v1, p0, Linet/ipaddr/format/util/k;->b:Ljava/util/function/BinaryOperator;

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    check-cast p2, Linet/ipaddr/format/util/BinaryTreeNode;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$PreOrderNodeIterator;->a(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v1, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$PostOrderNodeIterator;->b(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {v1, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$NodeIterator;->a(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {v1, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->c(Ljava/util/function/BinaryOperator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
