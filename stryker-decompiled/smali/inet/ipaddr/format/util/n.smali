.class public final synthetic Linet/ipaddr/format/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Ljava/util/TreeMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/TreeMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/n;->a:Ljava/util/function/Function;

    iput-object p2, p0, Linet/ipaddr/format/util/n;->b:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/n;->a:Ljava/util/function/Function;

    iget-object v1, p0, Linet/ipaddr/format/util/n;->b:Ljava/util/TreeMap;

    invoke-static {v0, v1, p1}, Linet/ipaddr/format/util/Partition;->a(Ljava/util/function/Function;Ljava/util/TreeMap;Ljava/lang/Object;)V

    return-void
.end method
