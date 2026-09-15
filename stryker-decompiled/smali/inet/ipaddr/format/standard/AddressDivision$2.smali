.class Linet/ipaddr/format/standard/AddressDivision$2;
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
.field done:Z

.field final synthetic val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

.field final synthetic val$isBlockIterator:Z

.field final synthetic val$original:Linet/ipaddr/AddressSegment;

.field final synthetic val$originalLower:I

.field final synthetic val$originalUpper:I

.field final synthetic val$segmentPrefixLength:Ljava/lang/Integer;

.field final synthetic val$shiftMask:I

.field final synthetic val$upperShiftMask:I


# direct methods
.method public constructor <init>(ZLinet/ipaddr/AddressNetwork$AddressSegmentCreator;IIIILjava/lang/Integer;Linet/ipaddr/AddressSegment;)V
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$isBlockIterator:Z

    iput-object p2, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    iput p3, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$originalLower:I

    iput p4, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$shiftMask:I

    iput p5, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$originalUpper:I

    iput p6, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$upperShiftMask:I

    iput-object p7, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$segmentPrefixLength:Ljava/lang/Integer;

    iput-object p8, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$original:Linet/ipaddr/AddressSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$2;->done:Z

    xor-int/lit8 v0, v0, 0x1

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
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision$2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$2;->done:Z

    iget-boolean v0, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$isBlockIterator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$creator:Linet/ipaddr/AddressNetwork$AddressSegmentCreator;

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$originalLower:I

    iget v2, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$shiftMask:I

    and-int/2addr v1, v2

    iget v2, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$originalUpper:I

    iget v3, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$upperShiftMask:I

    or-int/2addr v2, v3

    iget-object v3, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$segmentPrefixLength:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2, v3}, Linet/ipaddr/AddressNetwork$AddressSegmentCreator;->createSegment(IILjava/lang/Integer;)Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/standard/AddressDivision$2;->val$original:Linet/ipaddr/AddressSegment;

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/format/standard/AddressDivision$2;->next()Linet/ipaddr/AddressSegment;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
