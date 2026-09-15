.class public Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions;
.super Linet/ipaddr/IPAddressSection$IPStringOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/ipv4/IPv4AddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPv4StringOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/ipv4/IPv4AddressSection$IPv4StringOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 13

    const/16 v7, 0x20

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Linet/ipaddr/IPAddressSection$IPStringOptions;-><init>(IZLinet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;Ljava/lang/String;Ljava/lang/Character;CLjava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method
