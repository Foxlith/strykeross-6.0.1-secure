.class public Linet/ipaddr/format/standard/AddressDivisionGrouping$SectionCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/standard/AddressDivisionGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Linet/ipaddr/AddressSegmentSeries;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public lower:Linet/ipaddr/AddressSegmentSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public lowerNonZeroHost:Linet/ipaddr/AddressSegmentSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public lowerNonZeroHostIsNull:Z

.field public upper:Linet/ipaddr/AddressSegmentSeries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
