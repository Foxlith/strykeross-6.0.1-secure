.class public Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/util/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageInfo"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public final display_number:I

.field public freeSpace:J

.field public final internal:Z

.field public final path:Ljava/lang/String;

.field public readonly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    iput-object p1, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->internal:Z

    iput p4, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->display_number:I

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    const/4 v0, 0x1

    if-nez p3, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string p2, "Internal SD card"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-le p4, v0, :cond_2

    const-string p2, "SD card "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p2, "SD card"

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_3

    const-string p2, " (Read only)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    iget-boolean v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->internal:Z

    iget-boolean v3, p1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->internal:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    iget-boolean v3, p1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->display_number:I

    iget v3, p1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->display_number:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    iget-wide v4, p1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_0
    return v1

    :cond_7
    iget-object v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    iget-object p1, p1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    move v0, v1

    :goto_1
    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->internal:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->display_number:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    return-void
.end method
