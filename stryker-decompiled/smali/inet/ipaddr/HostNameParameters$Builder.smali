.class public Linet/ipaddr/HostNameParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/HostNameParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private addressOptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

.field private allowBracketedIPv4:Z

.field private allowBracketedIPv6:Z

.field private allowEmpty:Z

.field private allowIPAddress:Z

.field private allowPort:Z

.field private allowService:Z

.field private emptyIsLoopback:Z

.field private expectPort:Z

.field private normalizeToLowercase:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Linet/ipaddr/HostNameParameters$Builder;->allowEmpty:Z

    iput-boolean v0, p0, Linet/ipaddr/HostNameParameters$Builder;->emptyIsLoopback:Z

    iput-boolean v0, p0, Linet/ipaddr/HostNameParameters$Builder;->allowBracketedIPv6:Z

    iput-boolean v0, p0, Linet/ipaddr/HostNameParameters$Builder;->allowBracketedIPv4:Z

    iput-boolean v0, p0, Linet/ipaddr/HostNameParameters$Builder;->normalizeToLowercase:Z

    iput-boolean v0, p0, Linet/ipaddr/HostNameParameters$Builder;->allowIPAddress:Z

    iput-boolean v0, p0, Linet/ipaddr/HostNameParameters$Builder;->allowPort:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Linet/ipaddr/HostNameParameters$Builder;->expectPort:Z

    iput-boolean v0, p0, Linet/ipaddr/HostNameParameters$Builder;->allowService:Z

    return-void
.end method

.method public static synthetic access$002(Linet/ipaddr/HostNameParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowEmpty:Z

    return p1
.end method

.method public static synthetic access$102(Linet/ipaddr/HostNameParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->emptyIsLoopback:Z

    return p1
.end method

.method public static synthetic access$202(Linet/ipaddr/HostNameParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowBracketedIPv4:Z

    return p1
.end method

.method public static synthetic access$302(Linet/ipaddr/HostNameParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowBracketedIPv6:Z

    return p1
.end method

.method public static synthetic access$402(Linet/ipaddr/HostNameParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->normalizeToLowercase:Z

    return p1
.end method

.method public static synthetic access$502(Linet/ipaddr/HostNameParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowIPAddress:Z

    return p1
.end method

.method public static synthetic access$602(Linet/ipaddr/HostNameParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowPort:Z

    return p1
.end method

.method public static synthetic access$702(Linet/ipaddr/HostNameParameters$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowService:Z

    return p1
.end method

.method public static synthetic access$802(Linet/ipaddr/HostNameParameters$Builder;Linet/ipaddr/IPAddressStringParameters$Builder;)Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 0

    iput-object p1, p0, Linet/ipaddr/HostNameParameters$Builder;->addressOptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object p1
.end method


# virtual methods
.method public allowBracketedIPv4(Z)Linet/ipaddr/HostNameParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowBracketedIPv4:Z

    return-object p0
.end method

.method public allowBracketedIPv6(Z)Linet/ipaddr/HostNameParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowBracketedIPv6:Z

    return-object p0
.end method

.method public allowEmpty(Z)Linet/ipaddr/HostNameParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowEmpty:Z

    return-object p0
.end method

.method public allowIPAddress(Z)Linet/ipaddr/HostNameParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowIPAddress:Z

    return-object p0
.end method

.method public allowPort(Z)Linet/ipaddr/HostNameParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowPort:Z

    return-object p0
.end method

.method public allowService(Z)Linet/ipaddr/HostNameParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->allowService:Z

    return-object p0
.end method

.method public expectPort(Z)Linet/ipaddr/HostNameParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->expectPort:Z

    return-object p0
.end method

.method public getAddressOptionsBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/HostNameParameters$Builder;->addressOptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    if-nez v0, :cond_0

    new-instance v0, Linet/ipaddr/IPAddressStringParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;-><init>()V

    iput-object v0, p0, Linet/ipaddr/HostNameParameters$Builder;->addressOptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    :cond_0
    iget-object v0, p0, Linet/ipaddr/HostNameParameters$Builder;->addressOptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    iput-object p0, v0, Linet/ipaddr/IPAddressStringParameters$Builder;->parent:Linet/ipaddr/HostNameParameters$Builder;

    return-object v0
.end method

.method public setEmptyAsLoopback(Z)Linet/ipaddr/HostNameParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->emptyIsLoopback:Z

    return-object p0
.end method

.method public setNormalizeToLowercase(Z)Linet/ipaddr/HostNameParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Linet/ipaddr/HostNameParameters$Builder;->normalizeToLowercase:Z

    return-object p0
.end method

.method public toParams()Linet/ipaddr/HostNameParameters;
    .locals 13

    iget-object v0, p0, Linet/ipaddr/HostNameParameters$Builder;->addressOptionsBuilder:Linet/ipaddr/IPAddressStringParameters$Builder;

    if-nez v0, :cond_0

    sget-object v0, Linet/ipaddr/IPAddressString;->DEFAULT_VALIDATION_OPTIONS:Linet/ipaddr/IPAddressStringParameters;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters$Builder;->toParams()Linet/ipaddr/IPAddressStringParameters;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Linet/ipaddr/HostNameParameters;

    iget-boolean v3, p0, Linet/ipaddr/HostNameParameters$Builder;->allowEmpty:Z

    iget-boolean v4, p0, Linet/ipaddr/HostNameParameters$Builder;->emptyIsLoopback:Z

    iget-boolean v8, p0, Linet/ipaddr/HostNameParameters$Builder;->allowIPAddress:Z

    const/4 v1, 0x0

    const/4 v5, 0x1

    if-eqz v8, :cond_1

    iget-boolean v6, p0, Linet/ipaddr/HostNameParameters$Builder;->allowBracketedIPv6:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    if-eqz v8, :cond_2

    iget-boolean v7, p0, Linet/ipaddr/HostNameParameters$Builder;->allowBracketedIPv4:Z

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v1

    :goto_3
    iget-boolean v9, p0, Linet/ipaddr/HostNameParameters$Builder;->normalizeToLowercase:Z

    iget-boolean v10, p0, Linet/ipaddr/HostNameParameters$Builder;->allowPort:Z

    iget-boolean v11, p0, Linet/ipaddr/HostNameParameters$Builder;->expectPort:Z

    iget-boolean v12, p0, Linet/ipaddr/HostNameParameters$Builder;->allowService:Z

    move-object v1, v0

    move v5, v6

    move v6, v7

    move v7, v9

    move v9, v10

    move v10, v11

    move v11, v12

    invoke-direct/range {v1 .. v11}, Linet/ipaddr/HostNameParameters;-><init>(Linet/ipaddr/IPAddressStringParameters;ZZZZZZZZZ)V

    return-object v0
.end method
