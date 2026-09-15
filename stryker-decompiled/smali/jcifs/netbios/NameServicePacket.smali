.class abstract Ljcifs/netbios/NameServicePacket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:I = 0x1

.field static final ACT_ERR:I = 0x6

.field static final ADDITIONAL_OFFSET:I = 0xa

.field static final ANSWER_OFFSET:I = 0x6

.field static final AUTHORITY_OFFSET:I = 0x8

.field static final CFT_ERR:I = 0x7

.field static final FMT_ERR:I = 0x1

.field static final HEADER_LENGTH:I = 0xc

.field static final IMP_ERR:I = 0x4

.field static final IN:I = 0x1

.field static final NB:I = 0x20

.field static final NBSTAT:I = 0x21

.field static final NBSTAT_IN:I = 0x210001

.field static final NB_IN:I = 0x200001

.field static final NS:I = 0x2

.field static final NULL:I = 0xa

.field static final OPCODE_OFFSET:I = 0x2

.field static final QUERY:I = 0x0

.field static final QUESTION_OFFSET:I = 0x4

.field static final RFS_ERR:I = 0x5

.field static final SRV_ERR:I = 0x2

.field static final WACK:I = 0x7


# instance fields
.field additionalCount:I

.field addr:Ljava/net/InetAddress;

