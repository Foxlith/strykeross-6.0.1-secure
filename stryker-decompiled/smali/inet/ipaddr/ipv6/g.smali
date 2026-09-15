.class public final synthetic Linet/ipaddr/ipv6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Linet/ipaddr/ipv6/IPv6AddressSection;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/ipv6/IPv6AddressSection;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/ipv6/g;->a:Linet/ipaddr/ipv6/IPv6AddressSection;

    iput-boolean p2, p0, Linet/ipaddr/ipv6/g;->b:Z

    iput p3, p0, Linet/ipaddr/ipv6/g;->c:I

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/ipv6/g;->b:Z

    iget v1, p0, Linet/ipaddr/ipv6/g;->c:I

    iget-object v2, p0, Linet/ipaddr/ipv6/g;->a:Linet/ipaddr/ipv6/IPv6AddressSection;

    invoke-static {v2, v0, v1, p1}, Linet/ipaddr/ipv6/IPv6AddressSection;->t0(Linet/ipaddr/ipv6/IPv6AddressSection;ZII)I

    move-result p1

    return p1
.end method
