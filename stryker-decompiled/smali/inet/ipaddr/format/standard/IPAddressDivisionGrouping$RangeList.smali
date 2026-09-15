.class public Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/standard/IPAddressDivisionGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeList"
.end annotation


# instance fields
.field final ranges:[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;


# direct methods
.method public constructor <init>([Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->ranges:[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    return-void
.end method


# virtual methods
.method public getRange(I)Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->ranges:[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->ranges:[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/standard/IPAddressDivisionGrouping$RangeList;->ranges:[Linet/ipaddr/format/standard/IPAddressDivisionGrouping$Range;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
