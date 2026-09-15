.class Linet/ipaddr/format/util/BinaryTreeNode$Indents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Indents"
.end annotation


# instance fields
.field final nodeIndent:Ljava/lang/String;

.field final subNodeInd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0, v0}, Linet/ipaddr/format/util/BinaryTreeNode$Indents;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/BinaryTreeNode$Indents;->nodeIndent:Ljava/lang/String;

    iput-object p2, p0, Linet/ipaddr/format/util/BinaryTreeNode$Indents;->subNodeInd:Ljava/lang/String;

    return-void
.end method
