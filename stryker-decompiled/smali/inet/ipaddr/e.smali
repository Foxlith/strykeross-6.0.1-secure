.class public final synthetic Linet/ipaddr/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Linet/ipaddr/IPAddressSection;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Linet/ipaddr/IPAddressSection;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/e;->a:Linet/ipaddr/IPAddressSection;

    iput p2, p0, Linet/ipaddr/e;->b:I

    iput p3, p0, Linet/ipaddr/e;->c:I

    iput p4, p0, Linet/ipaddr/e;->d:I

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 4

    .line 1
    iget v0, p0, Linet/ipaddr/e;->c:I

    iget v1, p0, Linet/ipaddr/e;->d:I

    iget-object v2, p0, Linet/ipaddr/e;->a:Linet/ipaddr/IPAddressSection;

    iget v3, p0, Linet/ipaddr/e;->b:I

    invoke-static {v2, v3, v0, v1, p1}, Linet/ipaddr/IPAddressSection;->m(Linet/ipaddr/IPAddressSection;IIII)I

    move-result p1

    return p1
.end method
