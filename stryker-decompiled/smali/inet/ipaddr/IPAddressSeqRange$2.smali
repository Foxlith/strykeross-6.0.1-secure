.class Linet/ipaddr/IPAddressSeqRange$2;
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
.field orig:Linet/ipaddr/IPAddressSeqRange;

.field final synthetic this$0:Linet/ipaddr/IPAddressSeqRange;


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressSeqRange;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSeqRange$2;->this$0:Linet/ipaddr/IPAddressSeqRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/IPAddressSeqRange$2;->orig:Linet/ipaddr/IPAddressSeqRange;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange$2;->orig:Linet/ipaddr/IPAddressSeqRange;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Linet/ipaddr/IPAddressSeqRange;
    .locals 2

    .line 1
    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange$2;->orig:Linet/ipaddr/IPAddressSeqRange;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Linet/ipaddr/IPAddressSeqRange$2;->orig:Linet/ipaddr/IPAddressSeqRange;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange$2;->next()Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
