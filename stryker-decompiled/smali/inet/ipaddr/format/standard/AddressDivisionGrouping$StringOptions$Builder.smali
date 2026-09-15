.class public Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_WILDCARDS:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;


# instance fields
.field protected addrLabel:Ljava/lang/String;

.field protected base:I

.field protected expandSegments:Z

.field protected reverse:Z

.field protected segmentStrPrefix:Ljava/lang/String;

.field protected separator:Ljava/lang/Character;

.field protected splitDigits:Z

.field protected uppercase:Z

.field protected wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    invoke-direct {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>()V

    sput-object v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->DEFAULT_WILDCARDS:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->DEFAULT_WILDCARDS:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iput-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    const-string v0, ""

    iput-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->segmentStrPrefix:Ljava/lang/String;

    iput-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->addrLabel:Ljava/lang/String;

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->base:I

    const/16 p1, 0x20

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->separator:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(IC)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->DEFAULT_WILDCARDS:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iput-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    const-string v0, ""

    iput-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->segmentStrPrefix:Ljava/lang/String;

    iput-object v0, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->addrLabel:Ljava/lang/String;

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->base:I

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->separator:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public setAddressLabel(Ljava/lang/String;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->addrLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setExpandedSegments(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->expandSegments:Z

    return-object p0
.end method

.method public setRadix(I)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->base:I

    return-object p0
.end method

.method public setReverse(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->reverse:Z

    return-object p0
.end method

.method public setSegmentStrPrefix(Ljava/lang/String;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->segmentStrPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setSeparator(Ljava/lang/Character;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->separator:Ljava/lang/Character;

    return-object p0
.end method

.method public setSplitDigits(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->splitDigits:Z

    return-object p0
.end method

.method public setUppercase(Z)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->uppercase:Z

    return-object p0
.end method

.method public setWildcards(Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    return-object p0
.end method

.method public toOptions()Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
    .locals 11

    new-instance v10, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;

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

    invoke-direct/range {v0 .. v9}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;-><init>(IZLinet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;ZZZ)V

    return-object v10
.end method
