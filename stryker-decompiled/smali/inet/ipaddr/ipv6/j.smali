.class public final synthetic Linet/ipaddr/ipv6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Linet/ipaddr/ipv6/IPv6AddressSection;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(IILinet/ipaddr/ipv6/IPv6AddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Linet/ipaddr/ipv6/j;->a:Linet/ipaddr/ipv6/IPv6AddressSection;

    iput p1, p0, Linet/ipaddr/ipv6/j;->b:I

    iput p2, p0, Linet/ipaddr/ipv6/j;->c:I

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/ipv6/j;->b:I

    iget v1, p0, Linet/ipaddr/ipv6/j;->c:I

    iget-object v2, p0, Linet/ipaddr/ipv6/j;->a:Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v2, v0, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->P(Linet/ipaddr/ipv6/IPv6AddressSection;III)I

    move-result p1

    return p1
.end method
