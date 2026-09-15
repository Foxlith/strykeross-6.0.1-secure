.class public Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wildcards"
.end annotation


# instance fields
.field public final rangeSeparator:Ljava/lang/String;

.field public final singleWildcard:Ljava/lang/String;

.field public final wildcard:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    sget-object v1, Linet/ipaddr/Address;->SEGMENT_WILDCARD_STR:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Linet/ipaddr/Address;->RANGE_SEPARATOR_STR:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->rangeSeparator:Ljava/lang/String;

    iput-object p2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->wildcard:Ljava/lang/String;

    iput-object p3, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->singleWildcard:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "range separator: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->rangeSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nwildcard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->wildcard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nsingle wildcard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;->singleWildcard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
