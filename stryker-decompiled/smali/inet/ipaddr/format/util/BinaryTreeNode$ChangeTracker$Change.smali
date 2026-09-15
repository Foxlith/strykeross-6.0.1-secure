.class Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Change"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private big:Ljava/math/BigInteger;

.field shared:Z

.field private small:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->big:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public clone()Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;
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
    invoke-virtual {p0}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->clone()Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->equalsChange(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equalsChange(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)Z
    .locals 2

    iget v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->small:I

    iget v1, p1, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->small:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->big:Ljava/math/BigInteger;

    iget-object p1, p1, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->big:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public increment()V
    .locals 2

    iget v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->small:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->small:I

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->big:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->big:Ljava/math/BigInteger;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->big:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->small:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
