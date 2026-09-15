.class public final synthetic Linet/ipaddr/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linet/ipaddr/format/AddressDivisionBase$IntBinaryIteratorProvider;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

.field public final synthetic e:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Linet/ipaddr/k;->a:I

    iput p2, p0, Linet/ipaddr/k;->b:I

    iput p3, p0, Linet/ipaddr/k;->c:I

    iput-object p4, p0, Linet/ipaddr/k;->d:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    iput-object p5, p0, Linet/ipaddr/k;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final applyAsInt(ZZII)Ljava/util/Iterator;
    .locals 9

    .line 1
    iget v0, p0, Linet/ipaddr/k;->a:I

    iget v1, p0, Linet/ipaddr/k;->b:I

    iget v2, p0, Linet/ipaddr/k;->c:I

    iget-object v3, p0, Linet/ipaddr/k;->d:Linet/ipaddr/IPAddressNetwork$IPAddressCreator;

    iget-object v4, p0, Linet/ipaddr/k;->e:Ljava/lang/Integer;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Linet/ipaddr/IPAddressSegment;->a(IIILinet/ipaddr/IPAddressNetwork$IPAddressCreator;Ljava/lang/Integer;ZZII)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
