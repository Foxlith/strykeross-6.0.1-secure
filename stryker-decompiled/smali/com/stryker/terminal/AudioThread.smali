.class Lcom/stryker/terminal/AudioThread;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/AudioThread$RecordingThread;
    }
.end annotation


# instance fields
.field private mAudio:Landroid/media/AudioTrack;

.field private mAudioBuffer:[B

.field private mClient:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

.field private mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

.field private mRecorder:Landroid/media/AudioRecord;

.field private mRecorderBufferSize:I

.field private mVirtualBufSize:I


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    iput-object v0, p0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    iput v1, p0, Lcom/stryker/terminal/AudioThread;->mRecorderBufferSize:I

    iput-object p1, p0, Lcom/stryker/terminal/AudioThread;->mClient:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    iput-object v0, p0, Lcom/stryker/terminal/AudioThread;->mAudio:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/stryker/terminal/AudioThread;->mAudioBuffer:[B

    invoke-direct {p0}, Lcom/stryker/terminal/AudioThread;->nativeAudioInitJavaCallbacks()I

    return-void
.end method

.method public static synthetic access$000(Lcom/stryker/terminal/AudioThread;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/stryker/terminal/AudioThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/AudioThread;->nativeAudioRecordCallback()V

    return-void
.end method

.method private native nativeAudioInitJavaCallbacks()I
.end method

.method private native nativeAudioRecordCallback()V
.end method

.method private startRecording(IIII)[B
    .locals 14

    move-object v0, p0

    move v7, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    if-nez v4, :cond_0

    new-instance v4, Lcom/stryker/terminal/AudioThread$RecordingThread;

    invoke-direct {v4, p0}, Lcom/stryker/terminal/AudioThread$RecordingThread;-><init>(Lcom/stryker/terminal/AudioThread;)V

    iput-object v4, v0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v4, v0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    invoke-virtual {v4}, Lcom/stryker/terminal/AudioThread$RecordingThread;->isStopped()Z

    move-result v4

    const/4 v8, 0x0

    const-string v9, "SDL"

    if-nez v4, :cond_1

    const-string v1, "SDL: error: application already opened audio recording device"

    :goto_0
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_1
    iget-object v4, v0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    invoke-virtual {v4, v3}, Lcom/stryker/terminal/AudioThread$RecordingThread;->init(I)V

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    const/16 v5, 0x10

    :goto_1
    move v10, v5

    goto :goto_2

    :cond_2
    const/16 v5, 0xc

    goto :goto_1

    :goto_2
    if-ne v2, v4, :cond_3

    const/4 v5, 0x2

    :goto_3
    move v11, v5

    goto :goto_4

    :cond_3
    const/4 v5, 0x3

    goto :goto_3

    :goto_4
    invoke-static {p1, v10, v11}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    mul-int/lit8 v6, v3, 0x8

    rem-int v12, v5, v3

    sub-int v12, v3, v12

    add-int/2addr v12, v5

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SDL: app opened recording device, rate "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " channels "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sample size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufsize "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " internal bufsize "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v2

    if-ne v2, v7, :cond_5

    iget-object v2, v0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v1, v0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v1

    if-ne v1, v11, :cond_5

    iget v1, v0, Lcom/stryker/terminal/AudioThread;->mRecorderBufferSize:I

    if-eq v1, v12, :cond_4

    goto :goto_5

    :cond_4
    const-string v1, "SDL: reusing old recording device"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_5
    :goto_5
    iget-object v1, v0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    :cond_6
    iput-object v8, v0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    :try_start_0
    new-instance v13, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    move-object v1, v13

    move v3, p1

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v13, v0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    iput v12, v0, Lcom/stryker/terminal/AudioThread;->mRecorderBufferSize:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string v1, "SDL: error: failed to open MIC recording device!"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v13, Landroid/media/AudioRecord;

    const/4 v2, 0x6

    move-object v1, v13

    move v3, p1

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v13, v0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    iput v12, v0, Lcom/stryker/terminal/AudioThread;->mRecorderBufferSize:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    const-string v1, "SDL: error: failed to open VOICE_RECOGNITION recording device!"

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    new-instance v13, Landroid/media/AudioRecord;

    const/4 v2, 0x0

    move-object v1, v13

    move v3, p1

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v13, v0, Lcom/stryker/terminal/AudioThread;->mRecorder:Landroid/media/AudioRecord;

    iput v12, v0, Lcom/stryker/terminal/AudioThread;->mRecorderBufferSize:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    iget-object v1, v0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    invoke-virtual {v1}, Lcom/stryker/terminal/AudioThread$RecordingThread;->startRecording()V

    iget-object v1, v0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    iget-object v1, v1, Lcom/stryker/terminal/AudioThread$RecordingThread;->mRecordBuffer:[B

    return-object v1

    :catch_2
    const-string v1, "SDL: error: failed to open DEFAULT recording device!"

    goto/16 :goto_0
.end method

.method private stopRecording()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    const-string v1, "SDL"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/AudioThread$RecordingThread;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    invoke-virtual {v0}, Lcom/stryker/terminal/AudioThread$RecordingThread;->stopRecording()V

    const-string v0, "SDL: app closed recording device"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_1
    const-string v0, "SDL: error: application already closed audio recording device"

    goto :goto_0
.end method


# virtual methods
.method public deinitAudio()I
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mAudio:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mAudio:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/stryker/terminal/AudioThread;->mAudio:Landroid/media/AudioTrack;

    :cond_0
    iput-object v1, p0, Lcom/stryker/terminal/AudioThread;->mAudioBuffer:[B

    const/4 v0, 0x1

    return v0
.end method

.method public fillBuffer()I
    .locals 4

    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mClient:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mAudio:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/stryker/terminal/AudioThread;->mAudioBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/stryker/terminal/AudioThread;->mVirtualBufSize:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    :catch_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBuffer()[B
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mAudioBuffer:[B

    return-object v0
.end method

.method public initAudio(IIII)I
    .locals 10

    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mAudio:Landroid/media/AudioTrack;

    if-nez v0, :cond_4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    if-ne p3, v2, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    iput p4, p0, Lcom/stryker/terminal/AudioThread;->mVirtualBufSize:I

    invoke-static {p1, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p2

    if-le p2, p4, :cond_2

    invoke-static {p1, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p4

    :cond_2
    sget p2, Lcom/stryker/terminal/Globals;->AudioBufferConfig:I

    if-eqz p2, :cond_3

    int-to-float p3, p4

    sub-int/2addr p2, v2

    int-to-float p2, p2

    const/high16 p4, 0x40200000    # 2.5f

    mul-float/2addr p2, p4

    const/high16 p4, 0x3f800000    # 1.0f

    add-float/2addr p2, p4

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/stryker/terminal/AudioThread;->mVirtualBufSize:I

    move v8, p2

    goto :goto_2

    :cond_3
    move v8, p4

    :goto_2
    new-array p2, v8, [B

    iput-object p2, p0, Lcom/stryker/terminal/AudioThread;->mAudioBuffer:[B

    new-instance p2, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    const/4 v9, 0x1

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p2, p0, Lcom/stryker/terminal/AudioThread;->mAudio:Landroid/media/AudioTrack;

    invoke-virtual {p2}, Landroid/media/AudioTrack;->play()V

    :cond_4
    iget p1, p0, Lcom/stryker/terminal/AudioThread;->mVirtualBufSize:I

    return p1
.end method

.method public initAudioThread()I
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public pauseAudioPlayback()I
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mAudio:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/AudioThread$RecordingThread;->pauseRecording()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public resumeAudioPlayback()I
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mAudio:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/AudioThread;->mRecordThread:Lcom/stryker/terminal/AudioThread$RecordingThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/AudioThread$RecordingThread;->resumeRecording()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
