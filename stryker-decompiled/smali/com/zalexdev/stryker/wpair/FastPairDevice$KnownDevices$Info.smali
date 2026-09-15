.class public final Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# instance fields
.field public final knownVulnerable:Z

.field public final name:Ljava/lang/String;

.field public final vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;->vendor:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/zalexdev/stryker/wpair/FastPairDevice$KnownDevices$Info;->knownVulnerable:Z

    return-void
.end method
