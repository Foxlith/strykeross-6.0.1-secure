.class public Ljcifs/smb/NtlmContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field isEstablished:Z

.field log:Ljcifs/util/LogStream;

.field netbiosName:Ljava/lang/String;

.field ntlmsspFlags:I

.field serverChallenge:[B

.field signingKey:[B

.field state:I

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    iput-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/NtlmContext;->state:I

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    const v0, 0x20080004

    or-int/2addr v0, p1

    iput v0, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    if-eqz p2, :cond_0

    const p2, 0x60088014

    or-int/2addr p1, p2

    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    :cond_0
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method private getNtlmsspListItem([BI)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3a

    :goto_0
    invoke-static {p1, v0}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    add-int/lit8 v2, v0, 0x2

    invoke-static {p1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v2

    add-int/lit8 v0, v0, 0x4

    if-eqz v1, :cond_2

    add-int v3, v0, v2

    array-length v4, p1

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v1, p2, :cond_1

    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v1, "UTF-16LE"

    invoke-direct {p2, p1, v0, v2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_1
    move v0, v3

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getNetbiosName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerChallenge()[B
    .locals 1

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    return-object v0
.end method

.method public getSigningKey()[B
    .locals 1

    iget-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    return-object v0
.end method

.method public initSecContext([BII)[B
    .locals 11

    iget p2, p0, Ljcifs/smb/NtlmContext;->state:I

    const/4 p3, 0x0

    const/4 v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    :try_start_0
    new-instance v5, Ljcifs/ntlmssp/Type2Message;

    invoke-direct {v5, p1}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_0

    invoke-virtual {p2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v0, :cond_0

    array-length v3, p1

    invoke-static {p2, p1, p3, v3}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    iget p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    invoke-virtual {v5}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result p2

    and-int/2addr p1, p2

    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    new-instance p1, Ljcifs/ntlmssp/Type3Message;

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    iget v10, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object p2

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v1, :cond_1

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v0, :cond_1

    array-length v0, p2

    invoke-static {v1, p2, p3, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_1
    iget p3, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getMasterKey()[B

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    :cond_2
    iput-boolean v2, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    iget p1, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/2addr p1, v2

    iput p1, p0, Ljcifs/smb/NtlmContext;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p2, Ljcifs/smb/SmbException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Invalid state"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljcifs/ntlmssp/Type1Message;

    iget p2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-direct {p1, p2, v3, v4}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object p2

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v1, :cond_5

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object p1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v0, :cond_5

    array-length v0, p2

    invoke-static {p1, p2, p3, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_5
    iget p1, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/2addr p1, v2

    iput p1, p0, Ljcifs/smb/NtlmContext;->state:I

    :goto_2
    return-object p2
.end method

.method public isEstablished()Z
    .locals 1

    iget-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NtlmContext[auth="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",ntlmsspFlags=0x"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    const-string v3, ",workstation="

    .line 23
    .line 24
    invoke-static {v1, v2, v0, v3}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ",isEstablished="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ",state="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v1, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 48
    .line 49
    const-string v2, ",serverChallenge="

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    const-string v3, "null"

    .line 59
    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    invoke-static {v0, v3}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 72
    .line 73
    array-length v4, v1

    .line 74
    mul-int/lit8 v4, v4, 0x2

    .line 75
    .line 76
    invoke-static {v1, v2, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_0
    const-string v1, ",signingKey="

    .line 88
    .line 89
    invoke-static {v0, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 94
    .line 95
    if-nez v1, :cond_1

    .line 96
    .line 97
    invoke-static {v0, v3}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 107
    .line 108
    array-length v3, v1

    .line 109
    mul-int/lit8 v3, v3, 0x2

    .line 110
    .line 111
    invoke-static {v1, v2, v3}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_1
    const-string v1, "]"

    .line 123
    .line 124
    invoke-static {v0, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    return-object v0
.end method
