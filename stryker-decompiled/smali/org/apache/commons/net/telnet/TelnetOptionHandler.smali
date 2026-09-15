.class public abstract Lorg/apache/commons/net/telnet/TelnetOptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acceptLocal:Z

.field private acceptRemote:Z

.field private doFlag:Z

.field private initialLocal:Z

.field private initialRemote:Z

.field private optionCode:I

.field private willFlag:Z


# direct methods
.method public constructor <init>(IZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    iput-boolean p2, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    iput-boolean p3, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    iput-boolean p4, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    iput-boolean p5, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return-void
.end method


# virtual methods
.method public answerSubnegotiation([II)[I
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAcceptLocal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    return v0
.end method

.method public getAcceptRemote()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return v0
.end method

.method public getDo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    return v0
.end method

.method public getInitLocal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    return v0
.end method

.method public getInitRemote()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    return v0
.end method

.method public getOptionCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->optionCode:I

    return v0
.end method

.method public getWill()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    return v0
.end method

.method public setAcceptLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptLocal:Z

    return-void
.end method

.method public setAcceptRemote(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->acceptRemote:Z

    return-void
.end method

.method public setDo(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->doFlag:Z

    return-void
.end method

.method public setInitLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialLocal:Z

    return-void
.end method

.method public setInitRemote(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->initialRemote:Z

    return-void
.end method

.method public setWill(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->willFlag:Z

    return-void
.end method

.method public startSubnegotiationLocal()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startSubnegotiationRemote()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
