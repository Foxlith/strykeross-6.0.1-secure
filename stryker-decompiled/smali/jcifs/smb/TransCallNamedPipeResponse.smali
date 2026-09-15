.class Ljcifs/smb/TransCallNamedPipeResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SourceFile"


# instance fields
.field private pipe:Ljcifs/smb/SmbNamedPipe;


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    iput-object p1, p0, Ljcifs/smb/TransCallNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 2

    iget-object v0, p0, Ljcifs/smb/TransCallNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget-object v0, v0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    check-cast v0, Ljcifs/smb/TransactNamedPipeInputStream;

    iget-object v1, v0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/TransactNamedPipeInputStream;->receive([BII)I

    iget-object p1, v0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return p3
.end method

.method public readParametersWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readSetupWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "TransCallNamedPipeResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 15
    .line 16
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
