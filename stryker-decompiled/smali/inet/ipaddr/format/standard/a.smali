.class public final synthetic Linet/ipaddr/format/standard/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Linet/ipaddr/AddressSection;


# direct methods
.method public synthetic constructor <init>(ZIIILinet/ipaddr/AddressSection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Linet/ipaddr/format/standard/a;->a:Z

    iput p2, p0, Linet/ipaddr/format/standard/a;->b:I

    iput p3, p0, Linet/ipaddr/format/standard/a;->c:I

    iput p4, p0, Linet/ipaddr/format/standard/a;->d:I

    iput-object p5, p0, Linet/ipaddr/format/standard/a;->e:Linet/ipaddr/AddressSection;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/format/standard/a;->a:Z

    iget v1, p0, Linet/ipaddr/format/standard/a;->b:I

    iget v2, p0, Linet/ipaddr/format/standard/a;->c:I

    iget v3, p0, Linet/ipaddr/format/standard/a;->d:I

    iget-object v4, p0, Linet/ipaddr/format/standard/a;->e:Linet/ipaddr/AddressSection;

    move v5, p1

    invoke-static/range {v0 .. v5}, Linet/ipaddr/format/standard/AddressDivisionGrouping;->d(ZIIILinet/ipaddr/AddressSection;I)I

    move-result p1

    return p1
.end method
