.class public final Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;
.super Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;->message:Ljava/lang/String;

    return-void
.end method
