.class public Linet/ipaddr/mac/MACAddressSection$MACStringOptions;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/mac/MACAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MACStringOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/mac/MACAddressSection$MACStringOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(IZLinet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;-><init>(IZLinet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;ZZZ)V

    return-void
.end method
