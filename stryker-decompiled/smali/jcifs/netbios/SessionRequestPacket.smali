.class public Ljcifs/netbios/SessionRequestPacket;
.super Ljcifs/netbios/SessionServicePacket;
.source "SourceFile"


# instance fields
.field private calledName:Ljcifs/netbios/Name;

.field private callingName:Ljcifs/netbios/Name;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    new-instance v0, Ljcifs/netbios/Name;

    invoke-direct {v0}, Ljcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    return-void
.end method

.method public constructor <init>(Ljcifs/netbios/Name;Ljcifs/netbios/Name;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljcifs/netbios/SessionServicePacket;-><init>()V

    const/16 v0, 0x81

    iput v0, p0, Ljcifs/netbios/SessionServicePacket;->type:I

    iput-object p1, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    iput-object p2, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    return-void
.end method


# virtual methods
.method public readTrailerWireFormat(Ljava/io/InputStream;[BI)I
    .locals 1

    iget v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget v0, p0, Ljcifs/netbios/SessionServicePacket;->length:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    invoke-virtual {p1, p2, p3}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result p1

    add-int/2addr p1, p3

    iget-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p2, p1}, Ljcifs/netbios/Name;->readWireFormat([BI)I

    move-result p2

    add-int/2addr p2, p1

    sub-int/2addr p2, p3

    return p2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid session request wire format"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTrailerWireFormat([BI)I
    .locals 2

    iget-object v0, p0, Ljcifs/netbios/SessionRequestPacket;->calledName:Ljcifs/netbios/Name;

    invoke-virtual {v0, p1, p2}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Ljcifs/netbios/SessionRequestPacket;->callingName:Ljcifs/netbios/Name;

    invoke-virtual {v1, p1, v0}, Ljcifs/netbios/Name;->writeWireFormat([BI)I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr p1, p2

    return p1
.end method
