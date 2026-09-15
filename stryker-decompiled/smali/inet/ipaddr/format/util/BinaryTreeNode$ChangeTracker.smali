.class Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/BinaryTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    invoke-direct {v0}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;-><init>()V

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    return-void
.end method


# virtual methods
.method public changed()V
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    iget-boolean v1, v0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->shared:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->clone()Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->shared:Z

    invoke-virtual {v0}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->increment()V

    iput-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    :cond_0
    return-void
.end method

.method public changedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)V
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->isChangedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public getCurrent()Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    const/4 v1, 0x1

    iput-boolean v1, v0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->shared:Z

    return-object v0
.end method

.method public isChangedSince(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;->equalsChange(Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current change: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker;->currentChange:Linet/ipaddr/format/util/BinaryTreeNode$ChangeTracker$Change;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
