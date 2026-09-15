.class public final synthetic Linet/ipaddr/format/util/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Linet/ipaddr/format/util/j;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Linet/ipaddr/format/util/j;->b:Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Linet/ipaddr/format/util/j;->a:I

    iget-object v1, p0, Linet/ipaddr/format/util/j;->b:Linet/ipaddr/format/util/BinaryTreeNode$AbstractNodeIterator;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    check-cast p2, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-static {v1, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;->a(Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeNodeIterator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v1, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode;

    check-cast p2, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-static {v1, p1, p2}, Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;->a(Linet/ipaddr/format/util/BinaryTreeNode$BlockSizeCachingNodeIterator;Linet/ipaddr/format/util/BinaryTreeNode;Linet/ipaddr/format/util/BinaryTreeNode;)Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
