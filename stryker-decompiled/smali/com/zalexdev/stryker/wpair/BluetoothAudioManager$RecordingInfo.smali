.class public final Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordingInfo"
.end annotation


# instance fields
.field public final durationMs:J

.field public final file:Ljava/io/File;

.field public final sizeBytes:J


# direct methods
.method public constructor <init>(Ljava/io/File;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;->file:Ljava/io/File;

    iput-wide p2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;->durationMs:J

    iput-wide p4, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;->sizeBytes:J

    return-void
.end method
