.class Linet/ipaddr/format/standard/AddressDivision$4;
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

.field private notFirst:Z

.field final synthetic val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

.field final synthetic val$originalLower:I

.field final synthetic val$originalUpper:I

.field final synthetic val$segmentPrefixLength:Ljava/lang/Integer;

.field final synthetic val$shiftAdjustment:I

.field final synthetic val$upperShiftMask:I


# direct methods
.method public constructor <init>(IIIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;Ljava/lang/Integer;)V
    .locals 0

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$originalLower:I

    iput p2, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$originalUpper:I

    iput p3, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$shiftAdjustment:I

    iput p4, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$upperShiftMask:I

    iput-object p5, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    iput-object p6, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$segmentPrefixLength:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    iput-boolean p4, p0, Linet/ipaddr/format/standard/AddressDivision$4;->notDone:Z

    ushr-int/2addr p1, p3

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivision$4;->current:I

    ushr-int p1, p2, p3

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivision$4;->last:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$4;->notDone:Z

    return v0
.end method

.method public next()Linet/ipaddr/AddressSegment;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$4;->notDone:Z

    if-eqz v0, :cond_2

    iget v0, p0, Linet/ipaddr/format/standard/AddressDivision$4;->current:I

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$shiftAdjustment:I

    shl-int v1, v0, v1

    iget v2, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$upperShiftMask:I

    or-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Linet/ipaddr/format/standard/AddressDivision$4;->current:I

    iget-boolean v4, p0, Linet/ipaddr/format/standard/AddressDivision$4;->notFirst:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$originalLower:I

    iput-boolean v3, p0, Linet/ipaddr/format/standard/AddressDivision$4;->notFirst:Z

    :goto_0
    iget v3, p0, Linet/ipaddr/format/standard/AddressDivision$4;->last:I

    if-gt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$originalUpper:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$4;->notDone:Z

    :goto_1
    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    iget-object v3, p0, Linet/ipaddr/format/standard/AddressDivision$4;->val$segmentPrefixLength:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision$4;->next()Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
