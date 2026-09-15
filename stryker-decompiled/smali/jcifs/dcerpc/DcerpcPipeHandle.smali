.class public Ljcifs/dcerpc/DcerpcPipeHandle;
.super Ljcifs/dcerpc/DcerpcHandle;
.source "SourceFile"


# instance fields
.field in:Ljcifs/smb/SmbFileInputStream;

.field isStart:Z

.field out:Ljcifs/smb/SmbFileOutputStream;

.field pipe:Ljcifs/smb/SmbNamedPipe;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcHandle;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 6
    .line 7
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    .line 11
    .line 12
    invoke-static {p1}, Ljcifs/dcerpc/DcerpcHandle;->parseBinding(Ljava/lang/String;)Ljcifs/dcerpc/DcerpcBinding;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "smb://"

    .line 21
    .line 22
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 26
    .line 27
    iget-object v1, v1, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, "/IPC$/"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 38
    .line 39
    iget-object v1, v1, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v2, 0x6

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 54
    .line 55
    const-string v2, "server"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/DcerpcBinding;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    const-string v2, "&server="

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    const-string v2, ""

    .line 73
    .line 74
    :goto_0
    iget-object v3, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 75
    .line 76
    const-string v4, "address"

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljcifs/dcerpc/DcerpcBinding;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    const-string v1, "&address="

    .line 87
    .line 88
    invoke-static {v2, v1, v3}, Landroid/support/v4/media/session/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-lez v1, :cond_2

    .line 97
    .line 98
    const-string v1, "?"

    .line 99
    .line 100
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :cond_2
    new-instance v0, Ljcifs/smb/SmbNamedPipe;

    .line 116
    .line 117
    const v1, 0x19f0603

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, p1, v1, p2}, Ljcifs/smb/SmbNamedPipe;-><init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 124
    .line 125
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljcifs/smb/SmbFileOutputStream;->close()V

    :cond_0
    return-void
.end method

.method public doReceiveFragment([BZ)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    .line 3
    .line 4
    if-lt v0, v1, :cond_6

    .line 5
    .line 6
    iget-boolean v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 14
    .line 15
    const/16 v0, 0x400

    .line 16
    .line 17
    invoke-virtual {p2, p1, v1, v0}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 23
    .line 24
    array-length v0, p1

    .line 25
    invoke-virtual {p2, p1, v1, v0}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    :goto_0
    aget-byte v0, p1, v1

    .line 30
    .line 31
    const/4 v2, 0x5

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v0, v2, :cond_2

    .line 34
    .line 35
    aget-byte v0, p1, v3

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 41
    .line 42
    const-string p2, "Unexpected DCERPC PDU header"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    :goto_1
    const/4 v0, 0x3

    .line 49
    aget-byte v0, p1, v0

    .line 50
    .line 51
    const/4 v2, 0x2

    .line 52
    and-int/2addr v0, v2

    .line 53
    if-ne v0, v2, :cond_3

    .line 54
    .line 55
    move v1, v3

    .line 56
    :cond_3
    iput-boolean v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    .line 57
    .line 58
    const/16 v0, 0x8

    .line 59
    .line 60
    invoke-static {p1, v0}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v1, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    .line 65
    .line 66
    if-gt v0, v1, :cond_5

    .line 67
    .line 68
    :goto_2
    if-ge p2, v0, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 71
    .line 72
    sub-int v2, v0, p2

    .line 73
    .line 74
    invoke-virtual {v1, p1, p2, v2}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr p2, v1

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    return-void

    .line 81
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 82
    .line 83
    const-string p2, "Unexpected fragment length: "

    .line 84
    .line 85
    invoke-static {p2, v0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1

    .line 93
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string p2, "buffer too small"

    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method public doSendFragment([BIIZ)V
    .locals 1

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljcifs/smb/SmbFileOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "DCERPC pipe is no longer open"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getNamedPipeInputStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbFileInputStream;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    :cond_2
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    if-nez v0, :cond_3

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getNamedPipeOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljcifs/smb/SmbFileOutputStream;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    :cond_3
    if-eqz p4, :cond_4

    iget-object p4, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    const/4 v0, 0x1

    invoke-virtual {p4, p1, p2, p3, v0}, Ljcifs/smb/SmbFileOutputStream;->writeDirect([BIII)V

    return-void

    :cond_4
    iget-object p4, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    return-void
.end method
