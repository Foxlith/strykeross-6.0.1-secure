.class Ljcifs/smb/SmbComTreeConnectAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SourceFile"


# static fields
.field private static final DISABLE_PLAIN_TEXT_PASSWORDS:Z

.field private static batchLimits:[B


# instance fields
.field private disconnectTid:Z

.field private password:[B

.field private passwordLength:I

.field path:Ljava/lang/String;

.field private service:Ljava/lang/String;

.field private session:Ljcifs/smb/SmbSession;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "jcifs.smb.client.disablePlainTextPasswords"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const-string v0, "jcifs.smb.client.TreeConnectAndX.CheckDirectory"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_0
    const-string v0, "jcifs.smb.client.TreeConnectAndX.CreateDirectory"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_1
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Delete"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_2
    const-string v0, "jcifs.smb.client.TreeConnectAndX.DeleteDirectory"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_3
    const-string v0, "jcifs.smb.client.TreeConnectAndX.OpenAndX"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x5

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_4
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Rename"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x6

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_5
    const-string v0, "jcifs.smb.client.TreeConnectAndX.Transaction"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v2, 0x7

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_6
    const-string v0, "jcifs.smb.client.TreeConnectAndX.QueryInformation"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/16 v2, 0x8

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v1, v2

    :cond_7
    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/ServerMessageBlock;)V
    .locals 0

    invoke-direct {p0, p4}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    const/4 p4, 0x0

    iput-boolean p4, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    iput-object p1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iput-object p2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    iput-object p3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    const/16 p1, 0x75

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .locals 3

    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/4 v1, 0x7

    if-eq p1, v1, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x25

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x5

    aget-byte p1, p1, v0

    return p1

    :cond_1
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    aget-byte p1, p1, v1

    return p1

    :cond_2
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    aget-byte p1, p1, v2

    return p1

    :cond_3
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    aget-byte p1, p1, v0

    return p1

    :cond_4
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    aget-byte p1, p1, v0

    return p1

    :cond_5
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    return p1

    :cond_6
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x4

    aget-byte p1, p1, v0

    return p1

    :cond_7
    sget-object p1, Ljcifs/smb/SmbComTreeConnectAndX;->batchLimits:[B

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    return p1
.end method

.method public readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComTreeConnectAndX["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",disconnectTid="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",passwordLength="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",password="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    .line 43
    .line 44
    iget v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static {v2, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ",path="

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ",service="

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    .line 70
    .line 71
    const-string v3, "]"

    .line 72
    .line 73
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 4

    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->security:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v1, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    add-int/2addr v0, p2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    aput-byte v2, p1, p2

    :goto_0
    iget-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v0, v1

    :try_start_0
    iget-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    const-string v3, "ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->service:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    sub-int/2addr v0, p2

    return v0

    :catch_0
    return v2
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 5

    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v1, v1, Ljcifs/smb/SmbTransport$ServerData;->security:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v1, v0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-boolean v4, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptedPasswords:Z

    if-eqz v4, :cond_1

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getAnsiHash([B)[B

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    array-length v0, v0

    :goto_0
    iput v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    goto :goto_1

    :cond_1
    sget-boolean v1, Ljcifs/smb/SmbComTreeConnectAndX;->DISABLE_PLAIN_TEXT_PASSWORDS:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, v0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->password:[B

    iget-object v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Plain text passwords are disabled"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput v3, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    :goto_1
    add-int/lit8 v0, p2, 0x1

    iget-boolean v1, p0, Ljcifs/smb/SmbComTreeConnectAndX;->disconnectTid:Z

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x2

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/SmbComTreeConnectAndX;->passwordLength:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    const/4 p1, 0x4

    return p1
.end method
