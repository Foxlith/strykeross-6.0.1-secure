.class Linet/ipaddr/mac/MACAddressSection$2;
.super Linet/ipaddr/format/standard/AddressDivisionGrouping;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linet/ipaddr/mac/MACAddressSection;->getDottedGrouping()Linet/ipaddr/format/standard/AddressDivisionGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linet/ipaddr/mac/MACAddressSection;

.field final synthetic val$prefLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Linet/ipaddr/mac/MACAddressSection;[Linet/ipaddr/format/standard/AddressDivision;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/mac/MACAddressSection$2;->this$0:Linet/ipaddr/mac/MACAddressSection;

    iput-object p3, p0, Linet/ipaddr/mac/MACAddressSection$2;->val$prefLength:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Linet/ipaddr/format/standard/AddressDivisionGrouping;-><init>([Linet/ipaddr/format/standard/AddressDivision;)V

    iput-object p3, p0, Linet/ipaddr/format/AddressDivisionGroupingBase;->cachedPrefixLength:Ljava/lang/Integer;

    return-void
.end method
