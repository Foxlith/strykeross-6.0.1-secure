.class Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linet/ipaddr/format/validate/ParsedIPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedIPAddresses"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linet/ipaddr/IPAddress;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected address:Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected hostAddress:Linet/ipaddr/IPAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p1}, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;-><init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V

    return-void
.end method

.method public constructor <init>(Linet/ipaddr/IPAddress;Linet/ipaddr/IPAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->address:Linet/ipaddr/IPAddress;

    iput-object p2, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->hostAddress:Linet/ipaddr/IPAddress;

    return-void
.end method


# virtual methods
.method public getAddress()Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->address:Linet/ipaddr/IPAddress;

    return-object v0
.end method

.method public getHostAddress()Linet/ipaddr/IPAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Linet/ipaddr/format/validate/ParsedIPAddress$CachedIPAddresses;->hostAddress:Linet/ipaddr/IPAddress;

    return-object v0
.end method
