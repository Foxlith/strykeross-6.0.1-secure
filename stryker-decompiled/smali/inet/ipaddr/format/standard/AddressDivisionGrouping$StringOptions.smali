.class public Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
.super Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/standard/AddressDivisionGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Builder;,
        Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;
    }
.end annotation


# instance fields
.field public final addrLabel:Ljava/lang/String;

.field public final base:I

.field public final expandSegments:Z

.field public final reverse:Z

.field public final segmentStrPrefix:Ljava/lang/String;

.field public final separator:Ljava/lang/Character;

.field public final splitDigits:Z

.field public final uppercase:Z

.field public final wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;


# direct methods
.method public constructor <init>(IZLinet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0}, Linet/ipaddr/format/AddressDivisionGroupingBase$StringOptionsBase;-><init>()V

    iput-boolean p2, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->expandSegments:Z

    iput-object p3, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    iput p1, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->base:I

    if-eqz p4, :cond_1

    iput-object p4, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->segmentStrPrefix:Ljava/lang/String;

    iput-object p5, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->separator:Ljava/lang/Character;

    if-eqz p6, :cond_0

    iput-object p6, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->addrLabel:Ljava/lang/String;

    iput-boolean p7, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->reverse:Z

    iput-boolean p8, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->splitDigits:Z

    iput-boolean p9, p0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;->uppercase:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "label"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "segment str"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
