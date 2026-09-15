.class abstract Ljcifs/smb/SmbComNtTransaction;
.super Ljcifs/smb/SmbComTransaction;
.source "SourceFile"


# static fields
.field private static final NTT_PRIMARY_SETUP_OFFSET:I = 0x45

.field private static final NTT_SECONDARY_PARAMETER_OFFSET:I = 0x33

.field static final NT_TRANSACT_QUERY_SECURITY_DESC:I = 0x6


# instance fields
.field function:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/16 v0, 0x45

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    return-void
.end method


# virtual methods
.method public writeParameterWordsWireFormat([BI)I
    .locals 7

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 v1, 0x0

    const/16 v2, -0x5f

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, p2, 0x1

    iget-byte v3, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    aput-byte v3, p1, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    aput-byte v1, p1, p2

    :goto_0
    add-int/lit8 v3, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v4, v0, 0x2

    aput-byte v1, p1, v3

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    int-to-long v5, v3

    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v3, v0, 0x6

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v3, v0, 0xa

    iget-byte v4, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-eq v4, v2, :cond_1

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v3, v0, 0xe

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v3, v0, 0x12

    :cond_1
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    int-to-long v4, v0

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v3, 0x4

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    if-nez v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    :goto_1
    int-to-long v4, v4

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v3, 0x8

    iget-byte v4, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-ne v4, v2, :cond_3

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    int-to-long v4, v4

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v3, 0xc

    :cond_3
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v3, v0, 0x4

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    iget v4, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    :goto_2
    int-to-long v4, v4

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v3, v0, 0x8

    iget-byte v4, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-ne v4, v2, :cond_5

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    int-to-long v4, v2

    invoke-static {v4, v5, p1, v3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v2, v0, 0xc

    add-int/lit8 v0, v0, 0xd

    aput-byte v1, p1, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v0, 0x9

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    iget v2, p0, Ljcifs/smb/SmbComNtTransaction;->function:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeSetupWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    :goto_3
    sub-int/2addr v0, p2

    return v0
.end method
