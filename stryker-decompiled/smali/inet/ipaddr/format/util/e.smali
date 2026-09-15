.class public final synthetic Linet/ipaddr/format/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/util/function/Supplier;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/e;->a:Ljava/util/function/Supplier;

    iput-boolean p2, p0, Linet/ipaddr/format/util/e;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/e;->a:Ljava/util/function/Supplier;

    iget-boolean v1, p0, Linet/ipaddr/format/util/e;->b:Z

    invoke-static {v0, v1, p1}, Linet/ipaddr/format/util/AssociativeAddressTrie;->a(Ljava/util/function/Supplier;ZLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
