.class public final synthetic Linet/ipaddr/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/function/Supplier;

.field public final synthetic d:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ILinet/ipaddr/n;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/o;->a:Ljava/util/ArrayList;

    iput p2, p0, Linet/ipaddr/o;->b:I

    iput-object p3, p0, Linet/ipaddr/o;->c:Ljava/util/function/Supplier;

    iput-object p4, p0, Linet/ipaddr/o;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Linet/ipaddr/o;->c:Ljava/util/function/Supplier;

    iget-object v1, p0, Linet/ipaddr/o;->d:Ljava/util/Iterator;

    iget-object v2, p0, Linet/ipaddr/o;->a:Ljava/util/ArrayList;

    iget v3, p0, Linet/ipaddr/o;->b:I

    invoke-static {v2, v3, v0, v1}, Linet/ipaddr/IPAddressSeqRange;->e(Ljava/util/ArrayList;ILjava/util/function/Supplier;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
