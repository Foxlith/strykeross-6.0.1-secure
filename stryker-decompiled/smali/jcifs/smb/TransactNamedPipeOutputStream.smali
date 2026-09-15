.class Ljcifs/smb/TransactNamedPipeOutputStream;
.super Ljcifs/smb/SmbFileOutputStream;
.source "SourceFile"


# instance fields
.field private dcePipe:Z

.field private path:Ljava/lang/String;

.field private pipe:Ljcifs/smb/SmbNamedPipe;

.field private tmp:[B


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .locals 4

    iget v0, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v1, -0xff01

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    const/4 v0, 0x1

    new-array v2, v0, [B

    iput-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    iput-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v2, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 v3, 0x600

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    iget-object p1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/TransactNamedPipeOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 3
    if-gez p3, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v1, v0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v2, v1, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    new-instance v1, Ljcifs/smb/TransWaitNamedPipe;

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v2}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance v1, Ljcifs/smb/TransCallNamedPipe;

    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->path:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2, p3}, Ljcifs/smb/TransCallNamedPipe;-><init>(Ljava/lang/String;[BII)V

    new-instance p1, Ljcifs/smb/TransCallNamedPipeResponse;

    iget-object p2, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-direct {p1, p2}, Ljcifs/smb/TransCallNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    invoke-virtual {v0, v1, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Ljcifs/smb/SmbFileOutputStream;->ensureOpen()V

    new-instance v0, Ljcifs/smb/TransTransactNamedPipe;

    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    iget v1, v1, Ljcifs/smb/SmbFile;->fid:I

    invoke-direct {v0, v1, p1, p2, p3}, Ljcifs/smb/TransTransactNamedPipe;-><init>(I[BII)V

    iget-boolean p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->dcePipe:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x400

    iput p1, v0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    :cond_2
    iget-object p1, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    new-instance p2, Ljcifs/smb/TransTransactNamedPipeResponse;

    iget-object p3, p0, Ljcifs/smb/TransactNamedPipeOutputStream;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-direct {p2, p3}, Ljcifs/smb/TransTransactNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    invoke-virtual {p1, v0, p2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_3
    :goto_0
    return-void
.end method
