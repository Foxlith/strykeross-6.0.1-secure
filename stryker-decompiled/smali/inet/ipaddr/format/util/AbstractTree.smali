.class abstract Linet/ipaddr/format/util/AbstractTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/util/AddressTrieOps$AddressTrieAddOps;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Linet/ipaddr/Address;",
        ">",
        "Ljava/lang/Object;",
        "Linet/ipaddr/format/util/AddressTrieOps$AddressTrieAddOps<",
        "TE;>;"
    }
.end annotation


# static fields
.field static bundle:Ljava/util/ResourceBundle; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field root:Linet/ipaddr/format/util/BinaryTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Linet/ipaddr/HostIdentifierException;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".IPAddressResources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Linet/ipaddr/format/util/AbstractTree;->bundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bundle "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is missing"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Linet/ipaddr/format/util/BinaryTreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/AbstractTree;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    return-void
.end method

.method public static checkBlockOrAddress(Linet/ipaddr/Address;Z)Linet/ipaddr/Address;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Linet/ipaddr/Address;",
            ">(TE;Z)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Linet/ipaddr/Address;->isMultiple()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/Address;->isPrefixed()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/Address;->withoutPrefixLength()Linet/ipaddr/Address;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Linet/ipaddr/Address;->isSinglePrefixBlock()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    instance-of v0, p0, Linet/ipaddr/IPAddressSegmentSeries;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Linet/ipaddr/IPAddressSegmentSeries;

    invoke-interface {p0}, Linet/ipaddr/IPAddressSegmentSeries;->assignPrefixForSingleBlock()Linet/ipaddr/IPAddressSegmentSeries;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Linet/ipaddr/Address;->getPrefixLengthForSingleBlock()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_4

    move-object p0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Linet/ipaddr/Address;->setPrefixLength(IZ)Linet/ipaddr/Address;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    check-cast p0, Linet/ipaddr/Address;

    return-object p0

    :cond_5
    if-nez p1, :cond_6

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ipaddress.error.address.not.block"

    invoke-static {p1}, Linet/ipaddr/format/util/AbstractTree;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Linet/ipaddr/format/util/AbstractTree;->bundle:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AbstractTree;->getRoot()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->clear()V

    return-void
.end method

.method public clone()Linet/ipaddr/format/util/AbstractTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/AbstractTree<",
            "TE;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/AbstractTree;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AbstractTree;->clone()Linet/ipaddr/format/util/AbstractTree;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Linet/ipaddr/format/util/AddressTrieOps;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Linet/ipaddr/format/util/AbstractTree;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Linet/ipaddr/format/util/AbstractTree;

    invoke-virtual {p1}, Linet/ipaddr/format/util/AbstractTree;->size()I

    move-result v1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AbstractTree;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    invoke-interface {p0, v0}, Linet/ipaddr/format/util/AddressTrieOps;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1, v0}, Linet/ipaddr/format/util/AddressTrieOps;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v3, v4}, Linet/ipaddr/format/util/BinaryTreeNode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public getRoot()Linet/ipaddr/format/util/BinaryTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/BinaryTreeNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/AbstractTree;->root:Linet/ipaddr/format/util/BinaryTreeNode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Linet/ipaddr/format/util/AddressTrieOps;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/BinaryTreeNode;

    invoke-virtual {v2}, Linet/ipaddr/format/util/BinaryTreeNode;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AbstractTree;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Linet/ipaddr/format/util/AddressTrieOps;->nodeIterator(Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/BinaryTreeNode$KeyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public nodeSize()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AbstractTree;->getRoot()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->nodeSize()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/AbstractTree;->getRoot()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Linet/ipaddr/format/util/AbstractTree;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/AbstractTree;->getRoot()Linet/ipaddr/format/util/BinaryTreeNode;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Linet/ipaddr/format/util/BinaryTreeNode;->toTreeString(ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
