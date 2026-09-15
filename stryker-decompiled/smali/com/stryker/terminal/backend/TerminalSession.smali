.class public Lcom/stryker/terminal/backend/TerminalSession;
.super Lcom/stryker/terminal/backend/TerminalOutput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;
    }
.end annotation


# static fields
.field private static final MSG_NEW_INPUT:I = 0x1

.field private static final MSG_PROCESS_EXITED:I = 0x4

.field private static final SOCK_ALIVE_PID:I = 0x7fff0000

.field private static final VM_RESIZE_MARKER:Ljava/lang/String; = "/data/data/com.zalexdev.stryker/files/.vm_pty_resize"


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field private final mChangeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

.field private mConn:Ljava/io/Closeable;

.field private final mCwd:Ljava/lang/String;

.field private mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

.field private final mEnv:[Ljava/lang/String;

.field public final mHandle:Ljava/lang/String;

.field private final mMainThreadHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private final mProcessToTerminalIOQueue:Lcom/stryker/terminal/backend/ByteQueue;

.field public mSessionName:Ljava/lang/String;

.field private mShellExitStatus:I

.field private final mShellPath:Ljava/lang/String;

.field private mShellPid:I

.field private mSockMode:Z

.field private mTerminalFileDescriptor:I

.field private final mTerminalToProcessIOQueue:Lcom/stryker/terminal/backend/ByteQueue;

.field private final mUtf8InputBuffer:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalOutput;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mHandle:Ljava/lang/String;

    new-instance v0, Lcom/stryker/terminal/backend/ByteQueue;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/stryker/terminal/backend/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mProcessToTerminalIOQueue:Lcom/stryker/terminal/backend/ByteQueue;

    new-instance v0, Lcom/stryker/terminal/backend/ByteQueue;

    invoke-direct {v0, v1}, Lcom/stryker/terminal/backend/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mTerminalToProcessIOQueue:Lcom/stryker/terminal/backend/ByteQueue;

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mUtf8InputBuffer:[B

    new-instance v0, Lcom/stryker/terminal/backend/TerminalSession$1;

    invoke-direct {v0, p0}, Lcom/stryker/terminal/backend/TerminalSession$1;-><init>(Lcom/stryker/terminal/backend/TerminalSession;)V

    iput-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/stryker/terminal/backend/TerminalSession;->mChangeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/stryker/terminal/backend/TerminalSession;->mCwd:Ljava/lang/String;

    iput-object p3, p0, Lcom/stryker/terminal/backend/TerminalSession;->mArgs:[Ljava/lang/String;

    iput-object p4, p0, Lcom/stryker/terminal/backend/TerminalSession;->mEnv:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/ByteQueue;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mProcessToTerminalIOQueue:Lcom/stryker/terminal/backend/ByteQueue;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/TerminalEmulator;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalSession;->notifyScreenUpdate()V

    return-void
.end method

.method public static synthetic access$300(Lcom/stryker/terminal/backend/TerminalSession;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/backend/TerminalSession;->cleanupResources(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mChangeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/stryker/terminal/backend/TerminalSession;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/stryker/terminal/backend/TerminalSession;)Lcom/stryker/terminal/backend/ByteQueue;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mTerminalToProcessIOQueue:Lcom/stryker/terminal/backend/ByteQueue;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/stryker/terminal/backend/TerminalSession;)I
    .locals 0

    iget p0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    return p0
.end method

.method public static synthetic access$802(Lcom/stryker/terminal/backend/TerminalSession;Ljava/io/Closeable;)Ljava/io/Closeable;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mConn:Ljava/io/Closeable;

    return-object p1
.end method

.method private cleanupResources(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    iput p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellExitStatus:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mTerminalToProcessIOQueue:Lcom/stryker/terminal/backend/ByteQueue;

    invoke-virtual {p1}, Lcom/stryker/terminal/backend/ByteQueue;->close()V

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mProcessToTerminalIOQueue:Lcom/stryker/terminal/backend/ByteQueue;

    invoke-virtual {p1}, Lcom/stryker/terminal/backend/ByteQueue;->close()V

    iget-boolean p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mSockMode:Z

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mConn:Ljava/io/Closeable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {p1}, Lcom/stryker/terminal/backend/JNI;->close(I)V

    :catch_0
    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private initializeSocket()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mSockMode:Z

    const/high16 v1, 0x7fff0000

    iput v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPath:Ljava/lang/String;

    const-string v2, "unix:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPath:Ljava/lang/String;

    const-string v2, "pty:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPath:Ljava/lang/String;

    if-eqz v6, :cond_1

    const/4 v1, 0x5

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_3

    :cond_1
    const/4 v1, 0x4

    goto :goto_2

    :goto_3
    new-instance v0, Lcom/stryker/terminal/backend/TerminalSession$5;

    const-string v5, "TermSockConnect"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/stryker/terminal/backend/TerminalSession$5;-><init>(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private notifyScreenUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mChangeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;->onTextChanged(Lcom/stryker/terminal/backend/TerminalSession;)V

    return-void
.end method

.method private pushVmWindowSize(II)V
    .locals 2

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/.vm_pty_resize"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u0000WINCH:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u0000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/stryker/terminal/backend/TerminalSession;->write([BII)V

    return-void
.end method

.method private static wrapFileDescriptor(I)Ljava/io/FileDescriptor;
    .locals 4

    const-class v0, Ljava/io/FileDescriptor;

    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "descriptor"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    :try_start_1
    const-string v3, "fd"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_3
    move-exception p0

    :goto_1
    const-string v0, "NeoTerm-Emulator"

    const-string v3, "Error accessing FileDescriptor#descriptor private field"

    invoke-static {v0, v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    :goto_2
    return-object v1
.end method


# virtual methods
.method public clipboardText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mChangeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0, p1}, Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;->onClipboardText(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;)V

    return-void
.end method

.method public finishIfRunning()V
    .locals 3

    invoke-virtual {p0}, Lcom/stryker/terminal/backend/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mSockMode:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mConn:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed sending SIGKILL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "neoterm-shell-session"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public getEmulator()Lcom/stryker/terminal/backend/TerminalEmulator;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    return-object v0
.end method

.method public getExitDescription(I)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const-string v1, "\r\n[Process completed (code "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/a;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-gez p1, :cond_1

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "\r\n[Process completed (signal "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    neg-int p1, p1

    .line 22
    invoke-static {v1, p1, v0}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string p1, "\r\n[Process completed"

    .line 28
    .line 29
    :goto_0
    const-string v0, " - press Enter]"

    .line 30
    .line 31
    invoke-static {p1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public declared-synchronized getExitStatus()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    return v0
.end method

.method public getSessionChangedCallback()Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mChangeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public initializeEmulator(II)V
    .locals 8

    .line 1
    new-instance v0, Lcom/stryker/terminal/backend/TerminalEmulator;

    .line 2
    .line 3
    const/16 v1, 0x7d0

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;-><init>(Lcom/stryker/terminal/backend/TerminalOutput;III)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPath:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v1, "tcp:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPath:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "pty:"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPath:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "unix:"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalSession;->initializeSocket()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [I

    .line 48
    .line 49
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPath:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v2, p0, Lcom/stryker/terminal/backend/TerminalSession;->mCwd:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/stryker/terminal/backend/TerminalSession;->mArgs:[Ljava/lang/String;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/stryker/terminal/backend/TerminalSession;->mEnv:[Ljava/lang/String;

    .line 56
    .line 57
    move-object v5, v0

    .line 58
    move v6, p2

    .line 59
    move v7, p1

    .line 60
    invoke-static/range {v1 .. v7}, Lcom/stryker/terminal/backend/JNI;->createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[III)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mTerminalFileDescriptor:I

    .line 65
    .line 66
    const/4 p2, 0x0

    .line 67
    aget p2, v0, p2

    .line 68
    .line 69
    iput p2, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    .line 70
    .line 71
    invoke-static {p1}, Lcom/stryker/terminal/backend/TerminalSession;->wrapFileDescriptor(I)Ljava/io/FileDescriptor;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance p2, Lcom/stryker/terminal/backend/TerminalSession$2;

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, "TermSessionInputReader[pid="

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    .line 85
    .line 86
    const-string v2, "]"

    .line 87
    .line 88
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p2, p0, v0, p1}, Lcom/stryker/terminal/backend/TerminalSession$2;-><init>(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 96
    .line 97
    .line 98
    new-instance p2, Lcom/stryker/terminal/backend/TerminalSession$3;

    .line 99
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "TermSessionOutputWriter[pid="

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    .line 108
    .line 109
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {p2, p0, v0, p1}, Lcom/stryker/terminal/backend/TerminalSession$3;-><init>(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lcom/stryker/terminal/backend/TerminalSession$4;

    .line 120
    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v0, "TermSessionWaiter[pid="

    .line 124
    .line 125
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    .line 129
    .line 130
    invoke-static {p2, v0, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-direct {p1, p0, p2}, Lcom/stryker/terminal/backend/TerminalSession$4;-><init>(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public declared-synchronized isRunning()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBell()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mChangeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;->onBell(Lcom/stryker/terminal/backend/TerminalSession;)V

    return-void
.end method

.method public onColorsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mChangeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    invoke-interface {v0, p0}, Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;->onColorsChanged(Lcom/stryker/terminal/backend/TerminalSession;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalEmulator;->reset()V

    invoke-direct {p0}, Lcom/stryker/terminal/backend/TerminalSession;->notifyScreenUpdate()V

    return-void
.end method

.method public titleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mChangeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    invoke-interface {p1, p0}, Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;->onTitleChanged(Lcom/stryker/terminal/backend/TerminalSession;)V

    return-void
.end method

.method public updateSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/backend/TerminalSession;->initializeEmulator(II)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mSockMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {v0, p2, p1}, Lcom/stryker/terminal/backend/JNI;->setPtyWindowSize(III)V

    :cond_1
    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mEmulator:Lcom/stryker/terminal/backend/TerminalEmulator;

    invoke-virtual {v0, p1, p2}, Lcom/stryker/terminal/backend/TerminalEmulator;->resize(II)V

    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/backend/TerminalSession;->pushVmWindowSize(II)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1

    iget v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mShellPid:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/backend/TerminalSession;->mTerminalToProcessIOQueue:Lcom/stryker/terminal/backend/ByteQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stryker/terminal/backend/ByteQueue;->write([BII)Z

    :cond_0
    return-void
.end method

.method public writeCodePoint(ZI)V
    .locals 5

    .line 1
    const v0, 0x10ffff

    .line 2
    .line 3
    .line 4
    if-gt p2, v0, :cond_5

    .line 5
    .line 6
    const v0, 0xd800

    .line 7
    .line 8
    .line 9
    if-lt p2, v0, :cond_0

    .line 10
    .line 11
    const v0, 0xdfff

    .line 12
    .line 13
    .line 14
    if-le p2, v0, :cond_5

    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mUtf8InputBuffer:[B

    .line 20
    .line 21
    const/16 v1, 0x1b

    .line 22
    .line 23
    aput-byte v1, p1, v0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move p1, v0

    .line 28
    :goto_0
    const/16 v1, 0x7f

    .line 29
    .line 30
    if-gt p2, v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mUtf8InputBuffer:[B

    .line 33
    .line 34
    add-int/lit8 v2, p1, 0x1

    .line 35
    .line 36
    int-to-byte p2, p2

    .line 37
    aput-byte p2, v1, p1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/16 v1, 0x7ff

    .line 41
    .line 42
    if-gt p2, v1, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mUtf8InputBuffer:[B

    .line 45
    .line 46
    add-int/lit8 v2, p1, 0x1

    .line 47
    .line 48
    shr-int/lit8 v3, p2, 0x6

    .line 49
    .line 50
    or-int/lit16 v3, v3, 0xc0

    .line 51
    .line 52
    int-to-byte v3, v3

    .line 53
    aput-byte v3, v1, p1

    .line 54
    .line 55
    add-int/lit8 p1, p1, 0x2

    .line 56
    .line 57
    and-int/lit8 p2, p2, 0x3f

    .line 58
    .line 59
    or-int/lit16 p2, p2, 0x80

    .line 60
    .line 61
    int-to-byte p2, p2

    .line 62
    aput-byte p2, v1, v2

    .line 63
    .line 64
    :goto_1
    move v2, p1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const v1, 0xffff

    .line 67
    .line 68
    .line 69
    if-gt p2, v1, :cond_4

    .line 70
    .line 71
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mUtf8InputBuffer:[B

    .line 72
    .line 73
    add-int/lit8 v2, p1, 0x1

    .line 74
    .line 75
    shr-int/lit8 v3, p2, 0xc

    .line 76
    .line 77
    or-int/lit16 v3, v3, 0xe0

    .line 78
    .line 79
    int-to-byte v3, v3

    .line 80
    aput-byte v3, v1, p1

    .line 81
    .line 82
    add-int/lit8 v3, p1, 0x2

    .line 83
    .line 84
    shr-int/lit8 v4, p2, 0x6

    .line 85
    .line 86
    and-int/lit8 v4, v4, 0x3f

    .line 87
    .line 88
    or-int/lit16 v4, v4, 0x80

    .line 89
    .line 90
    int-to-byte v4, v4

    .line 91
    aput-byte v4, v1, v2

    .line 92
    .line 93
    add-int/lit8 v2, p1, 0x3

    .line 94
    .line 95
    and-int/lit8 p1, p2, 0x3f

    .line 96
    .line 97
    or-int/lit16 p1, p1, 0x80

    .line 98
    .line 99
    int-to-byte p1, p1

    .line 100
    aput-byte p1, v1, v3

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mUtf8InputBuffer:[B

    .line 104
    .line 105
    add-int/lit8 v2, p1, 0x1

    .line 106
    .line 107
    shr-int/lit8 v3, p2, 0x12

    .line 108
    .line 109
    or-int/lit16 v3, v3, 0xf0

    .line 110
    .line 111
    int-to-byte v3, v3

    .line 112
    aput-byte v3, v1, p1

    .line 113
    .line 114
    add-int/lit8 v3, p1, 0x2

    .line 115
    .line 116
    shr-int/lit8 v4, p2, 0xc

    .line 117
    .line 118
    and-int/lit8 v4, v4, 0x3f

    .line 119
    .line 120
    or-int/lit16 v4, v4, 0x80

    .line 121
    .line 122
    int-to-byte v4, v4

    .line 123
    aput-byte v4, v1, v2

    .line 124
    .line 125
    add-int/lit8 v2, p1, 0x3

    .line 126
    .line 127
    shr-int/lit8 v4, p2, 0x6

    .line 128
    .line 129
    and-int/lit8 v4, v4, 0x3f

    .line 130
    .line 131
    or-int/lit16 v4, v4, 0x80

    .line 132
    .line 133
    int-to-byte v4, v4

    .line 134
    aput-byte v4, v1, v3

    .line 135
    .line 136
    add-int/lit8 p1, p1, 0x4

    .line 137
    .line 138
    and-int/lit8 p2, p2, 0x3f

    .line 139
    .line 140
    or-int/lit16 p2, p2, 0x80

    .line 141
    .line 142
    int-to-byte p2, p2

    .line 143
    aput-byte p2, v1, v2

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :goto_2
    iget-object p1, p0, Lcom/stryker/terminal/backend/TerminalSession;->mUtf8InputBuffer:[B

    .line 147
    .line 148
    invoke-virtual {p0, p1, v0, v2}, Lcom/stryker/terminal/backend/TerminalSession;->write([BII)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    const-string v0, "Invalid code point: "

    .line 155
    .line 156
    invoke-static {v0, p2}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1
.end method
