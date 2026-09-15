.class public final synthetic Linet/ipaddr/mac/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Linet/ipaddr/mac/b;->a:J

    iput-boolean p3, p0, Linet/ipaddr/mac/b;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/mac/b;->b:Z

    check-cast p1, Linet/ipaddr/Address;

    iget-wide v1, p0, Linet/ipaddr/mac/b;->a:J

    invoke-static {v1, v2, v0, p1}, Linet/ipaddr/mac/MACAddress;->e(JZLinet/ipaddr/Address;)Linet/ipaddr/AddressSection;

    move-result-object p1

    return-object p1
.end method
