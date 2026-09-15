.class Ljcifs/smb/NetShareEnum;
.super Ljcifs/smb/SmbComTransaction;
.source "SourceFile"


# static fields
.field private static final DESCR:Ljava/lang/String; = "WrLeh\u0000B13BWz\u0000"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/16 v0, 0x25

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 v0, 0x0

    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    new-instance v1, Ljava/lang/String;

    const-string v2, "\\PIPE\\LANMAN"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    const/16 v1, 0x8

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    const/16 v0, 0x1388

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

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

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "NetShareEnum["

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
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "WrLeh\u0000B13BWz\u0000"

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v2, p2, 0x2

    array-length v3, v1

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    add-int/2addr v2, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v2, 0x2

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v2, v2, 0x4

    sub-int/2addr v2, p2

    return v2

    :catch_0
    return v0
.end method

.method public writeSetupWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
