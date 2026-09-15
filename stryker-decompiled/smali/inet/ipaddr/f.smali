.class public final synthetic Linet/ipaddr/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Linet/ipaddr/IPAddressSection$SegFunction;

.field public final synthetic b:Linet/ipaddr/IPAddressSection;

.field public final synthetic c:Linet/ipaddr/IPAddressSection;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/f;->a:Linet/ipaddr/IPAddressSection$SegFunction;

    iput-object p2, p0, Linet/ipaddr/f;->b:Linet/ipaddr/IPAddressSection;

    iput-object p3, p0, Linet/ipaddr/f;->c:Linet/ipaddr/IPAddressSection;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Linet/ipaddr/f;->b:Linet/ipaddr/IPAddressSection;

    iget-object v1, p0, Linet/ipaddr/f;->c:Linet/ipaddr/IPAddressSection;

    iget-object v2, p0, Linet/ipaddr/f;->a:Linet/ipaddr/IPAddressSection$SegFunction;

    invoke-static {v2, v0, v1, p1}, Linet/ipaddr/IPAddressSection;->g(Linet/ipaddr/IPAddressSection$SegFunction;Linet/ipaddr/IPAddressSection;Linet/ipaddr/IPAddressSection;I)I

    move-result p1

    return p1
.end method
