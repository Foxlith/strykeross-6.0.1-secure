.class Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljcifs/smb/FileEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Trans2FindFirst2Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmbFindFileBothDirectoryInfo"
.end annotation


# instance fields
.field allocationSize:J

.field changeTime:J

.field creationTime:J

.field eaSize:I

.field endOfFile:J

.field extFileAttributes:I

.field fileIndex:I

.field fileNameLength:I

.field filename:Ljava/lang/String;

.field lastAccessTime:J

.field lastWriteTime:J

.field nextEntryOffset:I

.field shortName:Ljava/lang/String;

.field shortNameLength:I

.field final synthetic this$0:Ljcifs/smb/Trans2FindFirst2Response;


# direct methods
.method public constructor <init>(Ljcifs/smb/Trans2FindFirst2Response;)V
    .locals 0

    iput-object p1, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->this$0:Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTime()J
    .locals 2

    iget-wide v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    return-wide v0
.end method

.method public getAttributes()I
    .locals 1

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lastModified()J
    .locals 2

    iget-wide v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

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
    const-string v2, "SmbFindFileBothDirectoryInfo[nextEntryOffset="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",fileIndex="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",creationTime="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/util/Date;

    .line 31
    .line 32
    iget-wide v3, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    .line 33
    .line 34
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, ",lastAccessTime="

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    new-instance v2, Ljava/util/Date;

    .line 46
    .line 47
    iget-wide v3, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastAccessTime:J

    .line 48
    .line 49
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ",lastWriteTime="

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    new-instance v2, Ljava/util/Date;

    .line 61
    .line 62
    iget-wide v3, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    .line 63
    .line 64
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ",changeTime="

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/util/Date;

    .line 76
    .line 77
    iget-wide v3, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->changeTime:J

    .line 78
    .line 79
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, ",endOfFile="

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-wide v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

    .line 91
    .line 92
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ",allocationSize="

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-wide v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->allocationSize:J

    .line 101
    .line 102
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, ",extFileAttributes="

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, ",fileNameLength="

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, ",eaSize="

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->eaSize:I

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v2, ",shortNameLength="

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->shortNameLength:I

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, ",shortName="

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->shortName:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v2, ",filename="

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    .line 161
    .line 162
    const-string v3, "]"

    .line 163
    .line 164
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v0
.end method
