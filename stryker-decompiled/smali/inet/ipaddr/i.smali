.class public final synthetic Linet/ipaddr/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

.field public final synthetic g:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(IIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Linet/ipaddr/i;->a:I

    iput p2, p0, Linet/ipaddr/i;->b:I

    iput p3, p0, Linet/ipaddr/i;->c:I

    iput p4, p0, Linet/ipaddr/i;->d:I

    iput p5, p0, Linet/ipaddr/i;->e:I

    iput-object p6, p0, Linet/ipaddr/i;->f:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    iput-object p7, p0, Linet/ipaddr/i;->g:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final applyAsInt(ZZII)Ljava/util/Iterator;
    .locals 11

    .line 1
    iget v0, p0, Linet/ipaddr/i;->a:I

    iget v1, p0, Linet/ipaddr/i;->b:I

    iget v2, p0, Linet/ipaddr/i;->c:I

    iget v3, p0, Linet/ipaddr/i;->d:I

    iget v4, p0, Linet/ipaddr/i;->e:I

    iget-object v5, p0, Linet/ipaddr/i;->f:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    iget-object v6, p0, Linet/ipaddr/i;->g:Ljava/lang/Integer;

    move v7, p1

    move v8, p2

    move v9, p3

    move v10, p4

    invoke-static/range {v0 .. v10}, Linet/ipaddr/IPAddressSegment;->f(IIIIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
