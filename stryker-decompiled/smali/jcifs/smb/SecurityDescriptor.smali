.class public Ljcifs/smb/SecurityDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aces:[Ljcifs/smb/ACE;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SecurityDescriptor;->decode([BII)I

    return-void
.end method


# virtual methods
.method public decode([BII)I
    .locals 4

    add-int/lit8 p3, p2, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/SecurityDescriptor;->type:I

    add-int/lit8 p3, p2, 0x4

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 p3, p2, 0x8

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 p3, p2, 0xc

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    add-int/lit8 p3, p2, 0x10

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p3

    add-int v0, p2, p3

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    add-int/lit8 v1, v0, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x8

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_2

    if-eqz p3, :cond_0

    new-array p3, v1, [Ljcifs/smb/ACE;

    iput-object p3, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v1, :cond_1

    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    new-instance v3, Ljcifs/smb/ACE;

    invoke-direct {v3}, Ljcifs/smb/ACE;-><init>()V

    aput-object v3, v2, p3

    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    aget-object v2, v2, p3

    invoke-virtual {v2, p1, v0}, Ljcifs/smb/ACE;->decode([BI)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    :cond_1
    sub-int/2addr v0, p2

    return v0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid SecurityDescriptor"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SecurityDescriptor:\n"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    .line 18
    .line 19
    aget-object v2, v2, v1

    .line 20
    .line 21
    invoke-virtual {v2}, Ljcifs/smb/ACE;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "\n"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-string v0, "SecurityDescriptor:\nNULL"

    .line 41
    .line 42
    :cond_1
    return-object v0
.end method
