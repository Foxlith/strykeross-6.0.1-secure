.class Linet/ipaddr/format/standard/AddressDivision$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/format/standard/AddressDivision;->identityIterator(Linet/ipaddr/AddressSegment;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TS;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic val$original:Linet/ipaddr/AddressSegment;


# direct methods
.method public constructor <init>(Linet/ipaddr/AddressSegment;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivision$1;->val$original:Linet/ipaddr/AddressSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$1;->done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Linet/ipaddr/AddressSegment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$1;->done:Z

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivision$1;->val$original:Linet/ipaddr/AddressSegment;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision$1;->next()Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
