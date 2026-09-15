.class public Linet/ipaddr/format/util/sql/SQLStringMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "P::",
        "Linet/ipaddr/format/util/IPAddressStringWriter<",
        "TT;>;S:",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "TT;TP;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isEntireAddress:Z

.field protected final networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final translator:Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;


# direct methods
.method public constructor <init>(Linet/ipaddr/format/util/IPAddressPartConfiguredString;ZLinet/ipaddr/format/util/sql/IPAddressSQLTranslator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z",
            "Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    iput-object p3, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->translator:Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;

    iput-boolean p2, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->isEntireAddress:Z

    invoke-virtual {p1}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;->setNetwork(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public boundSeparatorCount(Ljava/lang/StringBuilder;Ljava/lang/String;CI)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->translator:Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;

    invoke-interface {v0, p1, p2, p3, p4}, Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;->boundSeparatorCount(Ljava/lang/StringBuilder;Ljava/lang/String;CI)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getSQLCondition(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 7

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->isEntireAddress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, v6}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->matchString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSegmentSeparator()C

    move-result v4

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->networkString:Linet/ipaddr/format/util/IPAddressPartConfiguredString;

    invoke-virtual {v0}, Linet/ipaddr/format/util/IPAddressPartConfiguredString;->getTrailingSeparatorCount()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->matchSubString(Ljava/lang/StringBuilder;Ljava/lang/String;CILjava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public matchSeparatorCount(Ljava/lang/StringBuilder;Ljava/lang/String;CI)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->translator:Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;

    invoke-interface {v0, p1, p2, p3, p4}, Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;->matchSeparatorCount(Ljava/lang/StringBuilder;Ljava/lang/String;CI)Ljava/lang/StringBuilder;

    return-void
.end method

.method public matchString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->translator:Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;

    invoke-interface {v0, p1, p2, p3}, Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;->matchString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public matchSubString(Ljava/lang/StringBuilder;Ljava/lang/String;CILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Linet/ipaddr/format/util/sql/SQLStringMatcher;->translator:Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Linet/ipaddr/format/util/sql/IPAddressSQLTranslator;->matchSubString(Ljava/lang/StringBuilder;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COLUMN"

    invoke-virtual {p0, v0, v1}, Linet/ipaddr/format/util/sql/SQLStringMatcher;->getSQLCondition(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
