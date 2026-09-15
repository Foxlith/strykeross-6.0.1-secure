.class Ljcifs/smb/NetServerEnum2;
.super Ljcifs/smb/SmbComTransaction;
.source "SourceFile"


# static fields
.field static final DESCR:[Ljava/lang/String;

.field static final SV_TYPE_ALL:I = -0x1

.field static final SV_TYPE_DOMAIN_ENUM:I = -0x80000000


# instance fields
.field domain:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field serverTypes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WrLehDO\u0000B16BBDz\u0000"

    const-string v1, "WrLehDz\u0000B16BBDz\u0000"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    const/16 p1, 0x25

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 p1, 0x68

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const-string p1, "\\PIPE\\LANMAN"

    iput-object p1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    const/16 p1, 0x8

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const/16 p1, 0x4000

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    const/4 p1, 0x0

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    const/16 p1, 0x1388

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 0

    const/4 p1, 0x0

    return p1
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

.method public reset(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    iput-object p2, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    return-void
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
    const-string v2, "NetServerEnum2["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",name="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",serverTypes="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    .line 33
    .line 34
    const/4 v3, -0x1

    .line 35
    if-ne v2, v3, :cond_0

    .line 36
    .line 37
    const-string v2, "SV_TYPE_ALL"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v2, "SV_TYPE_DOMAIN_ENUM"

    .line 41
    .line 42
    :goto_0
    const-string v3, "]"

    .line 43
    .line 44
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .locals 7

    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/16 v1, 0x68

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    :try_start_0
    sget-object v1, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v4, "ASCII"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-byte v4, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v4, p2, 0x2

    array-length v5, v1

    invoke-static {v1, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v4, v1

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v4, 0x2

    iget v5, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v5, v5

    invoke-static {v5, v6, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v4, 0x4

    iget v5, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    int-to-long v5, v5

    invoke-static {v5, v6, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v4, v4, 0x8

    iget-object v1, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v4, v3}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result v1

    add-int/2addr v4, v1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v4, v3}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result p1

    add-int/2addr v4, p1

    :cond_1
    sub-int/2addr v4, p2

    return v4

    :catch_0
    return v3
.end method

.method public writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
