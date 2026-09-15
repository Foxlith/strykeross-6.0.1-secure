.class public final synthetic Linet/ipaddr/ipv4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Linet/ipaddr/ipv4/d;->a:I

    iput-object p2, p0, Linet/ipaddr/ipv4/d;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Linet/ipaddr/ipv4/d;->b:Ljava/lang/Integer;

    check-cast p1, Linet/ipaddr/Address;

    iget v1, p0, Linet/ipaddr/ipv4/d;->a:I

    invoke-static {v1, v0, p1}, Linet/ipaddr/ipv4/IPv4Address;->h(ILjava/lang/Integer;Linet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method
