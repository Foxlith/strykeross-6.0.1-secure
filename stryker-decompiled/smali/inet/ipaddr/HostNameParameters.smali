.class public Linet/ipaddr/HostNameParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linet/ipaddr/HostNameParameters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Linet/ipaddr/HostNameParameters;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ACCEPT_BRACKETED_IPV4:Z = true

.field public static final DEFAULT_ACCEPT_BRACKETED_IPV6:Z = true

.field public static final DEFAULT_ALLOW_EMPTY:Z = true

.field public static final DEFAULT_ALLOW_IP_ADDRESS:Z = true

.field public static final DEFAULT_ALLOW_PORT:Z = true

.field public static final DEFAULT_ALLOW_SERVICE:Z = true

.field public static final DEFAULT_EMPTY_IS_LOOPBACK:Z = true

.field public static final DEFAULT_EXPECT_PORT:Z = false

.field public static final DEFAULT_NORMALIZE_TO_LOWER_CASE:Z = true

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field public final addressOptions:Linet/ipaddr/IPAddressStringParameters;

.field public final allowBracketedIPv4:Z

.field public final allowBracketedIPv6:Z

.field public final allowEmpty:Z

.field public final allowIPAddress:Z

.field public final allowPort:Z

.field public final allowService:Z

.field public final emptyIsLoopback:Z

.field public final expectPort:Z

.field public final normalizeToLowercase:Z


