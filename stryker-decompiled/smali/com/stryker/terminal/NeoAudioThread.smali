.class public Lcom/stryker/terminal/NeoAudioThread;
.super Lcom/stryker/terminal/AudioThread;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/AudioThread;-><init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deinitAudio()I
    .locals 1

    invoke-super {p0}, Lcom/stryker/terminal/AudioThread;->deinitAudio()I

    move-result v0

    return v0
.end method

.method public bridge synthetic fillBuffer()I
    .locals 1

    invoke-super {p0}, Lcom/stryker/terminal/AudioThread;->fillBuffer()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBuffer()[B
    .locals 1

    invoke-super {p0}, Lcom/stryker/terminal/AudioThread;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic initAudio(IIII)I
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/stryker/terminal/AudioThread;->initAudio(IIII)I

    move-result p1

    return p1
.end method

.method public bridge synthetic initAudioThread()I
    .locals 1

    invoke-super {p0}, Lcom/stryker/terminal/AudioThread;->initAudioThread()I

    move-result v0

    return v0
.end method

.method public bridge synthetic pauseAudioPlayback()I
    .locals 1

    invoke-super {p0}, Lcom/stryker/terminal/AudioThread;->pauseAudioPlayback()I

    move-result v0

    return v0
.end method

.method public bridge synthetic resumeAudioPlayback()I
    .locals 1

    invoke-super {p0}, Lcom/stryker/terminal/AudioThread;->resumeAudioPlayback()I

    move-result v0

    return v0
.end method
