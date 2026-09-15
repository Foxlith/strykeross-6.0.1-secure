.class Ljcifs/smb/NtTransQuerySecurityDescResponse;
.super Ljcifs/smb/SmbComNtTransactionResponse;
.source "SourceFile"


# instance fields
.field securityDescriptor:Ljcifs/smb/SecurityDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComNtTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .locals 1

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    :try_start_0
    new-instance v0, Ljcifs/smb/SecurityDescriptor;

    invoke-direct {v0}, Ljcifs/smb/SecurityDescriptor;-><init>()V

    iput-object v0, p0, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    invoke-virtual {v0, p1, p2, p3}, Ljcifs/smb/SecurityDescriptor;->decode([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    sub-int/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readParametersWireFormat([BII)I
    .locals 0

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    const/4 p1, 0x4

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
    const-string v2, "NtTransQuerySecurityResponse["

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
