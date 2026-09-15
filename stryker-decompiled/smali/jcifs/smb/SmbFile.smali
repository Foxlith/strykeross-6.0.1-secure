.class public Ljcifs/smb/SmbFile;
.super Ljava/net/URLConnection;
.source "SourceFile"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/SmbFile$WriterThread;
    }
.end annotation


# static fields
.field public static final ATTR_ARCHIVE:I = 0x20

.field static final ATTR_COMPRESSED:I = 0x800

.field public static final ATTR_DIRECTORY:I = 0x10

.field static final ATTR_GET_MASK:I = 0x7fff

.field public static final ATTR_HIDDEN:I = 0x2

.field static final ATTR_NORMAL:I = 0x80

.field public static final ATTR_READONLY:I = 0x1

.field static final ATTR_SET_MASK:I = 0x30a7

.field public static final ATTR_SYSTEM:I = 0x4

.field static final ATTR_TEMPORARY:I = 0x100

.field public static final ATTR_VOLUME:I = 0x8

.field static final DEFAULT_ATTR_EXPIRATION_PERIOD:I = 0x1388

.field public static final FILE_NO_SHARE:I = 0x0

.field public static final FILE_SHARE_DELETE:I = 0x4

.field public static final FILE_SHARE_READ:I = 0x1

.field public static final FILE_SHARE_WRITE:I = 0x2

.field static final HASH_DOT:I = 0x2e

.field static final HASH_DOT_DOT:I = 0x5c0

.field static final O_APPEND:I = 0x4

.field static final O_CREAT:I = 0x10

.field static final O_EXCL:I = 0x20

.field static final O_RDONLY:I = 0x1

.field static final O_RDWR:I = 0x3

.field static final O_TRUNC:I = 0x40

.field static final O_WRONLY:I = 0x2

.field public static final TYPE_COMM:I = 0x40

.field public static final TYPE_FILESYSTEM:I = 0x1

.field public static final TYPE_NAMED_PIPE:I = 0x10

.field public static final TYPE_PRINTER:I = 0x20

.field public static final TYPE_SERVER:I = 0x4

.field public static final TYPE_SHARE:I = 0x8

.field public static final TYPE_WORKGROUP:I = 0x2

.field static attrExpirationPeriod:J

.field protected static dfs:Ljcifs/smb/Dfs;

.field static ignoreCopyToException:Z

.field static log:Ljcifs/util/LogStream;


# instance fields
.field addressIndex:I