.field addrEntry:[Ljcifs/netbios/NbtAddress;

.field addrIndex:I

.field answerCount:I

.field authorityCount:I

.field isAuthAnswer:Z

.field isBroadcast:Z

.field isRecurAvailable:Z

.field isRecurDesired:Z

.field isResponse:Z

.field isTruncated:Z

.field nameTrnId:I

.field opCode:I

.field questionClass:I

.field questionCount:I

.field questionName:Ljcifs/netbios/Name;

.field questionType:I

.field rDataLength:I

.field received:Z

.field recordClass:I

.field recordName:Ljcifs/netbios/Name;

.field recordType:I

.field resultCode:I

.field ttl:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    return-void
.end method

.method public static readInt2([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static readInt4([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method public static readNameTrnId([BI)I
    .locals 0

    invoke-static {p0, p1}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result p0

    return p0
.end method

.method public static writeInt2(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method

.method public static writeInt4(I[BI)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method


# virtual methods
.method public abstract readBodyWireFormat([BI)I
.end method

.method public readHeaderWireFormat([BI)I
    .locals 4

    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    and-int/lit8 v1, v0, 0x78

    shr-int/lit8 v1, v1, 0x3

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    and-int/2addr v0, v3

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    add-int/lit8 p2, p2, 0xa

    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    const/16 p1, 0xc

    return p1
.end method

.method public readQuestionSectionWireFormat([BI)I
    .locals 2

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method public abstract readRDataWireFormat([BI)I
.end method

.method public readResourceRecordWireFormat([BI)I
    .locals 3

    aget-byte v0, p1, p2

    const/16 v1, 0xc0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    iput-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    add-int/lit8 v0, p2, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    :goto_0
    invoke-static {p1, v0}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    add-int/lit8 v1, v0, 0x4

    invoke-static {p1, v1}, Ljcifs/netbios/NameServicePacket;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    add-int/lit8 v1, v0, 0x8

    invoke-static {p1, v1}, Ljcifs/netbios/NameServicePacket;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/lit8 v0, v0, 0xa

    div-int/lit8 v2, v1, 0x6

    new-array v2, v2, [Ljcifs/netbios/NbtAddress;

    iput-object v2, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    add-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->readRDataWireFormat([BI)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method public readWireFormat([BI)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->readBodyWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    const/4 v1, 0x7

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "WACK"

    goto :goto_0

    :cond_1
    const-string v0, "QUERY"

    :goto_0
    iget v2, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_2

    const/4 v6, 0x6

    if-eq v2, v6, :cond_2

    if-eq v2, v1, :cond_2

    invoke-static {v2, v5}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    :cond_2
    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    const-string v2, "NB"

    const-string v6, "NBSTAT"

    const/16 v7, 0x21

    const/16 v8, 0x20

    const-string v9, "0x"

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v10, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v6

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    iget v10, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    if-eq v10, v5, :cond_8

    if-eq v10, v3, :cond_7

    const/16 v3, 0xa

    if-eq v10, v3, :cond_6

    if-eq v10, v8, :cond_9

    if-eq v10, v7, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v3, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v6

    goto :goto_2

    :cond_6
    const-string v2, "NULL"

    goto :goto_2

    :cond_7
    const-string v2, "NS"

    goto :goto_2

    :cond_8
    const-string v2, "A"

    :cond_9
    :goto_2
    new-instance v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "nameTrnId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",isResponse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",opCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isAuthAnswer="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isTruncated="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isRecurAvailable="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isRecurDesired="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isBroadcast="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",resultCode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",questionCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",answerCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",authorityCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",additionalCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",questionName="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",questionType="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",questionClass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    const-string v1, "IN"

    if-ne v0, v5, :cond_a

    move-object v0, v1

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v7, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",recordName="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",recordType="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",recordClass="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    if-ne v0, v5, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v1, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ttl="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",rDataLength="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public abstract writeBodyWireFormat([BI)I
.end method

.method public writeHeaderWireFormat([BI)I
    .locals 5

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->nameTrnId:I

    invoke-static {v0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, p2, 0x2

    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isResponse:Z

    const/16 v2, 0x80

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    shl-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x78

    add-int/2addr v1, v4

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isAuthAnswer:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    add-int/2addr v1, v4

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isTruncated:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    add-int/2addr v1, v4

    iget-boolean v4, p0, Ljcifs/netbios/NameServicePacket;->isRecurDesired:Z

    add-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isRecurAvailable:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iget-boolean v1, p0, Ljcifs/netbios/NameServicePacket;->isBroadcast:Z

    if-eqz v1, :cond_4

    const/16 v3, 0x10

    :cond_4
    add-int/2addr v2, v3

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    and-int/lit8 v1, v1, 0xf

    add-int/2addr v2, v1

    int-to-byte v1, v2

    aput-byte v1, p1, v0

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->questionCount:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->answerCount:I

    add-int/lit8 v1, p2, 0x6

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->authorityCount:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->additionalCount:I

    add-int/lit8 p2, p2, 0xa

    invoke-static {v0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    const/16 p1, 0xc

    return p1
.end method

.method public writeQuestionSectionWireFormat([BI)I
    .locals 3

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Ljcifs/netbios/NameServicePacket;->questionType:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v1, v0, 0x2

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->questionClass:I

    invoke-static {v2, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v0, p2

    return v0
.end method

.method public abstract writeRDataWireFormat([BI)I
.end method

.method public writeResourceRecordWireFormat([BI)I
    .locals 3

    iget-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    iget-object v1, p0, Ljcifs/netbios/NameServicePacket;->questionName:Ljcifs/netbios/Name;

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    const/16 v1, -0x40

    aput-byte v1, p1, p2

    add-int/lit8 v1, p2, 0x2

    const/16 v2, 0xc

    aput-byte v2, p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v0

    add-int v1, v0, p2

    :goto_0
    iget v0, p0, Ljcifs/netbios/NameServicePacket;->recordType:I

    invoke-static {v0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, v1, 0x2

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->recordClass:I

    invoke-static {v2, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    add-int/lit8 v0, v1, 0x4

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->ttl:I

    invoke-static {v2, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt4(I[BI)V

    add-int/lit8 v0, v1, 0x8

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, p1, v1}, Ljcifs/netbios/NameServicePacket;->writeRDataWireFormat([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    invoke-static {v1, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeInt2(I[BI)V

    iget p1, p0, Ljcifs/netbios/NameServicePacket;->rDataLength:I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method public writeWireFormat([BI)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/netbios/NameServicePacket;->writeBodyWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method
