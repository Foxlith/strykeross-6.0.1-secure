.class Linet/ipaddr/IPAddressSeqRange$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/IPAddressSeqRange;->iterator(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;Linet/ipaddr/format/standard/AddressCreator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSeqRange$SegValueComparator;IILinet/ipaddr/IPAddressSection$SegFunction;)Ljava/util/Iterator;
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
.field final synthetic val$finalValue:[Z

.field final synthetic val$indexi:I

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;[ZI)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSeqRange$4;->val$iterator:Ljava/util/Iterator;

    iput-object p2, p0, Linet/ipaddr/IPAddressSeqRange$4;->val$finalValue:[Z

    iput p3, p0, Linet/ipaddr/IPAddressSeqRange$4;->val$indexi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange$4;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Linet/ipaddr/IPAddressSegment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/IPAddressSeqRange$4;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddressSegment;

    iget-object v1, p0, Linet/ipaddr/IPAddressSeqRange$4;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Linet/ipaddr/IPAddressSeqRange$4;->val$finalValue:[Z

    iget v2, p0, Linet/ipaddr/IPAddressSeqRange$4;->val$indexi:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput-boolean v3, v1, v2

    :cond_0
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/IPAddressSeqRange$4;->next()Linet/ipaddr/IPAddressSegment;

    move-result-object v0

    return-object v0
.end method
