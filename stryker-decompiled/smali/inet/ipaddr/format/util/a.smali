.class public final synthetic Linet/ipaddr/format/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Linet/ipaddr/Address;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Linet/ipaddr/Address;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/a;->a:Ljava/util/function/Function;

    iput-object p2, p0, Linet/ipaddr/format/util/a;->b:Linet/ipaddr/Address;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/a;->a:Ljava/util/function/Function;

    iget-object v1, p0, Linet/ipaddr/format/util/a;->b:Linet/ipaddr/Address;

    invoke-static {v0, v1}, Linet/ipaddr/format/util/AddressTrieMap;->a(Ljava/util/function/Function;Linet/ipaddr/Address;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
