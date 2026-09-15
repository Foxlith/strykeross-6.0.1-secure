.class public Linet/ipaddr/format/util/IPAddressPartStringCollection;
.super Linet/ipaddr/format/util/IPAddressPartStringCollectionBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/util/IPAddressPartStringCollection$AddressPartStringBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linet/ipaddr/format/util/IPAddressPartStringCollectionBase<",
        "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
        "Linet/ipaddr/format/util/IPAddressStringWriter<",
        "*>;",
        "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private final collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
            "**+",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "**>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollectionBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Linet/ipaddr/format/util/IPAddressPartStringCollection;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public add(Linet/ipaddr/format/util/IPAddressPartStringSubCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
            "**+",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "**>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    iget-object p1, p1, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getPart(I)Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 0

    invoke-virtual {p0, p1}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->getSubCollection(I)Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    move-result-object p1

    iget-object p1, p1, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->part:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    return-object p1
.end method

.method public getPartCount()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParts([Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)[Linet/ipaddr/format/string/IPAddressStringDivisionSeries;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollection;->getPartCount()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    add-int/lit8 v3, v1, 0x1

    iget-object v2, v2, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->part:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    aput-object v2, p1, v1

    move v1, v3

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getSubCollection(I)Linet/ipaddr/format/util/IPAddressPartStringSubCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
            "***>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    return-object p1
.end method

.method public getSubCollection(Linet/ipaddr/format/string/IPAddressStringDivisionSeries;)Linet/ipaddr/format/util/IPAddressPartStringSubCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linet/ipaddr/format/string/IPAddressStringDivisionSeries;",
            ")",
            "Linet/ipaddr/format/util/IPAddressPartStringSubCollection<",
            "***>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    iget-object v2, v1, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->part:Linet/ipaddr/format/string/IPAddressStringDivisionSeries;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Linet/ipaddr/format/util/IPAddressPartConfiguredString<",
            "**>;>;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;

    invoke-direct {v0, p0}, Linet/ipaddr/format/util/IPAddressPartStringCollection$1;-><init>(Linet/ipaddr/format/util/IPAddressPartStringCollection;)V

    return-object v0
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Linet/ipaddr/format/util/IPAddressPartStringCollection;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;

    invoke-virtual {v2}, Linet/ipaddr/format/util/IPAddressPartStringSubCollection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public bridge synthetic toStrings()[Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Linet/ipaddr/format/util/IPAddressPartStringCollectionBase;->toStrings()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
