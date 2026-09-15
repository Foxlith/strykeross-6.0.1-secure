.class public final synthetic Linet/ipaddr/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;


# instance fields
.field public final synthetic a:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(IILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Linet/ipaddr/l;->a:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    iput p1, p0, Linet/ipaddr/l;->b:I

    iput p2, p0, Linet/ipaddr/l;->c:I

    iput-object p4, p0, Linet/ipaddr/l;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final applyAsInt(II)Linet/ipaddr/AddressSegment;
    .locals 6

    .line 1
    iget-object v0, p0, Linet/ipaddr/l;->a:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    iget v1, p0, Linet/ipaddr/l;->b:I

    iget v2, p0, Linet/ipaddr/l;->c:I

    iget-object v3, p0, Linet/ipaddr/l;->d:Ljava/lang/Integer;

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Linet/ipaddr/IPAddressSegment;->e(Linet/ipaddr/IPAddressNetwork$IPAddressCreator;IILjava/lang/Integer;II)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method
