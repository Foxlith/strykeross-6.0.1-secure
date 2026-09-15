.class Linet/ipaddr/format/standard/AddressDivision$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/format/standard/AddressDivision;->iterator(Linet/ipaddr/AddressSegment;IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;ZZ)Ljava/util/Iterator;
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
.field private current:I

.field private last:I

.field private notDone:Z

.field final synthetic val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

.field final synthetic val$originalLower:I

.field final synthetic val$originalUpper:I

.field final synthetic val$segmentPrefixLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(IILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;)V
    .locals 0

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivision$5;->val$originalLower:I

    iput p2, p0, Linet/ipaddr/format/standard/AddressDivision$5;->val$originalUpper:I

    iput-object p3, p0, Linet/ipaddr/format/standard/AddressDivision$5;->val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    iput-object p4, p0, Linet/ipaddr/format/standard/AddressDivision$5;->val$segmentPrefixLength:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Linet/ipaddr/format/standard/AddressDivision$5;->notDone:Z

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivision$5;->current:I

    iput p2, p0, Linet/ipaddr/format/standard/AddressDivision$5;->last:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$5;->notDone:Z

    return v0
.end method

.method public next()Linet/ipaddr/AddressSegment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$5;->notDone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivision$5;->val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivision$5;->current:I

    iget-object v2, p0, Linet/ipaddr/format/standard/AddressDivision$5;->val$segmentPrefixLength:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(ILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivision$5;->current:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Linet/ipaddr/format/standard/AddressDivision$5;->current:I

    iget v3, p0, Linet/ipaddr/format/standard/AddressDivision$5;->last:I

    if-gt v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Linet/ipaddr/format/standard/AddressDivision$5;->notDone:Z

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision$5;->next()Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
