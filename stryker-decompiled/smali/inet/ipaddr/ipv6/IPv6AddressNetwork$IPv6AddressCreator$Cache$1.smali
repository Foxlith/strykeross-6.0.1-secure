.class Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;


# direct methods
.method public constructor <init>(Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;IFZ)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache$1;->this$0:Linet/ipaddr/ipv6/IPv6AddressNetwork$IPv6AddressCreator$Cache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Linet/ipaddr/ipv6/IPv6Address$IPv6Zone;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
