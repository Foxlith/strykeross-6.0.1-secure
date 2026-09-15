.class public final synthetic Linet/ipaddr/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionBase$SegmentCreator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(IIIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Linet/ipaddr/j;->a:I

    iput p2, p0, Linet/ipaddr/j;->b:I

    iput p3, p0, Linet/ipaddr/j;->c:I

    iput p4, p0, Linet/ipaddr/j;->d:I

    iput p5, p0, Linet/ipaddr/j;->e:I

    iput p6, p0, Linet/ipaddr/j;->f:I

    iput-object p7, p0, Linet/ipaddr/j;->g:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    iput p8, p0, Linet/ipaddr/j;->h:I

    return-void
.end method


# virtual methods
.method public final applyAsInt(II)Linet/ipaddr/AddressSegment;
    .locals 10

    .line 1
    iget v0, p0, Linet/ipaddr/j;->a:I

    iget v1, p0, Linet/ipaddr/j;->b:I

    iget v2, p0, Linet/ipaddr/j;->c:I

    iget v3, p0, Linet/ipaddr/j;->d:I

    iget v4, p0, Linet/ipaddr/j;->e:I

    iget v5, p0, Linet/ipaddr/j;->f:I

    iget-object v6, p0, Linet/ipaddr/j;->g:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    iget v7, p0, Linet/ipaddr/j;->h:I

    move v8, p1

    move v9, p2

    invoke-static/range {v0 .. v9}, Linet/ipaddr/IPAddressSegment;->d(IIIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;III)Linet/ipaddr/IPAddressSegment;

    move-result-object p1

    return-object p1
.end method
