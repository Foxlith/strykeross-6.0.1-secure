.class public abstract Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/IPAddressPartStringSubCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "IPAddressConfigurableStringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TS;>;"
    }
.end annotation


# instance fields
.field protected iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TP;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Linet/ipaddr/format/util/IPAddressPartStringSubCollection;


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;->this$0:Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->params:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
