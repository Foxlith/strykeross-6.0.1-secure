.class Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/standard/IPAddressDivisionGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeCache"
.end annotation


# static fields
.field static final MAX_DIVISION_COUNT:I = 0x8

.field static final NO_ZEROS:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

.field static PRELOAD_CACHE:Z


# instance fields
.field nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

.field parent:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

.field range:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

.field zeroRanges:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    const/4 v1, 0x0

    new-array v1, v1, [Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    invoke-direct {v0, v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;-><init>([Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;)V

    sput-object v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->NO_ZEROS:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;-><init>(Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;ILinet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;)V

    sget-object v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->NO_ZEROS:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    iput-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->zeroRanges:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    return-void
.end method

.method private constructor <init>(Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;ILinet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    new-array v0, p2, [[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    iput-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    sub-int v2, p2, v0

    new-array v2, v2, [Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->parent:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    iput-object p3, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->range:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    return-void
.end method

.method private get([Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;I)V
    .locals 1

    .line 2
    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->range:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    aput-object v0, p1, p2

    if-lez p2, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->parent:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    invoke-direct {v0, p1, p2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->get([Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addRange(III)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;
    .locals 7

    sub-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p3, -0x1

    iget-object v2, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x8

    rsub-int/lit8 p2, p2, 0x8

    sget-object v3, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->ZEROS_CACHE:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    if-ne p0, v3, :cond_0

    new-instance v2, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    invoke-direct {v2, p1, p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;-><init>(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v4, v3, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    aget-object v4, v4, p1

    aget-object v5, v4, v1

    if-nez v5, :cond_1

    new-instance v5, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    new-instance v6, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    invoke-direct {v6, p1, p3}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;-><init>(II)V

    invoke-direct {v5, v3, v2, v6}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;-><init>(Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;ILinet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;)V

    aput-object v5, v4, v1

    move-object v2, v6

    goto :goto_0

    :cond_1
    iget-object v2, v5, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->range:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    :goto_0
    iget-object p1, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    aget-object p1, p1, v0

    new-instance p3, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    invoke-direct {p3, p0, p2, v2}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;-><init>(Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;ILinet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;)V

    aput-object p3, p1, v1

    move-object v2, p3

    :cond_2
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-object v2
.end method

.method public get()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
    .locals 3

    .line 1
    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->zeroRanges:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    if-nez v0, :cond_2

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->parent:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->parent:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    goto :goto_0

    :cond_0
    new-array v0, v1, [Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->range:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    aput-object v2, v0, v1

    if-lez v1, :cond_1

    iget-object v2, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->parent:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    invoke-direct {v2, v0, v1}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->get([Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;I)V

    :cond_1
    new-instance v1, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    invoke-direct {v1, v0}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;-><init>([Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;)V

    iput-object v1, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->zeroRanges:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public preloadCache(I)V
    .locals 7

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    move v3, v0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    new-instance v4, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    add-int v5, v1, p1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v4, v5, v6}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;-><init>(II)V

    goto :goto_2

    :cond_0
    sget-object v4, Linet/ipaddr/format/standard/IPAddressDivisionGrouping;->ZEROS_CACHE:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    iget-object v4, v4, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    add-int v5, v1, p1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    aget-object v4, v4, v3

    iget-object v4, v4, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->range:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    :goto_2
    add-int v5, v1, p1

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x3

    rsub-int/lit8 v5, v5, 0x8

    new-instance v6, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    invoke-direct {v6, p0, v5, v4}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;-><init>(Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;ILinet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;)V

    invoke-virtual {v6}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->get()Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_3
    iget-object v1, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->nextRange:[[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;

    array-length v2, v1

    if-ge p1, v2, :cond_4

    aget-object v1, v1, p1

    move v2, v0

    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    iget-object v4, v3, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->range:Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    iget v5, v4, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;->index:I

    iget v4, v4, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;->length:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeCache;->preloadCache(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
