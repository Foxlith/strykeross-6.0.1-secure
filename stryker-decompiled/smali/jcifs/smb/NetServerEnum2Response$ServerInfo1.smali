.class Ljcifs/smb/NetServerEnum2Response$ServerInfo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljcifs/smb/FileEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/NetServerEnum2Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerInfo1"
.end annotation


# instance fields
.field commentOrMasterBrowser:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final synthetic this$0:Ljcifs/smb/NetServerEnum2Response;

.field type:I

.field versionMajor:I

.field versionMinor:I


# direct methods
.method public constructor <init>(Ljcifs/smb/NetServerEnum2Response;)V
    .locals 0

    iput-object p1, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->this$0:Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAttributes()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    iget v0, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
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
    const-string v2, "ServerInfo1[name="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",versionMajor="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMajor:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",versionMinor="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMinor:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",type=0x"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    const-string v4, ",commentOrMasterBrowser="

    .line 45
    .line 46
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Ljcifs/smb/NetServerEnum2Response$ServerInfo1;->commentOrMasterBrowser:Ljava/lang/String;

    .line 50
    .line 51
    const-string v3, "]"

    .line 52
    .line 53
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method
