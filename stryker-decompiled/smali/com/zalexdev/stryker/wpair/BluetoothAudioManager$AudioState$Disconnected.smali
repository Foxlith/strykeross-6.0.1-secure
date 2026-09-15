.class public final Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Disconnected;
.super Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Disconnected"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Disconnected;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Disconnected;

    invoke-direct {v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Disconnected;-><init>()V

    sput-object v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Disconnected;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Disconnected;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;-><init>()V

    return-void
.end method
