.class public Linet/ipaddr/IPAddressSection$WildcardOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WildcardOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;
    }
.end annotation


# instance fields
.field public final wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

.field public final wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;->NETWORK_ONLY:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    invoke-direct {p0, v0}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;)V
    .locals 1

    .line 2
    new-instance v0, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    invoke-direct {v0}, Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;-><init>()V

    invoke-direct {p0, p1, v0}, Linet/ipaddr/IPAddressSection$WildcardOptions;-><init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$WildcardOptions;->wildcardOption:Linet/ipaddr/IPAddressSection$WildcardOptions$WildcardOption;

    iput-object p2, p0, Linet/ipaddr/IPAddressSection$WildcardOptions;->wildcards:Linet/ipaddr/format/standard/AddressDivisionGrouping$StringOptions$Wildcards;

    return-void
.end method
