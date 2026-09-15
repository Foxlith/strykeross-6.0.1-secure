.class public abstract Ljcifs/dcerpc/DcerpcHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljcifs/dcerpc/DcerpcConstants;


# static fields
.field private static call_id:I = 0x1


# instance fields
.field protected binding:Ljcifs/dcerpc/DcerpcBinding;

.field protected max_recv:I

.field protected max_xmit:I

.field protected securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

.field protected state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10b8

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    return-void
.end method

.method public static getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    .locals 1

    const-string v0, "ncacn_np:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    invoke-direct {v0, p0, p1}, Ljcifs/dcerpc/DcerpcPipeHandle;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-object v0

    :cond_0
    new-instance p1, Ljcifs/dcerpc/DcerpcException;

    const-string v0, "DCERPC transport not supported: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseBinding(Ljava/lang/String;)Ljcifs/dcerpc/DcerpcBinding;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move v3, v2

    move v4, v3

    :cond_0
    aget-char v8, v0, v2

    const/4 v9, 0x1

    if-eqz v3, :cond_8

    const/4 v10, 0x5

    const/4 v11, 0x2

    if-eq v3, v9, :cond_5

    if-eq v3, v11, :cond_7

    if-eq v3, v10, :cond_1

    array-length v2, v0

    goto :goto_1

    :cond_1
    const/16 v10, 0x3d

    if-ne v8, v10, :cond_2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :goto_0
    add-int/lit8 v4, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v10, 0x2c

    if-eq v8, v10, :cond_3

    const/16 v10, 0x5d

    if-ne v8, v10, :cond_9

    :cond_3
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_4

    const-string v7, "endpoint"

    :cond_4
    invoke-virtual {v6, v7, v8}, Ljcifs/dcerpc/DcerpcBinding;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v1

    goto :goto_1

    :cond_5
    const/16 v12, 0x5c

    if-ne v8, v12, :cond_6

    goto :goto_0

    :cond_6
    move v3, v11

    :cond_7
    const/16 v11, 0x5b

    if-ne v8, v11, :cond_9

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    new-instance v6, Ljcifs/dcerpc/DcerpcBinding;

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v5, v3}, Ljcifs/dcerpc/DcerpcBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    move v3, v10

    goto :goto_1

    :cond_8
    const/16 v10, 0x3a

    if-ne v8, v10, :cond_9

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    move v3, v9

    :cond_9
    :goto_1
    add-int/2addr v2, v9

    array-length v8, v0

    if-lt v2, v8, :cond_0

    if-eqz v6, :cond_a

    iget-object v0, v6, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    if-eqz v0, :cond_a

    return-object v6

    :cond_a
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    const-string v1, "Invalid binding URL: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bind()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    new-instance v0, Ljcifs/dcerpc/DcerpcBind;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    invoke-direct {v0, v1, p0}, Ljcifs/dcerpc/DcerpcBind;-><init>(Ljcifs/dcerpc/DcerpcBinding;Ljcifs/dcerpc/DcerpcHandle;)V

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract close()V
.end method

.method public abstract doReceiveFragment([BZ)V
.end method

.method public abstract doSendFragment([BIIZ)V
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    iget-object v0, v0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    iget-object v0, v0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    .locals 12

    iget v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->bind()V

    :cond_0
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v0

    :try_start_0
    new-instance v1, Ljcifs/dcerpc/ndr/NdrBuffer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    const/4 v3, 0x3

    iput v3, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    sget v4, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    iput v4, p1, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v4, v1}, Ljcifs/dcerpc/DcerpcSecurityProvider;->wrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    move-result v4

    const/16 v5, 0x18

    sub-int/2addr v4, v5

    const/4 v6, 0x1

    move v7, v2

    :goto_1
    const/4 v8, 0x2

    if-ge v7, v4, :cond_5

    sub-int v9, v4, v7

    add-int/lit8 v10, v9, 0x18

    iget v11, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    if-le v10, v11, :cond_2

    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v8, v8, -0x3

    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    add-int/lit8 v9, v11, -0x18

    goto :goto_2

    :cond_2
    iget v6, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    or-int/2addr v6, v8

    iput v6, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    iput v9, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    move v6, v2

    :goto_2
    add-int/lit8 v8, v9, 0x18

    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    if-lez v7, :cond_3

    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    :cond_3
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/2addr v8, v3

    if-eq v8, v3, :cond_4

    iput v7, v1, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    invoke-virtual {v1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getOpnum()I

    move-result v8

    invoke-virtual {v1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    :cond_4
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    invoke-virtual {p0, v0, v7, v8, v6}, Ljcifs/dcerpc/DcerpcHandle;->doSendFragment([BIIZ)V

    add-int/2addr v7, v9

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0, v6}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    invoke-virtual {v1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v4, :cond_6

    invoke-interface {v4, v1}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_6
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v1, p1, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-ne v1, v8, :cond_7

    invoke-virtual {p1, v8}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    goto :goto_3

    :cond_7
    move v1, v5

    :goto_3
    const/4 v4, 0x0

    move-object v7, v4

    :goto_4
    invoke-virtual {p1, v8}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v9

    if-nez v9, :cond_b

    if-nez v4, :cond_8

    iget v4, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    new-array v4, v4, [B

    new-instance v7, Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-direct {v7, v4, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    :cond_8
    invoke-virtual {p0, v4, v6}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    invoke-virtual {v7, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v9

    invoke-virtual {v7, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    iget-object v9, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v9, :cond_9

    invoke-interface {v9, v7}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_9
    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    invoke-virtual {p1, v7}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v9, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    sub-int/2addr v9, v5

    add-int v10, v1, v9

    array-length v11, v0

    if-le v10, v11, :cond_a

    new-array v11, v10, [B

    invoke-static {v0, v2, v11, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v11

    :cond_a
    invoke-static {v4, v5, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v10

    goto :goto_4

    :cond_b
    new-instance v1, Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getResult()Ljcifs/dcerpc/DcerpcException;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    throw p1

    :goto_5
    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    throw p1
.end method

.method public setDcerpcSecurityProvider(Ljcifs/dcerpc/DcerpcSecurityProvider;)V
    .locals 0

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
