.class public Linet/ipaddr/format/util/IPAddressPartConfiguredString;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "P::",
        "Linet/ipaddr/format/util/IPAddressStringWriter<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected string:Ljava/lang/String;

.field public final stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/format/util/IPAddressStringWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TP;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    iput-object p1, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    return-void
.end method


# virtual methods
.method public getNetworkStringMatcher(ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)Linet/ipaddr/format/util/sql/SQLStringMatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "TT;TP;>;>(Z",
            "Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;",
            ")",
            "Linet/ipaddr/format/util/sql/SQLStringMatcher<",
            "TT;TP;TS;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/sql/SQLStringMatcher;

    invoke-direct {v0, p0, p1, p2}, Linet/ipaddr/format/util/sql/SQLStringMatcher;-><init>(Linet/ipaddr/format/util/IPAddressPartConfiguredString;ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-interface {v0, v1}, Linet/ipaddr/format/util/IPAddressStringWriter;->toString(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->string:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getTrailingSegmentSeparator()C
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    invoke-interface {v0}, Linet/ipaddr/format/util/IPAddressStringWriter;->getTrailingSegmentSeparator()C

    move-result v0

    return v0
.end method

.method public getTrailingSeparatorCount()I
    .locals 2

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->stringParams:Linet/ipaddr/format/util/IPAddressStringWriter;

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->addr:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-interface {v0, v1}, Linet/ipaddr/format/util/IPAddressStringWriter;->getTrailingSeparatorCount(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
