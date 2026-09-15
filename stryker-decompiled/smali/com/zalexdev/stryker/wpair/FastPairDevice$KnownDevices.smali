.class public final Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/FastPairDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KnownDevices"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;
    }
.end annotation


# static fields
.field private static final DEVICES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Pixel Buds Pro 2"

    const-string v3, "Google"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "30018E"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "WF-1000XM4"

    const-string v3, "Sony"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "CD8256"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "WH-1000XM5"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "0E30C3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "WH-1000XM6"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "D5BC6B"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "LinkBuds S"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "821F66"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Tune Buds"

    const-string v3, "JBL"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "F52494"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Live Pro 2"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "718FA4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Tune Beam"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "D446A7"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Soundcore Liberty 4"

    const-string v3, "Anker"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "9D3F8A"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Soundcore Liberty 4 NC"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "F0B77F"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Ear (a)"

    const-string v3, "Nothing"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "D0A72C"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Nord Buds 3 Pro"

    const-string v3, "OnePlus"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "D97EBA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Redmi Buds 5 Pro"

    const-string v3, "Xiaomi"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "AE3989"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Elite 8 Active"

    const-string v3, "Jabra"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "D446F9"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Galaxy Buds2 Pro"

    const-string v3, "Samsung"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "0082DA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Galaxy Buds FE"

    invoke-direct {v1, v2, v3, v5}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "00FA72"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "QuietComfort Earbuds II"

    const-string v3, "Bose"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "F00002"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    const-string v2, "Beats Studio Buds +"

    const-string v3, "Beats"

    invoke-direct {v1, v2, v3, v4}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "000006"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;->DEVICES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;->info(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;->name:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static info(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;->DEVICES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    return-object p0
.end method

.method public static isKnownVulnerable(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;->info(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;->knownVulnerable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static manufacturer(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;->info(Ljava/lang/String;)Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;->vendor:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
