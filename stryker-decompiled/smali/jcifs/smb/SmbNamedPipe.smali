.class public Ljcifs/smb/SmbNamedPipe;
.super Ljcifs/smb/SmbFile;
.source "SourceFile"


# static fields
.field public static final PIPE_TYPE_CALL:I = 0x100

.field public static final PIPE_TYPE_DCE_TRANSACT:I = 0x600

.field public static final PIPE_TYPE_RDONLY:I = 0x1

.field public static final PIPE_TYPE_RDWR:I = 0x3

.field public static final PIPE_TYPE_TRANSACT:I = 0x200

.field public static final PIPE_TYPE_WRONLY:I = 0x2


# instance fields
.field pipeIn:Ljava/io/InputStream;

.field pipeOut:Ljava/io/OutputStream;

.field pipeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    iput p1, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    iput p1, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    iput p1, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method


# virtual methods
.method public getNamedPipeInputStream()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    if-nez v0, :cond_2

    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    iget v1, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v2, -0xff01

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    invoke-direct {v0, p0, v1}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    :goto_0
    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Ljcifs/smb/TransactNamedPipeInputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/TransactNamedPipeInputStream;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getNamedPipeOutputStream()Ljava/io/OutputStream;
    .locals 3

    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    iget v1, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v2, -0xff01

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    :goto_0
    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Ljcifs/smb/TransactNamedPipeOutputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/TransactNamedPipeOutputStream;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    return-object v0
.end method