# direct methods
.method public constructor <init>(Linet/ipaddr/IPAddressStringParameters;ZZZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Linet/ipaddr/HostNameParameters;->allowEmpty:Z

    iput-boolean p3, p0, Linet/ipaddr/HostNameParameters;->emptyIsLoopback:Z

    iput-boolean p4, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv6:Z

    iput-boolean p5, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv4:Z

    iput-boolean p6, p0, Linet/ipaddr/HostNameParameters;->normalizeToLowercase:Z

    iput-boolean p7, p0, Linet/ipaddr/HostNameParameters;->allowIPAddress:Z

    iput-boolean p8, p0, Linet/ipaddr/HostNameParameters;->allowPort:Z

    iput-boolean p9, p0, Linet/ipaddr/HostNameParameters;->expectPort:Z

    iput-boolean p10, p0, Linet/ipaddr/HostNameParameters;->allowService:Z

    iput-object p1, p0, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    return-void
.end method


# virtual methods
.method public clone()Linet/ipaddr/HostNameParameters;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linet/ipaddr/HostNameParameters;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Linet/ipaddr/HostNameParameters;->clone()Linet/ipaddr/HostNameParameters;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Linet/ipaddr/HostNameParameters;)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowEmpty:Z

    iget-boolean v1, p1, Linet/ipaddr/HostNameParameters;->allowEmpty:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv6:Z

    iget-boolean v1, p1, Linet/ipaddr/HostNameParameters;->allowBracketedIPv6:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv4:Z

    iget-boolean v1, p1, Linet/ipaddr/HostNameParameters;->allowBracketedIPv4:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->normalizeToLowercase:Z

    iget-boolean v1, p1, Linet/ipaddr/HostNameParameters;->normalizeToLowercase:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowIPAddress:Z

    iget-boolean v1, p1, Linet/ipaddr/HostNameParameters;->allowIPAddress:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowPort:Z

    iget-boolean v1, p1, Linet/ipaddr/HostNameParameters;->allowPort:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->expectPort:Z

    iget-boolean v1, p1, Linet/ipaddr/HostNameParameters;->expectPort:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowService:Z

    iget-boolean v1, p1, Linet/ipaddr/HostNameParameters;->allowService:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    iget-object p1, p1, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressStringParameters;->compareTo(Linet/ipaddr/IPAddressStringParameters;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Linet/ipaddr/HostNameParameters;

    invoke-virtual {p0, p1}, Linet/ipaddr/HostNameParameters;->compareTo(Linet/ipaddr/HostNameParameters;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Linet/ipaddr/HostNameParameters;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Linet/ipaddr/HostNameParameters;

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowEmpty:Z

    iget-boolean v2, p1, Linet/ipaddr/HostNameParameters;->allowEmpty:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv6:Z

    iget-boolean v2, p1, Linet/ipaddr/HostNameParameters;->allowBracketedIPv6:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv4:Z

    iget-boolean v2, p1, Linet/ipaddr/HostNameParameters;->allowBracketedIPv4:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->normalizeToLowercase:Z

    iget-boolean v2, p1, Linet/ipaddr/HostNameParameters;->normalizeToLowercase:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowIPAddress:Z

    iget-boolean v2, p1, Linet/ipaddr/HostNameParameters;->allowIPAddress:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowPort:Z

    iget-boolean v2, p1, Linet/ipaddr/HostNameParameters;->allowPort:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->expectPort:Z

    iget-boolean v2, p1, Linet/ipaddr/HostNameParameters;->expectPort:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowService:Z

    iget-boolean v2, p1, Linet/ipaddr/HostNameParameters;->allowService:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    iget-object p1, p1, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0, p1}, Linet/ipaddr/IPAddressStringParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Linet/ipaddr/HostNameParameters;->allowIPAddress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowEmpty:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowIPAddress:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv6:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv4:Z

    if-eqz v1, :cond_3

    :cond_2
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowPort:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowService:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->expectPort:Z

    if-eqz v1, :cond_5

    :cond_4
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public toAddressOptionsBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;
    .locals 1

    iget-object v0, p0, Linet/ipaddr/HostNameParameters;->addressOptions:Linet/ipaddr/IPAddressStringParameters;

    invoke-virtual {v0}, Linet/ipaddr/IPAddressStringParameters;->toBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Linet/ipaddr/HostNameParameters$Builder;
    .locals 2

    new-instance v0, Linet/ipaddr/HostNameParameters$Builder;

    invoke-direct {v0}, Linet/ipaddr/HostNameParameters$Builder;-><init>()V

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowEmpty:Z

    invoke-static {v0, v1}, Linet/ipaddr/HostNameParameters$Builder;->access$002(Linet/ipaddr/HostNameParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->emptyIsLoopback:Z

    invoke-static {v0, v1}, Linet/ipaddr/HostNameParameters$Builder;->access$102(Linet/ipaddr/HostNameParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv4:Z

    invoke-static {v0, v1}, Linet/ipaddr/HostNameParameters$Builder;->access$202(Linet/ipaddr/HostNameParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowBracketedIPv6:Z

    invoke-static {v0, v1}, Linet/ipaddr/HostNameParameters$Builder;->access$302(Linet/ipaddr/HostNameParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->normalizeToLowercase:Z

    invoke-static {v0, v1}, Linet/ipaddr/HostNameParameters$Builder;->access$402(Linet/ipaddr/HostNameParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowIPAddress:Z

    invoke-static {v0, v1}, Linet/ipaddr/HostNameParameters$Builder;->access$502(Linet/ipaddr/HostNameParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowPort:Z

    invoke-static {v0, v1}, Linet/ipaddr/HostNameParameters$Builder;->access$602(Linet/ipaddr/HostNameParameters$Builder;Z)Z

    iget-boolean v1, p0, Linet/ipaddr/HostNameParameters;->allowService:Z

    invoke-static {v0, v1}, Linet/ipaddr/HostNameParameters$Builder;->access$702(Linet/ipaddr/HostNameParameters$Builder;Z)Z

    invoke-virtual {p0}, Linet/ipaddr/HostNameParameters;->toAddressOptionsBuilder()Linet/ipaddr/IPAddressStringParameters$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Linet/ipaddr/HostNameParameters$Builder;->access$802(Linet/ipaddr/HostNameParameters$Builder;Linet/ipaddr/IPAddressStringParameters$Builder;)Linet/ipaddr/IPAddressStringParameters$Builder;

    return-object v0
.end method
