.class public Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/mac/MACAddressSection$MACStringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;-><init>(IC)V

    return-void
.end method

.method public constructor <init>(IC)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;-><init>(IC)V

    return-void
.end method


# virtual methods
.method public bridge synthetic toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;->toOptions()Linet/ipaddr/mac/MACAddressSection$MACStringOptions;

    move-result-object v0

    return-object v0
.end method

.method public toOptions()Linet/ipaddr/mac/MACAddressSection$MACStringOptions;
    .locals 11

    .line 2
    new-instance v10, Linet/ipaddr/mac/MACAddressSection$MACStringOptions;

    iget v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->base:I

    iget-boolean v2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->expandSegments:Z

    iget-object v3, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iget-object v4, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->segmentStrPrefix:Ljava/lang/String;

    iget-object v5, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->separator:Ljava/lang/Character;

    iget-object v6, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->addrLabel:Ljava/lang/String;

    iget-boolean v7, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->reverse:Z

    iget-boolean v8, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->splitDigits:Z

    iget-boolean v9, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->uppercase:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Linet/ipaddr/mac/MACAddressSection$MACStringOptions;-><init>(IZLinet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;ZZZ)V

    return-object v10
.end method
