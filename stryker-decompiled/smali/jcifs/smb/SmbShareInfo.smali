.class public Ljcifs/smb/SmbShareInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljcifs/smb/FileEntry;


# instance fields
.field protected netName:Ljava/lang/String;

.field protected remark:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/SmbShareInfo;->type:I

    iput-object p3, p0, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljcifs/smb/SmbShareInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ljcifs/smb/SmbShareInfo;

    iget-object v0, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    iget-object p1, p1, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAttributes()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbShareInfo;->type:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v0, 0x8

    return v0

    :cond_0
    const/16 v0, 0x10

    return v0

    :cond_1
    const/16 v0, 0x20

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "SmbShareInfo[netName="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Ljcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",type=0x"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Ljcifs/smb/SmbShareInfo;->type:I

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    const-string v4, ",remark="

    .line 25
    .line 26
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Ljcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, "]"

    .line 32
    .line 33
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method
