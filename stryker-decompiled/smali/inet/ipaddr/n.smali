.class public final synthetic Linet/ipaddr/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Linet/ipaddr/IPAddressSection$SegFunction;

.field public final synthetic e:Linet/ipaddr/IPAddressSegment;


# direct methods
.method public synthetic constructor <init>([ZILjava/util/Iterator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSegment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/n;->a:[Z

    iput p2, p0, Linet/ipaddr/n;->b:I

    iput-object p3, p0, Linet/ipaddr/n;->c:Ljava/util/Iterator;

    iput-object p4, p0, Linet/ipaddr/n;->d:Linet/ipaddr/IPAddressSection$SegFunction;

    iput-object p5, p0, Linet/ipaddr/n;->e:Linet/ipaddr/IPAddressSegment;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Linet/ipaddr/n;->d:Linet/ipaddr/IPAddressSection$SegFunction;

    iget-object v1, p0, Linet/ipaddr/n;->e:Linet/ipaddr/IPAddressSegment;

    iget-object v2, p0, Linet/ipaddr/n;->a:[Z

    iget v3, p0, Linet/ipaddr/n;->b:I

    iget-object v4, p0, Linet/ipaddr/n;->c:Ljava/util/Iterator;

    invoke-static {v2, v3, v4, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->d([ZILjava/util/Iterator;Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSegment;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
