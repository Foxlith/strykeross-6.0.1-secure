.class Lorg/apache/commons/net/telnet/Telnet;
.super Lorg/apache/commons/net/SocketClient;
.source "SourceFile"


# static fields
.field static final COMMAND_AYT:[B

.field static final COMMAND_DO:[B

.field static final COMMAND_DONT:[B

.field static final COMMAND_IS:[B

.field static final COMMAND_SB:[B

.field static final COMMAND_SE:[B

.field static final COMMAND_WILL:[B

.field static final COMMAND_WONT:[B

.field static final DEFAULT_PORT:I = 0x17

.field static final DO_MASK:I = 0x2

.field static final REQUESTED_DO_MASK:I = 0x8

.field static final REQUESTED_WILL_MASK:I = 0x4

.field protected static final TERMINAL_TYPE:I = 0x18

.field protected static final TERMINAL_TYPE_IS:I = 0x0

.field protected static final TERMINAL_TYPE_SEND:I = 0x1

.field static final WILL_MASK:I = 0x1

.field static final debug:Z = false

.field static final debugoptions:Z = false


# instance fields
.field private volatile aytFlag:Z

.field private final aytMonitor:Ljava/lang/Object;

.field private final doResponse:[I

.field private notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

.field private final optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

.field private final options:[I

.field private volatile spyStream:Ljava/io/OutputStream;

.field private terminalType:Ljava/lang/String;

.field private final willResponse:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_DO:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_DONT:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_WILL:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_WONT:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SB:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_5

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SE:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_6

    sput-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_IS:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_AYT:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x1t
        -0x5t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x1t
        -0x4t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x1t
        -0x6t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x1t
        -0x10t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x18t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x1t
        -0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    new-array v0, v0, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/SocketClient;->setDefaultPort(I)V

    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    new-array p1, v0, [Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    return-void
.end method


# virtual methods
.method public _connectAction_()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aput v0, v2, v1

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aput v0, v2, v1

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aput v0, v2, v1

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    :goto_1
    if-ge v0, v2, :cond_4

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->requestWill(I)V

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/telnet/Telnet;->requestDo(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public _registerSpyStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    return-void
.end method

.method public final _sendAYT(J)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v3, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_AYT:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget-boolean p1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move v1, p2

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized _sendCommand(B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized _sendSubnegotiation([I)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SB:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    int-to-byte v2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v0, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_2
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public _stopSpyStream()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    return-void
.end method

.method public addOptionHandler(Lorg/apache/commons/net/telnet/TelnetOptionHandler;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getOptionCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    aput-object p1, v1, v0

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->requestWill(I)V

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getInitRemote()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->requestDo(I)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v1, "Already registered option"

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v1, "Invalid Option Code"

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public deleteOptionHandler(I)V
    .locals 3

    invoke-static {p1}, Lorg/apache/commons/net/telnet/TelnetOption;->isValidOption(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    aput-object v2, v0, p1

    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getWill()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestWont(I)V

    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getDo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestDont(I)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v1, "Unregistered option"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    new-instance v0, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;

    const-string v1, "Invalid Option Code"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/net/telnet/InvalidTelnetOptionException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final declared-synchronized processAYTResponse()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytFlag:Z

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->aytMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public processCommand(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    return-void
.end method

.method public processDo(I)V
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptLocal()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aget v3, v2, p1

    if-lez v3, :cond_3

    sub-int/2addr v3, v1

    aput v3, v2, p1

    if-lez v3, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWill(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aget v3, v2, p1

    sub-int/2addr v3, v1

    aput v3, v2, p1

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aget v2, v2, p1

    if-nez v2, :cond_5

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWont(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantWill(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWill(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aget v2, v0, p1

    add-int/2addr v2, v1

    aput v2, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWont(I)V

    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWill(I)V

    return-void
.end method

.method public processDont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aget v1, v0, p1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    if-lez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWont(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWont(I)V

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantWont(I)V

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWont(I)V

    return-void
.end method

.method public processSuboption([II)V
    .locals 2

    if-lez p2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    const/4 v1, 0x0

    aget v1, p1, v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->answerSubnegotiation([II)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    const/16 p2, 0x18

    if-ne v1, p2, :cond_1

    aget p1, p1, v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/net/telnet/Telnet;->sendTerminalType()V

    :cond_1
    :goto_0
    return-void
.end method

.method public processWill(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->getAcceptRemote()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v2, v1, p1

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    if-lez v2, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, p1

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v1, v1, p1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDont(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantDo(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDo(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDont(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setDo(I)V

    return-void
.end method

.method public processWont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/net/telnet/TelnetNotificationHandler;->receivedNegotiation(II)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v1, v0, p1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    if-lez v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDont(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDont(I)V

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantDont(I)V

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setDont(I)V

    return-void
.end method

.method public registerNotifHandler(Lorg/apache/commons/net/telnet/TelnetNotificationHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    return-void
.end method

.method public final declared-synchronized requestDo(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantDo(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized requestDont(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDont(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDont(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantDont(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendDont(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized requestWill(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWill(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantWill(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWill(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized requestWont(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->willResponse:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWont(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWont(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->setWantWont(I)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->doResponse:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->sendWont(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public requestedDo(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestedDont(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public requestedWill(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestedWont(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final declared-synchronized sendByte(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->spyWrite(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendDo(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_DO:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendDont(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_DONT:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendTerminalType()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SB:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_IS:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/commons/net/telnet/Telnet;->terminalType:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_SE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized sendWill(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_WILL:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendWont(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/telnet/Telnet;->COMMAND_WONT:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDo(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationRemote()[I

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    :cond_0
    return-void
.end method

.method public setDont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x3

    aput v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setDo(Z)V

    :cond_0
    return-void
.end method

.method public setWantDo(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x8

    aput v1, v0, p1

    return-void
.end method

.method public setWantDont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x9

    aput v1, v0, p1

    return-void
.end method

.method public setWantWill(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x4

    aput v1, v0, p1

    return-void
.end method

.method public setWantWont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x5

    aput v1, v0, p1

    return-void
.end method

.method public setWill(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget v1, v0, p1

    const/4 v2, 0x1

    or-int/2addr v1, v2

    aput v1, v0, p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->requestedWill(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->startSubnegotiationLocal()[I

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->_sendSubnegotiation([I)V

    :cond_0
    return-void
.end method

.method public setWont(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x2

    aput v1, v0, p1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->optionHandlers:[Lorg/apache/commons/net/telnet/TelnetOptionHandler;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/telnet/TelnetOptionHandler;->setWill(Z)V

    :cond_0
    return-void
.end method

.method public spyRead(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    :cond_1
    :goto_0
    return-void
.end method

.method public spyWrite(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/telnet/Telnet;->requestedDo(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/net/telnet/Telnet;->spyStream:Ljava/io/OutputStream;

    :cond_1
    :goto_0
    return-void
.end method

.method public stateIsDo(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget p1, v0, p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public stateIsDont(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsDo(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public stateIsWill(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->options:[I

    aget p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stateIsWont(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/telnet/Telnet;->stateIsWill(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public unregisterNotifHandler()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/telnet/Telnet;->notifhand:Lorg/apache/commons/net/telnet/TelnetNotificationHandler;

    return-void
.end method
