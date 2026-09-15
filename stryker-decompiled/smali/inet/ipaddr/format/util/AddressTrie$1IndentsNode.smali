.class Linet/ipaddr/format/util/AddressTrie$1IndentsNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/format/util/AddressTrie;->toAddedNodesTreeString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndentsNode"
.end annotation


# instance fields
.field indents:Linet/ipaddr/format/util/BinaryTreeNode$Indents;

.field node:Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TE;",
            "Ljava/util/List<",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TE;*>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Linet/ipaddr/format/util/AddressTrie;


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/AddressTrie;Linet/ipaddr/format/util/BinaryTreeNode$Indents;Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode$Indents;",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TE;",
            "Ljava/util/List<",
            "Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode<",
            "TE;*>;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;->this$0:Linet/ipaddr/format/util/AddressTrie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;->indents:Linet/ipaddr/format/util/BinaryTreeNode$Indents;

    iput-object p3, p0, Linet/ipaddr/format/util/AddressTrie$1IndentsNode;->node:Linet/ipaddr/format/util/AssociativeAddressTrie$AssociativeTrieNode;

    return-void
.end method
