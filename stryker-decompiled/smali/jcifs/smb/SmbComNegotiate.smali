.class Ljcifs/smb/SmbComNegotiate;
.super Ljcifs/smb/ServerMessageBlock;
.source "SourceFile"


# static fields
.field private static final DIALECTS:Ljava/lang/String; = "\u0002NT LM 0.12\u0000"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/16 v0, 0x72

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    sget v0, Ljcifs/smb/SmbConstants;->DEFAULT_FLAGS2:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    return-void
.end method


# virtual methods
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
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbComNegotiate["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",wordCount="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 23
    .line 24
    const-string v3, ",dialects=NT LM 0.12]"

    .line 25
    .line 26
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "\u0002NT LM 0.12\u0000"

    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v2, v1

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v1

    return p1

    :catch_0
    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
