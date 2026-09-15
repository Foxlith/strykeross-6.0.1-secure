.class Ljcifs/smb/Trans2FindFirst2;
.super Ljcifs/smb/SmbComTransaction;
.source "SourceFile"


# static fields
.field private static final DEFAULT_LIST_COUNT:I = 0xc8

.field private static final DEFAULT_LIST_SIZE:I = 0xffff

.field private static final FLAGS_CLOSE_AFTER_THIS_REQUEST:I = 0x1

.field private static final FLAGS_CLOSE_IF_END_REACHED:I = 0x2

.field private static final FLAGS_FIND_WITH_BACKUP_INTENT:I = 0x10

.field private static final FLAGS_RESUME_FROM_PREVIOUS_END:I = 0x8

.field private static final FLAGS_RETURN_RESUME_KEYS:I = 0x4

.field static final LIST_COUNT:I

.field static final LIST_SIZE:I

.field static final SMB_FILE_BOTH_DIRECTORY_INFO:I = 0x104

.field static final SMB_FILE_NAMES_INFO:I = 0x103

.field static final SMB_FIND_FILE_DIRECTORY_INFO:I = 0x101

.field static final SMB_FIND_FILE_FULL_DIRECTORY_INFO:I = 0x102

.field static final SMB_INFO_QUERY_EAS_FROM_LIST:I = 0x3

.field static final SMB_INFO_QUERY_EA_SIZE:I = 0x2

.field static final SMB_INFO_STANDARD:I = 0x1


# instance fields
.field private flags:I

.field private informationLevel:I

.field private searchAttributes:I

.field private searchStorageType:I

.field private wildcard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.smb.client.listSize"

    const v1, 0xffff

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    const-string v0, "jcifs.smb.client.listCount"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2;->searchStorageType:I

    const-string v1, "\\"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iput-object p2, p0, Ljcifs/smb/Trans2FindFirst2;->wildcard:Ljava/lang/String;

    and-int/lit8 p1, p3, 0x37

    iput p1, p0, Ljcifs/smb/Trans2FindFirst2;->searchAttributes:I

    const/16 p1, 0x32

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, 0x1

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2;->flags:I

    const/16 p1, 0x104

    iput p1, p0, Ljcifs/smb/Trans2FindFirst2;->informationLevel:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    const/16 p1, 0xa

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    sget p1, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

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
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2FindFirst2["

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
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",searchAttributes=0x"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2;->searchAttributes:I

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, ",searchCount="

    .line 26
    .line 27
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget v2, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",flags=0x"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2;->flags:I

    .line 41
    .line 42
    const-string v4, ",informationLevel=0x"

    .line 43
    .line 44
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2;->informationLevel:I

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    const-string v4, ",searchStorageType="

    .line 51
    .line 52
    invoke-static {v2, v3, v1, v4}, Landroid/support/v4/media/session/a;->y(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2;->searchStorageType:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ",filename="

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 66
    .line 67
    const-string v3, "]"

    .line 68
    .line 69
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .locals 3

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2;->searchAttributes:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    sget v1, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x4

    iget v1, p0, Ljcifs/smb/Trans2FindFirst2;->flags:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x6

    iget v1, p0, Ljcifs/smb/Trans2FindFirst2;->informationLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Ljcifs/smb/Trans2FindFirst2;->searchStorageType:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, p2, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/Trans2FindFirst2;->wildcard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public writeSetupWireFormat([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    aput-byte v1, p1, p2

    const/4 p2, 0x0

    aput-byte p2, p1, v0

    const/4 p1, 0x2

    return p1
.end method
