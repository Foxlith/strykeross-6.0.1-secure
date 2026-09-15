.class Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljcifs/smb/AllocInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Trans2QueryFSInformationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmbInfoAllocation"
.end annotation


# instance fields
.field alloc:J

.field bytesPerSect:I

.field free:J

.field sectPerAlloc:I

.field final synthetic this$0:Ljcifs/smb/Trans2QueryFSInformationResponse;


# direct methods
.method public constructor <init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V
    .locals 0

    iput-object p1, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->this$0:Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapacity()J
    .locals 4

    iget-wide v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFree()J
    .locals 4

    iget-wide v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
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
    const-string v2, "SmbInfoAllocation[alloc="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-wide v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",free="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",sectPerAlloc="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",bytesPerSect="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 41
    .line 42
    const-string v3, "]"

    .line 43
    .line 44
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method
