.class public final synthetic Linet/ipaddr/mac/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Linet/ipaddr/Address$SegmentValueProvider;

.field public final synthetic b:Linet/ipaddr/Address$SegmentValueProvider;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/mac/a;->a:Linet/ipaddr/Address$SegmentValueProvider;

    iput-object p2, p0, Linet/ipaddr/mac/a;->b:Linet/ipaddr/Address$SegmentValueProvider;

    iput-boolean p3, p0, Linet/ipaddr/mac/a;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/mac/a;->c:Z

    check-cast p1, Linet/ipaddr/Address;

    iget-object v1, p0, Linet/ipaddr/mac/a;->a:Linet/ipaddr/Address$SegmentValueProvider;

    iget-object v2, p0, Linet/ipaddr/mac/a;->b:Linet/ipaddr/Address$SegmentValueProvider;

    invoke-static {v1, v2, v0, p1}, Linet/ipaddr/mac/MACAddress;->a(Linet/ipaddr/Address$SegmentValueProvider;Linet/ipaddr/Address$SegmentValueProvider;ZLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method
