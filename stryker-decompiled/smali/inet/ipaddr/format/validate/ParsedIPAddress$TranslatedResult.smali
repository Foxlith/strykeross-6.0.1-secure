.class abstract Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;
.super Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TranslatedResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linet/ipaddr/IPAddress;",
        "R:",
        "Linet/ipaddr/IPAddressSection;",
        ">",
        "Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field private hostSection:Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private joinAddressException:Linet/ipaddr/IncompatibleAddressException;

.field private joinHostException:Linet/ipaddr/IncompatibleAddressException;

.field private lowerSection:Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private maskException:Linet/ipaddr/IncompatibleAddressException;

.field private mixedException:Linet/ipaddr/IncompatibleAddressException;

.field private range:Linet/ipaddr/IPAddressSeqRange;

.field private rangeLower:Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private rangeUpper:Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private section:Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private series:Linet/ipaddr/format/IPAddressDivisionSeries;

.field final synthetic this$0:Linet/ipaddr/format/validate/ParsedIPAddress;

.field private upperSection:Linet/ipaddr/IPAddressSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linet/ipaddr/format/validate/ParsedIPAddress;)V
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->this$0:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->range:Linet/ipaddr/IPAddressSeqRange;

    return-object p0
.end method

.method public static synthetic access$1002(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->hostSection:Linet/ipaddr/IPAddressSection;

    return-object p1
.end method

.method public static synthetic access$102(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSeqRange;)Linet/ipaddr/IPAddressSeqRange;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->range:Linet/ipaddr/IPAddressSeqRange;

    return-object p1
.end method

.method public static synthetic access$1102(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->upperSection:Linet/ipaddr/IPAddressSection;

    return-object p1
.end method

.method public static synthetic access$200(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IPAddressSection;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->lowerSection:Linet/ipaddr/IPAddressSection;

    return-object p0
.end method

.method public static synthetic access$202(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->lowerSection:Linet/ipaddr/IPAddressSection;

    return-object p1
.end method

.method public static synthetic access$300(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/format/IPAddressDivisionSeries;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->series:Linet/ipaddr/format/IPAddressDivisionSeries;

    return-object p0
.end method

.method public static synthetic access$302(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/format/IPAddressDivisionSeries;)Linet/ipaddr/format/IPAddressDivisionSeries;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->series:Linet/ipaddr/format/IPAddressDivisionSeries;

    return-object p1
.end method

.method public static synthetic access$400(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->mixedException:Linet/ipaddr/IncompatibleAddressException;

    return-object p0
.end method

.method public static synthetic access$402(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->mixedException:Linet/ipaddr/IncompatibleAddressException;

    return-object p1
.end method

.method public static synthetic access$500(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->joinHostException:Linet/ipaddr/IncompatibleAddressException;

    return-object p0
.end method

.method public static synthetic access$502(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->joinHostException:Linet/ipaddr/IncompatibleAddressException;

    return-object p1
.end method

.method public static synthetic access$600(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->maskException:Linet/ipaddr/IncompatibleAddressException;

    return-object p0
.end method

.method public static synthetic access$602(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->maskException:Linet/ipaddr/IncompatibleAddressException;

    return-object p1
.end method

.method public static synthetic access$700(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;)Linet/ipaddr/IncompatibleAddressException;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->joinAddressException:Linet/ipaddr/IncompatibleAddressException;

    return-object p0
.end method

.method public static synthetic access$702(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IncompatibleAddressException;)Linet/ipaddr/IncompatibleAddressException;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->joinAddressException:Linet/ipaddr/IncompatibleAddressException;

    return-object p1
.end method

.method public static synthetic access$902(Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;Linet/ipaddr/IPAddressSection;)Linet/ipaddr/IPAddressSection;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->section:Linet/ipaddr/IPAddressSection;

    return-object p1
.end method

.method private getZone()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->this$0:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v0}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v0

    invoke-virtual {v0}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getZone()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createRange()Linet/ipaddr/IPAddressSeqRange;
    .locals 4

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getCreator()Linet/ipaddr/format/validate/ParsedAddressCreator;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->lowerSection:Linet/ipaddr/IPAddressSection;

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getZone()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddress;

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->rangeLower:Linet/ipaddr/IPAddress;

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->upperSection:Linet/ipaddr/IPAddressSection;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getCreator()Linet/ipaddr/format/validate/ParsedAddressCreator;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->upperSection:Linet/ipaddr/IPAddressSection;

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getZone()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddress;

    :goto_0
    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->rangeUpper:Linet/ipaddr/IPAddress;

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->rangeLower:Linet/ipaddr/IPAddress;

    invoke-virtual {v1, v0}, Linet/ipaddr/IPAddress;->toSequentialRange(Linet/ipaddr/IPAddress;)Linet/ipaddr/IPAddressSeqRange;

    move-result-object v0

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->range:Linet/ipaddr/IPAddressSeqRange;

    return-object v0
.end method

.method public getAddress()Linet/ipaddr/IPAddress;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->address:Linet/ipaddr/IPAddress;

    if-nez v0, :cond_1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->range:Linet/ipaddr/IPAddressSeqRange;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getCreator()Linet/ipaddr/format/validate/ParsedAddressCreator;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->section:Linet/ipaddr/IPAddressSection;

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getZone()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->this$0:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-static {v3}, Linet/ipaddr/format/validate/ParsedIPAddress;->access$000(Linet/ipaddr/format/validate/ParsedIPAddress;)Linet/ipaddr/HostIdentifierString;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;

    move-result-object v0

    :goto_0
    check-cast v0, Linet/ipaddr/IPAddress;

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->address:Linet/ipaddr/IPAddress;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getCreator()Linet/ipaddr/format/validate/ParsedAddressCreator;

    move-result-object v1

    iget-object v2, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->section:Linet/ipaddr/IPAddressSection;

    invoke-direct {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getZone()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->this$0:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-static {v0}, Linet/ipaddr/format/validate/ParsedIPAddress;->access$000(Linet/ipaddr/format/validate/ParsedIPAddress;)Linet/ipaddr/HostIdentifierString;

    move-result-object v4

    iget-object v5, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->rangeLower:Linet/ipaddr/IPAddress;

    iget-object v6, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->rangeUpper:Linet/ipaddr/IPAddress;

    invoke-virtual/range {v1 .. v6}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;Linet/ipaddr/Address;Linet/ipaddr/Address;)Linet/ipaddr/Address;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->address:Linet/ipaddr/IPAddress;

    return-object v0
.end method

.method public abstract getCreator()Linet/ipaddr/format/validate/ParsedAddressCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linet/ipaddr/format/validate/ParsedAddressCreator<",
            "TT;TR;**>;"
        }
    .end annotation
.end method

.method public getHostAddress()Linet/ipaddr/IPAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->hostSection:Linet/ipaddr/IPAddressSection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getAddress()Linet/ipaddr/IPAddress;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->hostAddress:Linet/ipaddr/IPAddress;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getCreator()Linet/ipaddr/format/validate/ParsedAddressCreator;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->hostSection:Linet/ipaddr/IPAddressSection;

    iget-object v2, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->this$0:Linet/ipaddr/format/validate/ParsedIPAddress;

    invoke-virtual {v2}, Linet/ipaddr/format/validate/IPAddressParseData;->getQualifier()Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;

    move-result-object v2

    invoke-virtual {v2}, Linet/ipaddr/format/validate/ParsedHostIdentifierStringQualifier;->getZone()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddress;

    iput-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->hostAddress:Linet/ipaddr/IPAddress;

    :cond_1
    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->hostAddress:Linet/ipaddr/IPAddress;

    return-object v0
.end method

.method public getSection()Linet/ipaddr/IPAddressSection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->section:Linet/ipaddr/IPAddressSection;

    return-object v0
.end method

.method public getValForMask()Linet/ipaddr/IPAddress;
    .locals 3

    invoke-virtual {p0}, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->getCreator()Linet/ipaddr/format/validate/ParsedAddressCreator;

    move-result-object v0

    iget-object v1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->lowerSection:Linet/ipaddr/IPAddressSection;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Linet/ipaddr/format/validate/ParsedAddressCreator;->createAddressInternal(Linet/ipaddr/AddressSection;Ljava/lang/CharSequence;Linet/ipaddr/HostIdentifierString;)Linet/ipaddr/Address;

    move-result-object v0

    check-cast v0, Linet/ipaddr/IPAddress;

    return-object v0
.end method

.method public withoutAddressException()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->joinAddressException:Linet/ipaddr/IncompatibleAddressException;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->mixedException:Linet/ipaddr/IncompatibleAddressException;

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->maskException:Linet/ipaddr/IncompatibleAddressException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withoutAddresses()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->section:Linet/ipaddr/IPAddressSection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withoutGrouping()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->series:Linet/ipaddr/format/IPAddressDivisionSeries;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withoutRange()Z
    .locals 1

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$TranslatedResult;->range:Linet/ipaddr/IPAddressSeqRange;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
