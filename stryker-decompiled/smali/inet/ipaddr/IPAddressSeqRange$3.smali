.class Linet/ipaddr/IPAddressSeqRange$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/IPAddressSeqRange;->prefixIterator(I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Linet/ipaddr/IPAddressSeqRange;",
        ">;"
    }
.end annotation


# instance fields
.field private first:Z

.field prefixBlockIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/IPAddress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Linet/ipaddr/IPAddressSeqRange;

.field final synthetic val$prefixLength:I


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressSeqRange;I)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSeqRange$3;->this$0:Linet/ipaddr/IPAddressSeqRange;

    iput p2, p0, Linet/ipaddr/IPAddressSeqRange$3;->val$prefixLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Linet/ipaddr/IPAddressSeqRange;->prefixBlockIterator(I)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/IPAddressSeqRange$3;->prefixBlockIterator:Ljava/util/Iterator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Linet/ipaddr/IPAddressSeqRange$3;->first:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange$3;->prefixBlockIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Linet/ipaddr/IPAddressSeqRange;
    .locals 4

    .line 1
    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange$3;->prefixBlockIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddress;

    iget-boolean v1, p0, Linet/ipaddr/IPAddressSeqRange$3;->first:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Linet/ipaddr/IPAddressSeqRange$3;->first:Z

    iget-object v1, p0, Linet/ipaddr/IPAddressSeqRange$3;->this$0:Linet/ipaddr/IPAddressSeqRange;

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSeqRange;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v1

    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange$3;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Linet/ipaddr/IPAddressSeqRange$3;->val$prefixLength:I

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddress;->includesZeroHost(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Linet/ipaddr/IPAddressSeqRange$3;->this$0:Linet/ipaddr/IPAddressSeqRange;

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Linet/ipaddr/IPAddressSeqRange$3;->this$0:Linet/ipaddr/IPAddressSeqRange;

    invoke-virtual {v2}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v2

    iget v3, p0, Linet/ipaddr/IPAddressSeqRange$3;->val$prefixLength:I

    invoke-virtual {v1, v3}, Linet/ipaddr/IPAddress;->includesZeroHost(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Linet/ipaddr/IPAddressSeqRange$3;->val$prefixLength:I

    invoke-virtual {v2, v3}, Linet/ipaddr/IPAddress;->includesMaxHost(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange$3;->this$0:Linet/ipaddr/IPAddressSeqRange;

    invoke-virtual {v0, v1, v2}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange$3;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Linet/ipaddr/IPAddressSeqRange$3;->this$0:Linet/ipaddr/IPAddressSeqRange;

    invoke-virtual {v1}, Linet/ipaddr/IPAddressSeqRange;->getUpper()Linet/ipaddr/IPAddress;

    move-result-object v1

    iget v2, p0, Linet/ipaddr/IPAddressSeqRange$3;->val$prefixLength:I

    invoke-virtual {v1, v2}, Linet/ipaddr/IPAddress;->includesMaxHost(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Linet/ipaddr/IPAddressSeqRange$3;->this$0:Linet/ipaddr/IPAddressSeqRange;

    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->getLower()Linet/ipaddr/IPAddress;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->create(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v0}, Linet/ipaddr/IPAddress;->toSequentialRange()Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange$3;->next()Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
