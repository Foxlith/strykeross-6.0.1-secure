.class Linet/ipaddr/format/standard/AddressDivisionGrouping$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/format/standard/AddressDivisionGrouping;->iterator(ZLinet/ipaddr/Address;Linet/ipaddr/format/standard/AddressCreator;Ljava/util/Iterator;Ljava/lang/Integer;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field orig:Linet/ipaddr/Address;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$original:Linet/ipaddr/Address;


# direct methods
.method public constructor <init>(Linet/ipaddr/Address;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$5;->val$original:Linet/ipaddr/Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$5;->orig:Linet/ipaddr/Address;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$5;->orig:Linet/ipaddr/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Linet/ipaddr/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$5;->orig:Linet/ipaddr/Address;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$5;->orig:Linet/ipaddr/Address;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$5;->next()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
