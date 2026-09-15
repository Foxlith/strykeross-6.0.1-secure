.class abstract Linet/ipaddr/format/util/IPAddressPartStringCollectionBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "P::",
        "Linet/ipaddr/format/util/IPAddressStringWriter<",
        "*>;S:",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "**>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract size()I
.end method

.method public toStrings()[Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollectionBase;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
