.class Linet/ipaddr/format/standard/AddressDivision$3;
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

.field final synthetic val$shiftAdjustment:I

.field final synthetic val$upperShiftMask:I


# direct methods
.method public constructor <init>(IIILinet/ipaddr/AddressNetwork$AddressSegmentCreator;ILjava/lang/Integer;)V
    .locals 0

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$originalLower:I

    iput p2, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$originalUpper:I

    iput p3, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$shiftAdjustment:I

    iput-object p4, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    iput p5, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$upperShiftMask:I

    iput-object p6, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$segmentPrefixLength:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    iput-boolean p4, p0, Linet/ipaddr/format/standard/AddressDivision$3;->notDone:Z

    ushr-int/2addr p1, p3

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivision$3;->current:I

    ushr-int p1, p2, p3

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivision$3;->last:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$3;->notDone:Z

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
    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$3;->notDone:Z

    if-eqz v0, :cond_1

    iget v0, p0, Linet/ipaddr/format/standard/AddressDivision$3;->current:I

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$shiftAdjustment:I

    shl-int v1, v0, v1

    iget-object v2, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    iget v3, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$upperShiftMask:I

    or-int/2addr v3, v1

    iget-object v4, p0, Linet/ipaddr/format/standard/AddressDivision$3;->val$segmentPrefixLength:Ljava/lang/Integer;

    invoke-interface {v2, v1, v3, v4}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Linet/ipaddr/format/standard/AddressDivision$3;->last:I

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$3;->notDone:Z

    goto :goto_0

    :cond_0
    iput v0, p0, Linet/ipaddr/format/standard/AddressDivision$3;->current:I

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision$3;->next()Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
