.class Linet/ipaddr/format/util/IPAddressPartStringCollection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/format/util/IPAddressPartStringCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "**>;>;"
        }
    .end annotation
.end field

.field private i:I

.field final synthetic this$0:Linet/ipaddr/format/util/IPAddressPartStringCollection;


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->this$0:Linet/ipaddr/format/util/IPAddressPartStringCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    :goto_0
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_1

    iget v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->i:I

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->this$0:Linet/ipaddr/format/util/IPAddressPartStringCollection;

    invoke-static {v1}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->access$000(Linet/ipaddr/format/util/IPAddressPartStringCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->this$0:Linet/ipaddr/format/util/IPAddressPartStringCollection;

    invoke-static {v0}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->access$000(Linet/ipaddr/format/util/IPAddressPartStringCollection;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->currentIterator:Ljava/util/Iterator;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_1
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->currentIterator:Ljava/util/Iterator;

    goto :goto_0
.end method

.method public next()Linet/ipaddr/format/util/IPAddressPartConfiguredString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "**>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->next()Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;->currentIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