.field addresses:[Ljcifs/UniAddress;

.field private attrExpiration:J

.field private attributes:I

.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field private blank_resp:Ljcifs/smb/SmbComBlankResponse;

.field private canon:Ljava/lang/String;

.field private createTime:J

.field private dfsReferral:Ljcifs/smb/DfsReferral;

.field fid:I

.field private isExists:Z

.field private lastModified:J

.field opened:Z

.field private share:Ljava/lang/String;

.field private shareAccess:I

.field private size:J

.field private sizeExpiration:J

.field tree:Ljcifs/smb/SmbTree;

.field tree_num:I

.field type:I

.field unc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    :try_start_0
    sget v0, Ljcifs/Config;->socketCount:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v0, "jcifs.smb.client.attrExpirationPeriod"

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Ljcifs/Config;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    const-string v0, "jcifs.smb.client.ignoreCopyToException"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    new-instance v0, Ljcifs/smb/Dfs;

    invoke-direct {v0}, Ljcifs/smb/Dfs;-><init>()V

    sput-object v0, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 4

    .line 3
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .locals 4

    .line 4
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p4, -0x8

    if-nez p1, :cond_0

    iput p4, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 3

    .line 5
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V
    .locals 3

    .line 6
    new-instance v0, Ljava/net/URL;

    const/4 v1, 0x0

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p3, -0x8

    if-nez p1, :cond_0

    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    .line 7
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x7

    iput v0, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-nez p2, :cond_0

    new-instance p2, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const-string v1, "smb://"

    .line 9
    invoke-static {v1, p2}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_0
    iget-object p1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const-string v1, "smb://"

    .line 15
    invoke-static {v1, p2}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    sget-object v1, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    invoke-direct {v0, v1, p2, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    :goto_0
    iget-object p1, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    and-int/lit8 p1, p3, -0x8

    if-nez p1, :cond_1

    iput p3, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Illegal shareAccess parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V
    .locals 5

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isWorkgroup0()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/URL;

    const-string v2, "smb://"

    .line 21
    invoke-static {v2, p2, v1}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    sget-object v2, Ljcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 23
    invoke-static {p2}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v4, p4, 0x10

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 24
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    iget-object v0, p1, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, p1, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_3
    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v2, "\\"

    if-nez v0, :cond_4

    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v0, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-static {v2, p2}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_3

    .line 26
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :goto_3
    iput p3, p0, Ljcifs/smb/SmbFile;->type:I

    iput p4, p0, Ljcifs/smb/SmbFile;->attributes:I

    iput-wide p5, p0, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide p7, p0, Ljcifs/smb/SmbFile;->lastModified:J

    iput-wide p9, p0, Ljcifs/smb/SmbFile;->size:J

    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide p3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide p1, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method private blank_resp()Ljcifs/smb/SmbComBlankResponse;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    if-nez v0, :cond_0

    new-instance v0, Ljcifs/smb/SmbComBlankResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComBlankResponse;-><init>()V

    iput-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->blank_resp:Ljcifs/smb/SmbComBlankResponse;

    return-object v0
.end method

.method private processAces([Ljcifs/smb/ACE;Z)V
    .locals 5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    array-length p2, p1

    new-array v2, p2, [Ljcifs/smb/SID;

    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    aget-object v4, p1, v3

    iget-object v4, v4, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p2, :cond_3

    sub-int p1, p2, v1

    const/16 v3, 0x40

    if-le p1, v3, :cond_1

    move p1, v3

    :cond_1
    iget-object v3, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v3, v2, v1, p1}, Ljcifs/smb/SID;->resolveSids(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;[Ljcifs/smb/SID;II)V

    add-int/lit8 v1, v1, 0x40

    goto :goto_1

    :cond_2
    :goto_2
    array-length p2, p1

    if-ge v1, p2, :cond_3

    aget-object p2, p1, v1

    iget-object p2, p2, Ljcifs/smb/ACE;->sid:Ljcifs/smb/SID;

    iput-object v0, p2, Ljcifs/smb/SID;->origin_server:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v2, p2, Ljcifs/smb/SID;->origin_auth:Ljcifs/smb/NtlmPasswordAuthentication;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private queryFSInformation(I)J
    .locals 5

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, p1}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, p1}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget p1, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {p1}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v1

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->size:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    :cond_0
    iget-object p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {p1}, Ljcifs/smb/AllocInfo;->getFree()J

    move-result-wide v0

    return-wide v0
.end method

.method public static queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    aget-char v3, p0, v0

    const/16 v4, 0x26

    if-ne v3, v4, :cond_1

    if-le v1, v2, :cond_0

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-direct {v3, p0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    new-instance p1, Ljava/lang/String;

    sub-int/2addr v0, v1

    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2

    move v1, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-le v1, v2, :cond_4

    new-instance v0, Ljava/lang/String;

    sub-int v3, v1, v2

    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    new-instance p1, Ljava/lang/String;

    array-length v0, p0

    sub-int/2addr v0, v1

    invoke-direct {p1, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public canRead()Z
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .locals 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public close()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->close(J)V

    return-void
.end method

.method public close(IJ)V
    .locals 3

    .line 2
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljcifs/smb/SmbComClose;

    invoke-direct {v0, p1, p2, p3}, Ljcifs/smb/SmbComClose;-><init>(IJ)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void
.end method

.method public close(J)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Ljcifs/smb/SmbFile;->fid:I

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/SmbFile;->close(IJ)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljcifs/smb/SmbFile;->opened:Z

    return-void
.end method

.method public connect()V
    .locals 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method

.method public connect0()V
    .locals 3

    const-string v0, "Failed to connect to server"

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljcifs/smb/SmbException;

    invoke-direct {v2, v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v1

    new-instance v2, Ljcifs/smb/SmbException;

    invoke-direct {v2, v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public copyTo(Ljcifs/smb/SmbFile;)V
    .locals 14

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v6, Ljcifs/smb/SmbComReadAndX;

    invoke-direct {v6}, Ljcifs/smb/SmbComReadAndX;-><init>()V

    new-instance v7, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v7}, Ljcifs/smb/SmbComReadAndXResponse;-><init>()V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->connect0()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v8, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual/range {v8 .. v13}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Source and destination paths overlap."

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    new-instance v8, Ljcifs/smb/SmbFile$WriterThread;

    invoke-direct {v8, p0}, Ljcifs/smb/SmbFile$WriterThread;-><init>(Ljcifs/smb/SmbFile;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v2, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    iget v3, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    if-ge v2, v3, :cond_2

    iput v2, v1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    goto :goto_1

    :cond_2
    iput v3, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    :goto_1
    iget v1, v0, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 v1, v1, -0x46

    iget v0, v0, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 v0, v0, -0x46

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v0, 0x2

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [[B

    move-object v1, p0

    move-object v2, p1

    move-object v5, v8

    :try_start_1
    invoke-virtual/range {v1 .. v7}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    return-void

    :catchall_0
    move-exception p1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    throw p1

    :cond_3
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups or servers"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v11, p6

    iget-wide v2, v1, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    if-gez v0, :cond_0

    const/16 v0, 0x11

    iput v0, v1, Ljcifs/smb/SmbFile;->attributes:I

    iput-wide v8, v1, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide v8, v1, Ljcifs/smb/SmbFile;->lastModified:J

    iput-boolean v12, v1, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x101

    invoke-virtual {v1, v0, v2}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v2

    iput v2, v1, Ljcifs/smb/SmbFile;->attributes:I

    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/SmbFile;->createTime:J

    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/SmbFile;->lastModified:J

    iput-boolean v10, v1, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Ljcifs/smb/SmbFile;->attrExpiration:J

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->mkdir()V

    iget v3, v1, Ljcifs/smb/SmbFile;->attributes:I

    iget-wide v4, v1, Ljcifs/smb/SmbFile;->createTime:J

    iget-wide v6, v1, Ljcifs/smb/SmbFile;->lastModified:J

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v3, -0x3fffffde    # -2.000008f

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v2

    const v3, -0x3fffffcb    # -2.0000126f

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    const-string v0, "*"

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    :goto_1
    :try_start_1
    array-length v2, v0

    if-ge v12, v2, :cond_b

    new-instance v16, Ljcifs/smb/SmbFile;

    aget-object v2, v0, v12

    invoke-virtual {v2}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v2, v0, v12

    iget v5, v2, Ljcifs/smb/SmbFile;->type:I

    iget v6, v2, Ljcifs/smb/SmbFile;->attributes:I

    iget-wide v7, v2, Ljcifs/smb/SmbFile;->createTime:J

    iget-wide v9, v2, Ljcifs/smb/SmbFile;->lastModified:J

    iget-wide v2, v2, Ljcifs/smb/SmbFile;->size:J

    move-wide/from16 v17, v2

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v19, v12

    move-wide/from16 v11, v17

    invoke-direct/range {v2 .. v12}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    aget-object v2, v0, v19

    move-object/from16 v3, v16

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Ljcifs/smb/SmbFile;->copyTo0(Ljcifs/smb/SmbFile;[[BILjcifs/smb/SmbFile$WriterThread;Ljcifs/smb/SmbComReadAndX;Ljcifs/smb/SmbComReadAndXResponse;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v12, v19, 0x1

    move-object/from16 v11, p6

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :goto_2
    new-instance v2, Ljcifs/smb/SmbException;

    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_3
    new-instance v2, Ljcifs/smb/SmbException;

    iget-object v3, v1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    const/16 v0, 0x80

    :try_start_2
    invoke-virtual {v1, v10, v12, v0, v12}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_2
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v11, 0x102

    const/16 v6, 0x52

    :try_start_3
    iget v0, v1, Ljcifs/smb/SmbFile;->attributes:I

    invoke-virtual {v13, v6, v11, v0, v12}, Ljcifs/smb/SmbFile;->open(IIII)V
    :try_end_3
    .catch Ljcifs/smb/SmbAuthException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljcifs/smb/SmbException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_3
    move-exception v0

    goto/16 :goto_a

    :catch_4
    move-exception v0

    :try_start_4
    iget v2, v13, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_a

    and-int/lit8 v3, v2, -0x2

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v2, p1

    move v10, v6

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    iget v0, v1, Ljcifs/smb/SmbFile;->attributes:I

    invoke-virtual {v13, v10, v11, v0, v12}, Ljcifs/smb/SmbFile;->open(IIII)V

    :goto_4
    move-wide v10, v8

    move v0, v12

    :goto_5
    iget v2, v1, Ljcifs/smb/SmbFile;->fid:I

    move/from16 v6, p3

    invoke-virtual {v15, v2, v10, v11, v6}, Ljcifs/smb/SmbComReadAndX;->setParam(IJI)V

    aget-object v2, p2, v0

    move-object/from16 v7, p6

    invoke-virtual {v7, v2, v12}, Ljcifs/smb/SmbComReadAndXResponse;->setParam([BI)V

    invoke-virtual {v1, v15, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    monitor-enter p4
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, v14, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-nez v2, :cond_9

    :goto_6
    iget-boolean v2, v14, Ljcifs/smb/SmbFile$WriterThread;->ready:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v2, :cond_4

    :try_start_6
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v2, v0

    :try_start_7
    new-instance v0, Ljcifs/smb/SmbException;

    iget-object v3, v13, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    iget-object v2, v14, Ljcifs/smb/SmbFile$WriterThread;->e:Ljcifs/smb/SmbException;

    if-nez v2, :cond_8

    iget v4, v7, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz v4, :cond_6

    monitor-exit p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    new-instance v0, Ljcifs/smb/Trans2SetFileInformation;

    iget v2, v13, Ljcifs/smb/SmbFile;->fid:I

    iget v3, v1, Ljcifs/smb/SmbFile;->attributes:I

    iget-wide v4, v1, Ljcifs/smb/SmbFile;->createTime:J

    iget-wide v6, v1, Ljcifs/smb/SmbFile;->lastModified:J

    move-object/from16 v19, v0

    move/from16 v20, v2

    move/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    invoke-direct/range {v19 .. v25}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v2, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v2}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    invoke-virtual {v13, v0, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    invoke-virtual {v13, v8, v9}, Ljcifs/smb/SmbFile;->close(J)V
    :try_end_8
    .catch Ljcifs/smb/SmbException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    goto :goto_b

    :cond_6
    :try_start_9
    aget-object v3, p2, v0

    move-object/from16 v2, p4

    move-object/from16 v5, p1

    move-object v8, v7

    move-wide v6, v10

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile$WriterThread;->write([BILjcifs/smb/SmbFile;J)V

    monitor-exit p4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    move v0, v12

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    :try_start_a
    iget v2, v8, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I
    :try_end_a
    .catch Ljcifs/smb/SmbException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    int-to-long v2, v2

    add-long/2addr v10, v2

    const-wide/16 v8, 0x0

    goto :goto_5

    :cond_8
    :try_start_b
    throw v2

    :cond_9
    throw v2

    :goto_9
    monitor-exit p4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0

    :cond_a
    throw v0
    :try_end_c
    .catch Ljcifs/smb/SmbException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_a
    :try_start_d
    sget-boolean v2, Ljcifs/smb/SmbFile;->ignoreCopyToException:Z

    if-eqz v2, :cond_c

    sget v2, Ljcifs/util/LogStream;->level:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_7

    :cond_b
    :goto_b
    return-void

    :cond_c
    new-instance v2, Ljcifs/smb/SmbException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy file from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljcifs/smb/SmbFile;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->close()V

    throw v0
.end method

.method public createNewFile()V
    .locals 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x33

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbFile;->close(IJ)V

    return-void

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createTime()J
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public delete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-lez v0, :cond_0

    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->lastModified:J

    iput-boolean v2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x101

    invoke-virtual {p0, v0, v5}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v5

    iput v5, p0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v5

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->createTime:J

    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v5

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->lastModified:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z

    :cond_0
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->setReadWrite()V

    :cond_1
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "delete: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    :try_start_0
    const-string v0, "*"

    const/16 v1, 0x16

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v1, v5, v5}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_3

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->delete()V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    const v2, -0x3ffffff1    # -2.0000036f

    if-ne v1, v2, :cond_4

    :cond_3
    new-instance v0, Ljcifs/smb/SmbComDeleteDirectory;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDeleteDirectory;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_2

    :cond_4
    throw v0

    :cond_5
    new-instance v0, Ljcifs/smb/SmbComDelete;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComDelete;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    iput-wide v3, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void

    :cond_6
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doConnect()V
    .locals 10

    const-string v0, "doConnect: "

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v2, v2, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-static {v1, v2}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object v2

    iget-object v4, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2, v4}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v4

    iput-object v4, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v6, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v7, v5, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v8, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v6, v4, v7, v3, v8}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    iput-boolean v6, v5, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    iget-object v5, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v6, v5, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    const/4 v9, 0x2

    if-eqz v6, :cond_2

    iput v9, v5, Ljcifs/smb/SmbTree;->connectionState:I

    :cond_2
    :try_start_0
    sget v5, Ljcifs/util/LogStream;->level:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    sget-object v5, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_3
    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v1, :cond_5

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2, v0}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    :cond_4
    :goto_4
    invoke-virtual {v0, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_5

    :cond_5
    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljcifs/smb/NtlmAuthenticator;->requestNtlmPasswordAuthentication(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v1

    if-eqz v1, :cond_7

    iput-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v2, v1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    iget-object v2, v0, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    iget-object v5, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v1, v4, v2, v3, v5}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    move-result-object v1

    if-eqz v1, :cond_6

    move v7, v8

    :cond_6
    iput-boolean v7, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-boolean v1, v0, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    if-eqz v1, :cond_4

    iput v9, v0, Ljcifs/smb/SmbTree;->connectionState:I

    goto :goto_4

    :goto_5
    return-void

    :cond_7
    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v8, :cond_8

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->hasNextAddress()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_8
    throw v0
.end method

.method public doDfsRootEnum()[Ljcifs/smb/FileEntry;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ncacn_np:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[\\PIPE\\netdfs]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v0, v1}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v0

    const/4 v1, 0x4

    :try_start_0
    new-instance v2, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v3, v2, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljcifs/dcerpc/msrpc/MsrpcDfsRootEnum;->getEntries()[Ljcifs/smb/FileEntry;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_0

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v3, Ljcifs/smb/SmbException;

    iget v2, v2, Ljcifs/dcerpc/msrpc/netdfs$NetrDfsEnumEx;->retval:I

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_2

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    :goto_2
    throw v2
.end method

.method public doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 7

    if-eqz p6, :cond_1

    instance-of v0, p6, Ljcifs/smb/DosFileFilter;

    if-eqz v0, :cond_1

    move-object p4, p6

    check-cast p4, Ljcifs/smb/DosFileFilter;

    iget-object v0, p4, Ljcifs/smb/DosFileFilter;->wildcard:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p3, v0

    :cond_0
    iget p4, p4, Ljcifs/smb/DosFileFilter;->attributes:I

    :cond_1
    move-object v3, p3

    move v4, p4

    :try_start_0
    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    if-nez p3, :cond_3

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    goto :goto_1

    :cond_4
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :goto_2
    new-instance p2, Ljcifs/smb/SmbException;

    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    new-instance p2, Ljcifs/smb/SmbException;

    iget-object p3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public doFindFirstNext(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 25

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_b

    new-instance v2, Ljcifs/smb/Trans2FindFirst2;

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct {v2, v1, v3, v4}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v15, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {v15}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v10, 0x3

    if-lt v1, v10, :cond_0

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doFindFirstNext: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v12, v2, v15}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v11, v15, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    new-instance v8, Ljcifs/smb/Trans2FindNext2;

    iget v1, v15, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    iget-object v2, v15, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    invoke-direct {v8, v11, v1, v2}, Ljcifs/smb/Trans2FindNext2;-><init>(IILjava/lang/String;)V

    const/4 v1, 0x2

    iput-byte v1, v15, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    :goto_0
    const/4 v1, 0x0

    move v9, v1

    :goto_1
    iget v1, v15, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-ge v9, v1, :cond_7

    iget-object v1, v15, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v1, v1, v9

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v10, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    sget v3, Ljcifs/smb/SmbFile;->HASH_DOT:I

    if-eq v2, v3, :cond_1

    sget v3, Ljcifs/smb/SmbFile;->HASH_DOT_DOT:I

    if-ne v2, v3, :cond_3

    :cond_1
    const-string v2, "."

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".."

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v24, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move v13, v11

    goto :goto_4

    :cond_3
    if-eqz v13, :cond_4

    invoke-interface {v13, v12, v6}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v7, Ljcifs/smb/SmbFile;

    const/4 v4, 0x1

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getAttributes()I

    move-result v5

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->createTime()J

    move-result-wide v16

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->lastModified()J

    move-result-wide v18

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->length()J

    move-result-wide v20

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v6, v16

    move-object/from16 v24, v8

    move/from16 v16, v9

    move-wide/from16 v8, v18

    move/from16 v17, v10

    move v13, v11

    move-wide/from16 v10, v20

    invoke-direct/range {v1 .. v11}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    move-object/from16 v1, v23

    if-eqz v14, :cond_5

    invoke-interface {v14, v1}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object/from16 v1, v22

    goto :goto_3

    :goto_4
    add-int/lit8 v9, v16, 0x1

    move v11, v13

    move/from16 v10, v17

    move-object/from16 v8, v24

    move-object/from16 v13, p5

    goto/16 :goto_1

    :cond_7
    move-object/from16 v24, v8

    move/from16 v17, v10

    move v13, v11

    iget-boolean v2, v15, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    if-nez v2, :cond_9

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    iget v1, v15, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    iget-object v2, v15, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    move-object/from16 v3, v24

    invoke-virtual {v3, v1, v2}, Ljcifs/smb/Trans2FindNext2;->reset(ILjava/lang/String;)V

    invoke-virtual {v15}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    invoke-virtual {v12, v3, v15}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    move-object v8, v3

    move v11, v13

    move/from16 v10, v17

    move-object/from16 v13, p5

    goto/16 :goto_0

    :cond_9
    :goto_5
    :try_start_0
    new-instance v0, Ljcifs/smb/SmbComFindClose2;

    invoke-direct {v0, v13}, Ljcifs/smb/SmbComFindClose2;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_a

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_a
    :goto_6
    return-void

    :cond_b
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " directory must end with \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doMsrpcShareEnum()[Ljcifs/smb/FileEntry;
    .locals 5

    new-instance v0, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ncacn_np:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljcifs/UniAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[\\PIPE\\srvsvc]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-static {v1, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    move-result-object v1

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {v1, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    iget v3, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljcifs/dcerpc/msrpc/MsrpcShareEnum;->getEntries()[Ljcifs/smb/FileEntry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_0

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v3, Ljcifs/smb/SmbException;

    iget v0, v0, Ljcifs/dcerpc/msrpc/srvsvc$ShareEnumAll;->retval:I

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_2

    sget-object v2, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2
    :goto_2
    throw v0
.end method

.method public doNetServerEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 26

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    iget-object v0, v11, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    :goto_0
    const/4 v9, 0x2

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->connect0()V

    new-instance v0, Ljcifs/smb/NetServerEnum2;

    iget-object v1, v11, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v1, v1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v1, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v1, v1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v1, v1, Ljcifs/smb/SmbTransport$ServerData;->oemDomainName:Ljava/lang/String;

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v2}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v1}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    :goto_1
    move-object v10, v0

    move-object v7, v1

    goto :goto_2

    :cond_1
    if-ne v0, v9, :cond_d

    new-instance v0, Ljcifs/smb/NetServerEnum2;

    iget-object v1, v11, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/NetServerEnum2;-><init>(Ljava/lang/String;I)V

    new-instance v1, Ljcifs/smb/NetServerEnum2Response;

    invoke-direct {v1}, Ljcifs/smb/NetServerEnum2Response;-><init>()V

    goto :goto_1

    :goto_2
    invoke-virtual {v11, v10, v7}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/16 v1, 0xea

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v7, Ljcifs/smb/SmbComTransactionResponse;->status:I

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0

    :cond_3
    :goto_3
    if-ne v0, v1, :cond_4

    move/from16 v16, v2

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    :goto_4
    iget v0, v7, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-eqz v16, :cond_5

    sub-int/2addr v0, v2

    :cond_5
    move v8, v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v8, :cond_a

    iget-object v0, v7, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v13, :cond_7

    invoke-interface {v13, v11, v6}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move/from16 v17, v5

    move-object/from16 v25, v7

    move/from16 v18, v8

    move v11, v9

    move-object v13, v10

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v4, Ljcifs/smb/SmbFile;

    invoke-interface {v0}, Ljcifs/smb/FileEntry;->getType()I

    move-result v3

    const/16 v17, 0x11

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v15, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v24, v6

    move-wide/from16 v5, v18

    move-object/from16 v25, v7

    move/from16 v18, v8

    move-wide/from16 v7, v20

    move v11, v9

    move-object v13, v10

    move-wide/from16 v9, v22

    invoke-direct/range {v0 .. v10}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz v14, :cond_8

    invoke-interface {v14, v15}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v5, v17, 0x1

    move v9, v11

    move-object v10, v13

    move/from16 v8, v18

    move-object/from16 v7, v25

    move-object/from16 v11, p0

    move-object/from16 v13, p5

    goto :goto_5

    :cond_a
    move-object/from16 v25, v7

    move v11, v9

    move-object v13, v10

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    if-eq v0, v11, :cond_b

    goto :goto_7

    :cond_b
    const/16 v0, -0x29

    iput-byte v0, v13, Ljcifs/smb/SmbComTransaction;->subCommand:B

    move-object/from16 v1, v25

    iget-object v0, v1, Ljcifs/smb/NetServerEnum2Response;->lastName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v0}, Ljcifs/smb/NetServerEnum2;->reset(ILjava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/SmbComTransactionResponse;->reset()V

    if-nez v16, :cond_c

    :goto_7
    return-void

    :cond_c
    move-object v7, v1

    move v9, v11

    move-object v10, v13

    move-object/from16 v11, p0

    move-object/from16 v13, p5

    goto/16 :goto_2

    :cond_d
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The requested list operations is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    iget-object v3, v2, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doNetShareEnum()[Ljcifs/smb/FileEntry;
    .locals 3

    new-instance v0, Ljcifs/smb/NetShareEnum;

    invoke-direct {v0}, Ljcifs/smb/NetShareEnum;-><init>()V

    new-instance v1, Ljcifs/smb/NetShareEnumResponse;

    invoke-direct {v1}, Ljcifs/smb/NetShareEnumResponse;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget v0, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    if-nez v0, :cond_0

    iget-object v0, v1, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    return-object v0

    :cond_0
    new-instance v0, Ljcifs/smb/SmbException;

    iget v1, v1, Ljcifs/smb/SmbComTransactionResponse;->status:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    throw v0
.end method

.method public doShareEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    iget-object v0, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v12, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v3, v4}, Ljcifs/smb/Dfs;->isTrustedDomain(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doDfsRootEnum()[Ljcifs/smb/FileEntry;

    move-result-object v0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_2
    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v1, :cond_1

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3
    if-eqz v0, :cond_5

    const/4 v4, 0x3

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doConnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doMsrpcShareEnum()[Ljcifs/smb/FileEntry;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v5, v0

    :try_start_3
    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v4, :cond_2

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->doNetShareEnum()[Ljcifs/smb/FileEntry;

    move-result-object v0

    :goto_5
    move v5, v3

    :goto_6
    array-length v6, v0

    if-ge v5, v6, :cond_5

    aget-object v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :goto_7
    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v4, :cond_4

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, v1, Ljcifs/smb/SmbException;

    if-nez v0, :cond_6

    new-instance v0, Ljcifs/smb/SmbException;

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    check-cast v1, Ljcifs/smb/SmbException;

    throw v1

    :cond_7
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/FileEntry;

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v14, :cond_8

    invoke-interface {v14, v12, v10}, Ljcifs/smb/SmbFilenameFilter;->accept(Ljcifs/smb/SmbFile;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v11, Ljcifs/smb/SmbFile;

    invoke-interface {v1}, Ljcifs/smb/FileEntry;->getType()I

    move-result v4

    const/16 v5, 0x11

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v10

    move-object/from16 p3, v0

    move-object v0, v10

    move-object v14, v11

    move-wide/from16 v10, v16

    invoke-direct/range {v1 .. v11}, Ljcifs/smb/SmbFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;IIJJJ)V

    if-eqz v15, :cond_9

    invoke-interface {v15, v14}, Ljcifs/smb/SmbFileFilter;->accept(Ljcifs/smb/SmbFile;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_9
    move-object/from16 v0, p3

    move-object/from16 v14, p5

    goto :goto_8

    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    move-object/from16 p3, v0

    goto :goto_9

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The requested list operations is invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v12, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " directory must end with \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljcifs/smb/SmbFile;

    if-eqz v0, :cond_1

    check-cast p1, Ljcifs/smb/SmbFile;

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    iget-object v1, p1, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljcifs/UniAddress;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public exists()Z
    .locals 4

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    return v0

    :cond_0
    const/16 v0, 0x11

    iput v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->createTime:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    :try_start_0
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getHostName()Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v2, "IPC$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x101

    invoke-virtual {p0, v0, v2}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getAttributes()I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-interface {v0}, Ljcifs/smb/Info;->getCreateTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->createTime:J

    invoke-interface {v0}, Ljcifs/smb/Info;->getLastWriteTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljcifs/smb/SmbFile;->lastModified:J

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    :goto_1
    iput-boolean v1, p0, Ljcifs/smb/SmbFile;->isExists:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    throw v0

    :catch_1
    :goto_3
    :sswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->isExists:Z

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3ffffff1 -> :sswitch_0
        -0x3fffffcd -> :sswitch_0
        -0x3fffffcc -> :sswitch_0
        -0x3fffffc6 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAddress()Ljcifs/UniAddress;
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getFirstAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getAttributes()I
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit16 v0, v0, 0x7fff

    return v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "smb://"

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getContentLength()I
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDfsPath()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smb:/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    iget-object v1, v1, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDiskFreeSpace()J
    .locals 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    :goto_0
    const/16 v0, 0x3ef

    :try_start_0
    invoke-direct {p0, v0}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v1

    const v3, -0x3fffffff    # -2.0000002f

    if-eq v1, v3, :cond_3

    const v3, -0x3ffffffd    # -2.0000007f

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    throw v0

    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Ljcifs/smb/SmbFile;->queryFSInformation(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFirstAddress()Ljcifs/UniAddress;
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string v5, "server"

    invoke-static {v3, v5}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    new-array v1, v4, [Ljcifs/UniAddress;

    iput-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    invoke-static {v5}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v5, "address"

    invoke-static {v3, v5}, Ljcifs/smb/SmbFile;->queryLookup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    new-array v3, v4, [Ljcifs/UniAddress;

    iput-object v3, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    new-instance v4, Ljcifs/UniAddress;

    invoke-static {v1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v4, v1}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :try_start_0
    const-string v1, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v1

    new-array v2, v4, [Ljcifs/UniAddress;

    iput-object v2, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    invoke-virtual {v1}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v1

    aput-object v1, v2, v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    invoke-static {v0, v4}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_2

    :cond_2
    throw v0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v1, v0}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v1, v4}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    :goto_2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getNextAddress()Ljcifs/UniAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    iget-object v3, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "smb://"

    return-object v0
.end method

.method public getNextAddress()Ljcifs/UniAddress;
    .locals 3

    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "smb://"

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x2f

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    return-object v0
.end method

.method public getSecurity()[Ljcifs/smb/ACE;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->getSecurity(Z)[Ljcifs/smb/ACE;

    move-result-object v0

    return-object v0
.end method

.method public getSecurity(Z)[Ljcifs/smb/ACE;
    .locals 5

    .line 2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x20000

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v0

    new-instance v1, Ljcifs/smb/NtTransQuerySecurityDesc;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Ljcifs/smb/NtTransQuerySecurityDesc;-><init>(II)V

    new-instance v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;

    invoke-direct {v2}, Ljcifs/smb/NtTransQuerySecurityDescResponse;-><init>()V

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    iget-object v0, v2, Ljcifs/smb/NtTransQuerySecurityDescResponse;->securityDescriptor:Ljcifs/smb/SecurityDescriptor;

    iget-object v0, v0, Ljcifs/smb/SecurityDescriptor;->aces:[Ljcifs/smb/ACE;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    throw p1
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getServerWithDfs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShare()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    return-object v0
.end method

.method public getShareSecurity(Z)[Ljcifs/smb/ACE;
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServerWithDfs()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;

    .line 15
    .line 16
    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 17
    .line 18
    iget-object v2, v2, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "ncacn_np:"

    .line 24
    .line 25
    const-string v3, "[\\PIPE\\srvsvc]"

    .line 26
    .line 27
    invoke-static {v2, v0, v3}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 32
    .line 33
    invoke-static {v0, v2}, Ljcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x1

    .line 38
    :try_start_0
    invoke-virtual {v0, v1}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V

    .line 39
    .line 40
    .line 41
    iget v3, v1, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    .line 42
    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v1}, Ljcifs/dcerpc/msrpc/MsrpcShareGetInfo;->getSecurity()[Ljcifs/smb/ACE;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-direct {p0, v1, p1}, Ljcifs/smb/SmbFile;->processAces([Ljcifs/smb/ACE;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 63
    .line 64
    if-lt v0, v2, :cond_1

    .line 65
    .line 66
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    return-object v1

    .line 72
    :cond_2
    :try_start_2
    new-instance p1, Ljcifs/smb/SmbException;

    .line 73
    .line 74
    iget v1, v1, Ljcifs/dcerpc/msrpc/srvsvc$ShareGetInfo;->retval:I

    .line 75
    .line 76
    invoke-direct {p1, v1, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 77
    .line 78
    .line 79
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcHandle;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :catch_1
    move-exception v0

    .line 85
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 86
    .line 87
    if-lt v1, v2, :cond_3

    .line 88
    .line 89
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    :goto_3
    throw p1
.end method

.method public getType()I
    .locals 3

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v1, "IPC$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    :goto_1
    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v1, "LPT1:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->service:Ljava/lang/String;

    const-string v1, "COMM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x40

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljcifs/netbios/NbtAddress;

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v0

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_8

    :cond_7
    iput v1, p0, Ljcifs/smb/SmbFile;->type:I

    return v1

    :cond_8
    const/4 v0, 0x4

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljcifs/smb/SmbException;

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    :goto_2
    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    return v0
.end method

.method public getUncPath()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v1, "\\\\"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const/16 v2, 0x2f

    const/16 v3, 0x5c

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUncPath0()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [C

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x2f

    const/4 v9, 0x1

    if-ge v4, v2, :cond_d

    if-eqz v6, :cond_b

    const/4 v7, 0x2

    if-eq v6, v9, :cond_0

    if-eq v6, v7, :cond_9

    goto/16 :goto_4

    :cond_0
    aget-char v10, v0, v4

    if-ne v10, v8, :cond_1

    goto :goto_4

    :cond_1
    const/16 v11, 0x2e

    if-ne v10, v11, :cond_3

    add-int/lit8 v12, v4, 0x1

    if-ge v12, v2, :cond_2

    aget-char v13, v0, v12

    if-ne v13, v8, :cond_3

    :cond_2
    move v4, v12

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v4, 0x1

    if-ge v12, v2, :cond_8

    if-ne v10, v11, :cond_8

    aget-char v10, v0, v12

    if-ne v10, v11, :cond_8

    add-int/lit8 v10, v4, 0x2

    if-ge v10, v2, :cond_4

    aget-char v11, v0, v10

    if-ne v11, v8, :cond_8

    :cond_4
    if-ne v5, v9, :cond_5

    :goto_1
    move v4, v10

    goto :goto_4

    :cond_5
    :goto_2
    add-int/lit8 v4, v5, -0x1

    if-le v4, v9, :cond_7

    add-int/lit8 v5, v5, -0x2

    aget-char v5, v1, v5

    if-ne v5, v8, :cond_6

    goto :goto_3

    :cond_6
    move v5, v4

    goto :goto_2

    :cond_7
    :goto_3
    move v5, v4

    goto :goto_1

    :cond_8
    move v6, v7

    :cond_9
    aget-char v7, v0, v4

    if-ne v7, v8, :cond_a

    move v6, v9

    :cond_a
    add-int/lit8 v8, v5, 0x1

    aput-char v7, v1, v5

    move v5, v8

    goto :goto_4

    :cond_b
    aget-char v6, v0, v4

    if-eq v6, v8, :cond_c

    return-object v7

    :cond_c
    add-int/lit8 v7, v5, 0x1

    aput-char v6, v1, v5

    move v5, v7

    move v6, v9

    :goto_4
    add-int/2addr v4, v9

    goto :goto_0

    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    const-string v2, "\\"

    if-le v5, v9, :cond_11

    add-int/lit8 v3, v5, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_e

    iget-object v0, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    :goto_6
    iput-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_7

    :cond_e
    if-ne v0, v3, :cond_f

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_f
    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v2, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    aget-char v1, v1, v3

    if-ne v1, v8, :cond_10

    move v5, v3

    :cond_10
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/16 v1, 0x5c

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    goto :goto_7

    :cond_11
    iput-object v7, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    goto :goto_6

    :cond_12
    :goto_7
    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    return-object v0
.end method

.method public hasNextAddress()Z
    .locals 2

    iget v0, p0, Ljcifs/smb/SmbFile;->addressIndex:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->addresses:[Ljcifs/UniAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->hashCode()I

    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->canon:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    if-eqz v0, :cond_0

    iget v0, v0, Ljcifs/smb/SmbTree;->connectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDirectory()Z
    .locals 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public isFile()Z
    .locals 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isHidden()Z
    .locals 4

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    const-string v3, "$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v0, p0, Ljcifs/smb/SmbFile;->attributes:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public isOpen()Z
    .locals 2

    iget-boolean v0, p0, Ljcifs/smb/SmbFile;->opened:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ljcifs/smb/SmbFile;->tree_num:I

    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget v1, v1, Ljcifs/smb/SmbTree;->tree_num:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWorkgroup0()Z
    .locals 4

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->share:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAddress()Ljcifs/UniAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljcifs/netbios/NbtAddress;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljcifs/UniAddress;->getAddress()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getNameType()I

    move-result v0

    const/16 v3, 0x1d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_2

    :cond_1
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    return v1

    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Ljcifs/smb/SmbFile;->type:I

    :cond_3
    const/4 v0, 0x0

    return v0

    :cond_4
    :goto_0
    iput v2, p0, Ljcifs/smb/SmbFile;->type:I

    return v1
.end method

.method public lastModified()J
    .locals 2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->lastModified:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()J
    .locals 4

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct {v0, v2}, Ljcifs/smb/Trans2QueryFSInformationResponse;-><init>(I)V

    new-instance v1, Ljcifs/smb/Trans2QueryFSInformation;

    invoke-direct {v1, v2}, Ljcifs/smb/Trans2QueryFSInformation;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    invoke-interface {v0}, Ljcifs/smb/AllocInfo;->getCapacity()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    iget v0, p0, Ljcifs/smb/SmbFile;->type:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x102

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbFile;->queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;

    move-result-object v0

    invoke-interface {v0}, Ljcifs/smb/Info;->getSize()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iget-wide v0, p0, Ljcifs/smb/SmbFile;->size:J

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x16

    const/4 v1, 0x0

    const-string v2, "*"

    invoke-virtual {p0, v2, v0, v1, v1}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;
    .locals 8

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public list(Ljcifs/smb/SmbFilenameFilter;)[Ljava/lang/String;
    .locals 3

    .line 3
    const/16 v0, 0x16

    const/4 v1, 0x0

    const-string v2, "*"

    invoke-virtual {p0, v2, v0, p1, v1}, Ljcifs/smb/SmbFile;->list(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public listFiles()[Ljcifs/smb/SmbFile;
    .locals 3

    .line 1
    const/16 v0, 0x16

    const/4 v1, 0x0

    const-string v2, "*"

    invoke-virtual {p0, v2, v0, v1, v1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Ljcifs/smb/SmbFile;
    .locals 2

    .line 2
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .locals 8

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ljcifs/smb/SmbFile;->doEnum(Ljava/util/ArrayList;ZLjava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljcifs/smb/SmbFile;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljcifs/smb/SmbFile;

    return-object p1
.end method

.method public listFiles(Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;
    .locals 3

    .line 4
    const/16 v0, 0x16

    const/4 v1, 0x0

    const-string v2, "*"

    invoke-virtual {p0, v2, v0, v1, p1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public listFiles(Ljcifs/smb/SmbFilenameFilter;)[Ljcifs/smb/SmbFile;
    .locals 3

    .line 5
    const/16 v0, 0x16

    const/4 v1, 0x0

    const-string v2, "*"

    invoke-virtual {p0, v2, v0, p1, v1}, Ljcifs/smb/SmbFile;->listFiles(Ljava/lang/String;ILjcifs/smb/SmbFilenameFilter;Ljcifs/smb/SmbFileFilter;)[Ljcifs/smb/SmbFile;

    move-result-object p1

    return-object p1
.end method

.method public mkdir()V
    .locals 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    const-string v2, "mkdir: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljcifs/smb/SmbComCreateDirectory;

    invoke-direct {v1, v0}, Ljcifs/smb/SmbComCreateDirectory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void

    :cond_1
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mkdirs()V
    .locals 3

    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v0, v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->mkdirs()V

    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->mkdir()V

    :catch_0
    return-void
.end method

.method public open(IIII)V
    .locals 1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbFile;->fid:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljcifs/smb/SmbFile;->opened:Z

    iget-object p1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget p1, p1, Ljcifs/smb/SmbTree;->tree_num:I

    iput p1, p0, Ljcifs/smb/SmbFile;->tree_num:I

    return-void
.end method

.method public open0(IIII)I
    .locals 10

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljcifs/smb/SmbComNTCreateAndXResponse;

    invoke-direct {v0}, Ljcifs/smb/SmbComNTCreateAndXResponse;-><init>()V

    new-instance v9, Ljcifs/smb/SmbComNTCreateAndX;

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget v5, p0, Ljcifs/smb/SmbFile;->shareAccess:I

    const/4 v8, 0x0

    move-object v1, v9

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Ljcifs/smb/SmbComNTCreateAndX;-><init>(Ljava/lang/String;IIIIILjcifs/smb/ServerMessageBlock;)V

    instance-of p1, p0, Ljcifs/smb/SmbNamedPipe;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    or-int/lit8 p1, p1, 0x16

    iput p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    iget p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, v9, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    iput-boolean p2, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    :cond_1
    invoke-virtual {p0, v9, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget p1, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    iget p3, v0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    and-int/lit16 p3, p3, 0x7fff

    iput p3, p0, Ljcifs/smb/SmbFile;->attributes:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sget-wide v0, Ljcifs/smb/SmbFile;->attrExpirationPeriod:J

    add-long/2addr p3, v0

    iput-wide p3, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iput-boolean p2, p0, Ljcifs/smb/SmbFile;->isExists:Z

    goto :goto_0

    :cond_2
    new-instance p3, Ljcifs/smb/SmbComOpenAndXResponse;

    invoke-direct {p3}, Ljcifs/smb/SmbComOpenAndXResponse;-><init>()V

    new-instance p4, Ljcifs/smb/SmbComOpenAndX;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p4, v0, p2, p1, v1}, Ljcifs/smb/SmbComOpenAndX;-><init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p0, p4, p3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget p1, p3, Ljcifs/smb/SmbComOpenAndXResponse;->fid:I

    :goto_0
    return p1
.end method

.method public pathNamesPossiblyEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    const/16 v1, 0x2e

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    return v7

    :cond_0
    if-le v0, v7, :cond_1

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_1

    return v7

    :cond_1
    if-ne v6, v0, :cond_2

    const/4 v2, 0x1

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    return v7
.end method

.method public queryPath(Ljava/lang/String;I)Ljcifs/smb/Info;
    .locals 4

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryPath: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse;

    invoke-direct {v0, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;-><init>(I)V

    new-instance v1, Ljcifs/smb/Trans2QueryPathInformation;

    invoke-direct {v1, p1, p2}, Ljcifs/smb/Trans2QueryPathInformation;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    iget-object p1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    return-object p1

    :cond_1
    new-instance p2, Ljcifs/smb/SmbComQueryInformationResponse;

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v0, v0, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object v0, v0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v0, v0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v0, v0, Ljcifs/smb/SmbTransport$ServerData;->serverTimeZone:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    invoke-direct {p2, v0, v1}, Ljcifs/smb/SmbComQueryInformationResponse;-><init>(J)V

    new-instance v0, Ljcifs/smb/SmbComQueryInformation;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbComQueryInformation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-object p2
.end method

.method public renameTo(Ljcifs/smb/SmbFile;)V
    .locals 3

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Invalid operation for workgroups, servers, or shares"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p1, v0}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, v2}, Ljcifs/smb/SmbTree;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "renameTo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->sizeExpiration:J

    iput-wide v0, p0, Ljcifs/smb/SmbFile;->attrExpiration:J

    iput-wide v0, p1, Ljcifs/smb/SmbFile;->attrExpiration:J

    new-instance v0, Ljcifs/smb/SmbComRename;

    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    iget-object p1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljcifs/smb/SmbComRename;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljcifs/smb/SmbFile;->blank_resp()Ljcifs/smb/SmbComBlankResponse;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    return-void

    :cond_1
    new-instance p1, Ljcifs/smb/SmbException;

    invoke-direct {p1, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljcifs/smb/SmbException;

    invoke-direct {p1, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolveDfs(Ljcifs/smb/ServerMessageBlock;)V
    .locals 8

    .line 1
    instance-of v0, p1, Ljcifs/smb/SmbComClose;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->connect0()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Ljcifs/smb/SmbFile;->dfs:Ljcifs/smb/Dfs;

    .line 10
    .line 11
    iget-object v2, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 12
    .line 13
    iget-object v3, v2, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    .line 14
    .line 15
    iget-object v3, v3, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 16
    .line 17
    iget-object v3, v3, Ljcifs/smb/SmbTransport;->tconHostName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, v2, Ljcifs/smb/SmbTree;->share:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v5, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 24
    .line 25
    invoke-virtual {v1, v3, v2, v4, v5}, Ljcifs/smb/Dfs;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/DfsReferral;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_e

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iget-byte v0, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 36
    .line 37
    const/16 v4, 0x25

    .line 38
    .line 39
    const-string v5, "A:"

    .line 40
    .line 41
    if-eq v0, v4, :cond_1

    .line 42
    .line 43
    const/16 v4, 0x32

    .line 44
    .line 45
    if-eq v0, v4, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v0, p1

    .line 49
    check-cast v0, Ljcifs/smb/SmbComTransaction;

    .line 50
    .line 51
    iget-byte v0, v0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 52
    .line 53
    and-int/lit16 v0, v0, 0xff

    .line 54
    .line 55
    const/16 v4, 0x10

    .line 56
    .line 57
    if-eq v0, v4, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move-object v5, v3

    .line 61
    :goto_0
    move-object v0, v1

    .line 62
    :cond_3
    :try_start_0
    sget v4, Ljcifs/util/LogStream;->level:I

    .line 63
    .line 64
    const/4 v6, 0x2

    .line 65
    if-lt v4, v6, :cond_4

    .line 66
    .line 67
    sget-object v4, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 68
    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v7, "DFS redirect: "

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v4

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :goto_1
    iget-object v4, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v4}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    invoke-static {v4, v6}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Ljcifs/smb/SmbTransport;->connect()V

    .line 109
    .line 110
    .line 111
    iget-object v6, p0, Ljcifs/smb/SmbFile;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iget-object v6, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v4, v6, v5}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iput-object v4, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 124
    .line 125
    if-eq v0, v1, :cond_6

    .line 126
    .line 127
    iget-object v4, v0, Ljcifs/smb/DfsReferral;->key:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v4, :cond_6

    .line 130
    .line 131
    iget-object v6, v0, Ljcifs/smb/DfsReferral;->map:Ljava/util/Map;

    .line 132
    .line 133
    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :goto_2
    instance-of v6, v4, Ljcifs/smb/SmbException;

    .line 138
    .line 139
    if-eqz v6, :cond_5

    .line 140
    .line 141
    check-cast v4, Ljcifs/smb/SmbException;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_5
    new-instance v6, Ljcifs/smb/SmbException;

    .line 145
    .line 146
    iget-object v7, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    .line 147
    .line 148
    invoke-direct {v6, v7, v4}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    move-object v4, v6

    .line 152
    :goto_3
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->next:Ljcifs/smb/DfsReferral;

    .line 153
    .line 154
    if-ne v0, v1, :cond_3

    .line 155
    .line 156
    move-object v3, v4

    .line 157
    :cond_6
    :goto_4
    if-nez v3, :cond_d

    .line 158
    .line 159
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 160
    .line 161
    const/4 v3, 0x3

    .line 162
    if-lt v1, v3, :cond_7

    .line 163
    .line 164
    sget-object v1, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    iput-object v0, p0, Ljcifs/smb/SmbFile;->dfsReferral:Ljcifs/smb/DfsReferral;

    .line 170
    .line 171
    iget v1, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 172
    .line 173
    if-gez v1, :cond_8

    .line 174
    .line 175
    iput v2, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_8
    iget-object v2, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-le v1, v2, :cond_9

    .line 185
    .line 186
    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iput v1, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 193
    .line 194
    :cond_9
    :goto_5
    iget-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 195
    .line 196
    iget v2, v0, Ljcifs/smb/DfsReferral;->pathConsumed:I

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const-string v2, ""

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    const-string v4, "\\"

    .line 209
    .line 210
    if-eqz v3, :cond_a

    .line 211
    .line 212
    move-object v1, v4

    .line 213
    :cond_a
    iget-object v3, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-nez v2, :cond_b

    .line 220
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->path:Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v2, v0, v1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    :cond_b
    iput-object v1, p0, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 233
    .line 234
    if-eqz p1, :cond_c

    .line 235
    .line 236
    iget-object v0, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 237
    .line 238
    if-eqz v0, :cond_c

    .line 239
    .line 240
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_c

    .line 245
    .line 246
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-nez v0, :cond_c

    .line 251
    .line 252
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    :cond_c
    if-eqz p1, :cond_11

    .line 257
    .line 258
    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 259
    .line 260
    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 261
    .line 262
    or-int/lit16 v0, v0, 0x1000

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_d
    throw v3

    .line 266
    :cond_e
    iget-object v1, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    .line 267
    .line 268
    iget-boolean v1, v1, Ljcifs/smb/SmbTree;->inDomainDfs:Z

    .line 269
    .line 270
    if-eqz v1, :cond_10

    .line 271
    .line 272
    instance-of v1, p1, Ljcifs/smb/NtTransQuerySecurityDesc;

    .line 273
    .line 274
    if-nez v1, :cond_10

    .line 275
    .line 276
    if-nez v0, :cond_10

    .line 277
    .line 278
    instance-of v0, p1, Ljcifs/smb/SmbComFindClose2;

    .line 279
    .line 280
    if-eqz v0, :cond_f

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_f
    new-instance p1, Ljcifs/smb/SmbException;

    .line 284
    .line 285
    const v0, -0x3ffffddb    # -2.000131f

    .line 286
    .line 287
    .line 288
    invoke-direct {p1, v0, v2}, Ljcifs/smb/SmbException;-><init>(IZ)V

    .line 289
    .line 290
    .line 291
    throw p1

    .line 292
    :cond_10
    :goto_6
    if-eqz p1, :cond_11

    .line 293
    .line 294
    iget v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 295
    .line 296
    and-int/lit16 v0, v0, -0x1001

    .line 297
    .line 298
    :goto_7
    iput v0, p1, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 299
    .line 300
    :cond_11
    return-void
.end method

.method public send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 2

    :goto_0
    invoke-virtual {p0, p1}, Ljcifs/smb/SmbFile;->resolveDfs(Ljcifs/smb/ServerMessageBlock;)V

    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    invoke-virtual {v0, p1, p2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_0
    .catch Ljcifs/smb/DfsReferral; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-boolean v1, v0, Ljcifs/smb/DfsReferral;->resolveHashes:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljcifs/smb/ServerMessageBlock;->reset()V

    goto :goto_0

    :cond_0
    throw v0
.end method

.method public setAttributes(I)V
    .locals 8

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    and-int/lit16 v3, p1, 0x30a7

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void

    :cond_0
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCreateTime(J)V
    .locals 8

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void

    :cond_0
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLastModified(J)V
    .locals 8

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getUncPath0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-wide v6, p1

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SmbFile;->setPathInformation(IJJ)V

    return-void

    :cond_0
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Invalid operation for workgroups, servers, or shares"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPathInformation(IJJ)V
    .locals 12

    move-object v0, p0

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->exists()Z

    iget v1, v0, Ljcifs/smb/SmbFile;->attributes:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x40

    :goto_0
    const/16 v4, 0x100

    invoke-virtual {p0, v2, v4, v1, v3}, Ljcifs/smb/SmbFile;->open0(IIII)I

    move-result v2

    new-instance v3, Ljcifs/smb/Trans2SetFileInformation;

    or-int v7, p1, v1

    move-object v5, v3

    move v6, v2

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Ljcifs/smb/Trans2SetFileInformation;-><init>(IIJJ)V

    new-instance v1, Ljcifs/smb/Trans2SetFileInformationResponse;

    invoke-direct {v1}, Ljcifs/smb/Trans2SetFileInformationResponse;-><init>()V

    invoke-virtual {p0, v3, v1}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Ljcifs/smb/SmbFile;->close(IJ)V

    iput-wide v3, v0, Ljcifs/smb/SmbFile;->attrExpiration:J

    return-void
.end method

.method public setReadOnly()V
    .locals 1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    return-void
.end method

.method public setReadWrite()V
    .locals 1

    invoke-virtual {p0}, Ljcifs/smb/SmbFile;->getAttributes()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFile;->setAttributes(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    return-object v0
.end method
