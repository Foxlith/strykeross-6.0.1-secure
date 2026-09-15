.class public abstract Lcom/stryker/terminal/bridge/ISessionConnection$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/bridge/ISessionConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/bridge/ISessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/bridge/ISessionConnection$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.stryker.terminal.bridge.ISessionConnection"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/stryker/terminal/bridge/ISessionConnection;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.stryker.terminal.bridge.ISessionConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/stryker/terminal/bridge/ISessionConnection;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/stryker/terminal/bridge/ISessionConnection;

    return-object v0

    :cond_1
    new-instance v0, Lcom/stryker/terminal/bridge/ISessionConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/bridge/ISessionConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "com.stryker.terminal.bridge.ISessionConnection"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
