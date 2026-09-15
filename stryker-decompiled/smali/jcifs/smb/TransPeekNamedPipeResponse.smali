.class Ljcifs/smb/TransPeekNamedPipeResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SourceFile"


# static fields
.field static final STATUS_CONNECTION_OK:I = 0x3

.field static final STATUS_DISCONNECTED:I = 0x1

.field static final STATUS_LISTENING:I = 0x2

.field static final STATUS_SERVER_END_CLOSED:I = 0x4


# instance fields
.field available:I

.field private head:I

.field private pipe:Ljcifs/smb/SmbNamedPipe;

.field status:I


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .locals 0

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    iput-object p1, p0, Ljcifs/smb/TransPeekNamedPipeResponse;->pipe:Ljcifs/smb/SmbNamedPipe;

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

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/TransPeekNamedPipeResponse;->available:I

    add-int/lit8 p3, p2, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/TransPeekNamedPipeResponse;->head:I

    add-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/TransPeekNamedPipeResponse;->status:I

    const/4 p1, 0x6

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
    const-string v2, "TransPeekNamedPipeResponse["

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
