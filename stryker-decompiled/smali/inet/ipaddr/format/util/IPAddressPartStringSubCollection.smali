.class public abstract Linet/ipaddr/format/util/IPAddressPartStringSubCollection;
.super Linet/ipaddr/format/util/IPAddressPartStringCollectionBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/IPAddressPartStringSubCollection$IPAddressConfigurableStringIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "P::",
        "Linet/ipaddr/format/util/IPAddressStringWriter<",
        "TT;>;S:",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "TT;TP;>;>",
        "Linet/ipaddr/format/util/IPAddressPartStringCollectionBase<",
        "TT;TP;TS;>;"
    }
.end annotation


# instance fields
.field protected params:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TP;>;"
        }
    .end annotation
.end field

.field public final part:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollectionBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->params:Ljava/util/ArrayList;

    iput-object p1, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->part:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    return-void
.end method


# virtual methods
.method public add(Linet/ipaddr/format/util/IPAddressStringWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->params:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getParamCount()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->params:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getParams([Linet/ipaddr/format/util/IPAddressStringWriter;)[Linet/ipaddr/format/util/IPAddressStringWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TP;)[TP;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->params:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/format/util/IPAddressStringWriter;

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->params:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toStrings()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollectionBase;->toStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
