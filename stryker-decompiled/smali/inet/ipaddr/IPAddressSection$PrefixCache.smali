.class public Linet/ipaddr/IPAddressSection$PrefixCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/IPAddressSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefixCache"
.end annotation


# instance fields
.field private cachedEquivalentPrefix:Ljava/lang/Integer;

.field private cachedIsSinglePrefixBlock:Ljava/lang/Boolean;

.field private cachedMinPrefix:Ljava/lang/Integer;

.field private hostMaskPrefixLen:Ljava/lang/Integer;

.field private networkMaskPrefixLen:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->cachedMinPrefix:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$002(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->cachedMinPrefix:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$100(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->cachedIsSinglePrefixBlock:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$102(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->cachedIsSinglePrefixBlock:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static synthetic access$200(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->cachedEquivalentPrefix:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$202(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->cachedEquivalentPrefix:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$300(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->networkMaskPrefixLen:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$302(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->networkMaskPrefixLen:Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$400(Linet/ipaddr/IPAddressSection$PrefixCache;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->hostMaskPrefixLen:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$402(Linet/ipaddr/IPAddressSection$PrefixCache;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/IPAddressSection$PrefixCache;->hostMaskPrefixLen:Ljava/lang/Integer;

    return-object p1
.end method
