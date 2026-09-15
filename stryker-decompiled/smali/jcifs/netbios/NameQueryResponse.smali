.class Ljcifs/netbios/NameQueryResponse;
.super Ljcifs/netbios/NameServicePacket;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljcifs/netbios/NameServicePacket;-><init>()V

    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    return-void
.end method


# virtual methods
.method public readBodyWireFormat([BI)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/NameServicePacket;->readResourceRecordWireFormat([BI)I

    move-result p1

    return p1
.end method

.method public readRDataWireFormat([BI)I
    .locals 5

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->resultCode:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget v0, p0, Ljcifs/netbios/NameServicePacket;->opCode:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    and-int/lit8 v0, v0, 0x60

    shr-int/lit8 v0, v0, 0x5

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljcifs/netbios/NameServicePacket;->readInt4([BI)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    iget v2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    new-instance v3, Ljcifs/netbios/NbtAddress;

    iget-object v4, p0, Ljcifs/netbios/NameServicePacket;->recordName:Ljcifs/netbios/Name;

    invoke-direct {v3, v4, p1, v1, v0}, Ljcifs/netbios/NbtAddress;-><init>(Ljcifs/netbios/Name;IZI)V

    aput-object v3, p2, v2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    iget p2, p0, Ljcifs/netbios/NameServicePacket;->addrIndex:I

    const/4 v0, 0x0

    aput-object v0, p1, p2

    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameQueryResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",addrEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/netbios/NameServicePacket;->addrEntry:[Ljcifs/netbios/NbtAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeBodyWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeRDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
