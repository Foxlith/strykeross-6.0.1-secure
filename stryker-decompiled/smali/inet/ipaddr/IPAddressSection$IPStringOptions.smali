.class public Linet/ipaddr/IPAddressSection$IPStringOptions;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPStringOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/IPAddressSection$IPStringOptions$Builder;
    }
.end annotation


# instance fields
.field public final addrSuffix:Ljava/lang/String;

.field public final wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

.field public final zoneSeparator:C


# direct methods
.method public constructor <init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;CLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 11

    move-object v10, p0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-direct/range {v0 .. v9}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions;-><init>(IZLinet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, p9

    iput-object v0, v10, Linet/ipaddr/IPAddressSection$IPStringOptions;->addrSuffix:Ljava/lang/String;

    move-object v0, p3

    iput-object v0, v10, Linet/ipaddr/IPAddressSection$IPStringOptions;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    move/from16 v0, p7

    iput-char v0, v10, Linet/ipaddr/IPAddressSection$IPStringOptions;->zoneSeparator:C

    return-void
.end method
