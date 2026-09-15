.class public abstract Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/util/IPAddressPartStringCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AddressPartStringBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "P::",
        "Linet/ipaddr/format/util/IPAddressStringWriter<",
        "TT;>;S:",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "TT;TP;>;C:",
        "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
        "TT;TP;TS;>;O:",
        "Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static MAX_BASE:I = 0x10


# instance fields
.field protected final addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final collection:Linet/ipaddr/format/util/IPAddressPartStringSubCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private done:Z

.field private leadingZeros:[[I

.field protected final options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TO;TC;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    iput-object p2, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->options:Linet/ipaddr/IPAddressSection$IPStringBuilderOptions;

    iput-object p3, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->collection:Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    return-void
.end method

.method public static getExpandableSegments(ILinet/ipaddr/format/string/IPAddressStringDivisionSeries;)[I
    .locals 6

    .line 2
    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-interface {p1, v3}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;

    move-result-object v4

    invoke-interface {v4, p0}, Linet/ipaddr/format/string/AddressStringDivision;->getDigitCount(I)I

    move-result v5

    invoke-interface {v4, p0}, Linet/ipaddr/format/string/AddressStringDivision;->getMaxDigitCount(I)I

    move-result v4

    if-ge v5, v4, :cond_0

    sub-int/2addr v4, v5

    aput v4, v1, v3

    goto :goto_1

    :cond_0
    aput v2, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static isExpandable(ILinet/ipaddr/format/string/IPAddressStringDivisionSeries;)Z
    .locals 2

    .line 2
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->isExpandableOutsideRange(ILinet/ipaddr/format/string/IPAddressStringDivisionSeries;II)Z

    move-result p0

    return p0
.end method

.method private static isExpandableOutsideRange(ILinet/ipaddr/format/string/IPAddressStringDivisionSeries;II)Z
    .locals 4

    .line 2
    add-int/2addr p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Linet/ipaddr/format/string/AddressStringDivisionSeries;->getDivisionCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lt v1, p2, :cond_0

    if-ge v1, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Linet/ipaddr/format/string/IPAddressStringDivisionSeries;->getDivision(I)Linet/ipaddr/format/string/IPAddressStringDivision;

    move-result-object v2

    invoke-interface {v2, p0}, Linet/ipaddr/format/string/AddressStringDivision;->getDigitCount(I)I

    move-result v3

    invoke-interface {v2, p0}, Linet/ipaddr/format/string/AddressStringDivision;->getMaxDigitCount(I)I

    move-result v2

    if-ge v3, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public abstract addAllVariations()V
.end method

.method public addStringParam(Linet/ipaddr/format/util/IPAddressStringWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->collection:Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    invoke-virtual {v0, p1}, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->add(Linet/ipaddr/format/util/IPAddressStringWriter;)V

    return-void
.end method

.method public getExpandableSegments(I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->leadingZeros:[[I

    if-nez v0, :cond_0

    sget v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->MAX_BASE:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[I

    iput-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->leadingZeros:[[I

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-static {p1, v1}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->getExpandableSegments(ILinet/ipaddr/format/string/IPAddressStringDivisionSeries;)[I

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    :cond_0
    aget-object v1, v0, p1

    if-nez v1, :cond_1

    iget-object v1, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-static {p1, v1}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->getExpandableSegments(ILinet/ipaddr/format/string/IPAddressStringDivisionSeries;)[I

    move-result-object v1

    aput-object v1, v0, p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getVariations()Linet/ipaddr/format/util/IPAddressPartStringSubCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-boolean v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->done:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->done:Z

    invoke-virtual {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addAllVariations()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->collection:Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    return-object v0
.end method

.method public isExpandable(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-static {p1, v0}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->isExpandable(ILinet/ipaddr/format/string/IPAddressStringDivisionSeries;)Z

    move-result p1

    return p1
.end method

.method public isExpandableOutsideRange(III)Z
    .locals 1

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->addressSection:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-static {p1, v0, p2, p3}, Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;->isExpandableOutsideRange(ILinet/ipaddr/format/string/IPAddressStringDivisionSeries;II)Z

    move-result p1

    return p1
.end method
