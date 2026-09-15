.class public final synthetic Linet/ipaddr/format/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/BiFunction;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/Address;Ljava/util/function/BiFunction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Linet/ipaddr/format/util/c;->a:I

    iput-object p2, p0, Linet/ipaddr/format/util/c;->b:Ljava/util/function/BiFunction;

    iput-object p1, p0, Linet/ipaddr/format/util/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Linet/ipaddr/format/util/c;->a:I

    iput-object p1, p0, Linet/ipaddr/format/util/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Linet/ipaddr/format/util/c;->b:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Linet/ipaddr/format/util/c;->a:I

    iget-object v1, p0, Linet/ipaddr/format/util/c;->b:Ljava/util/function/BiFunction;

    iget-object v2, p0, Linet/ipaddr/format/util/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1, p1}, Linet/ipaddr/format/util/AddressTrieMap;->e(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast v2, Linet/ipaddr/Address;

    invoke-static {v1, v2, p1}, Linet/ipaddr/format/util/AddressTrieMap;->f(Ljava/util/function/BiFunction;Linet/ipaddr/Address;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
