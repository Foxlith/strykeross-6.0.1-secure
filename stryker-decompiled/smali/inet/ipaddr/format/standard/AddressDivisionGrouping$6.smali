.class Linet/ipaddr/format/standard/AddressDivisionGrouping$6;
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
.field final synthetic val$creator:Linet/ipaddr/format/standard/AddressCreator;

.field final synthetic val$iterator:Ljava/util/Iterator;

.field final synthetic val$prefixLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;->val$iterator:Ljava/util/Iterator;

    iput-object p2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;->val$creator:Linet/ipaddr/format/standard/AddressCreator;

    iput-object p3, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;->val$prefixLength:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Linet/ipaddr/Address;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linet/ipaddr/AddressSegment;

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;->val$creator:Linet/ipaddr/format/standard/AddressCreator;

    iget-object v2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;->val$prefixLength:Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->createIteratedAddress([Linet/ipaddr/AddressSegment;Linet/ipaddr/format/standard/AddressCreator;Ljava/lang/Integer;)Linet/ipaddr/Address;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$6;->next()Linet/ipaddr/Address;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
