.class public Lorg/apache/commons/net/ftp/FTPFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTORY_TYPE:I = 0x1

.field public static final EXECUTE_PERMISSION:I = 0x2

.field public static final FILE_TYPE:I = 0x0

.field public static final GROUP_ACCESS:I = 0x1

.field public static final READ_PERMISSION:I = 0x0

.field public static final SYMBOLIC_LINK_TYPE:I = 0x2

.field public static final UNKNOWN_TYPE:I = 0x3

.field public static final USER_ACCESS:I = 0x0

.field public static final WORLD_ACCESS:I = 0x2

.field public static final WRITE_PERMISSION:I = 0x1

.field private static final serialVersionUID:J = 0x7d0cc2180c52bb3cL


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private group:Ljava/lang/String;

.field private hardLinkCount:I

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private final permissions:[[Z

.field private rawListing:Ljava/lang/String;

.field private size:J

.field private type:I

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->size:J

    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->user:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->group:Ljava/lang/String;

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->size:J

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->user:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->group:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->rawListing:Ljava/lang/String;

    return-void
.end method

.method private formatType()C
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3f

    return v0

    :cond_0
    const/16 v0, 0x6c

    return v0

    :cond_1
    const/16 v0, 0x64

    return v0

    :cond_2
    const/16 v0, 0x2d

    return v0
.end method

.method private permissionToString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    const/16 v2, 0x2d

    if-eqz v1, :cond_0

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x78

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Serialization is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Serialization is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getHardLinkCount()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->hardLinkCount:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawListing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->rawListing:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->size:J

    return-wide v0
.end method

.method public getTimestamp()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getTimestampInstant()Ljava/time/Instant;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lf4/b;->n(Ljava/util/Calendar;)Ljava/time/Instant;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->user:Ljava/lang/String;

    return-object v0
.end method

.method public hasPermission(II)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    aget-object p1, v0, p1

    aget-boolean p1, p1, p2

    return p1
.end method

.method public isDirectory()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFile()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSymbolicLink()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnknown()Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->group:Ljava/lang/String;

    return-void
.end method

.method public setHardLinkCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->hardLinkCount:I

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->link:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->name:Ljava/lang/String;

    return-void
.end method

.method public setPermission(IIZ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    aget-object p1, v0, p1

    aput-boolean p3, p1, p2

    return-void
.end method

.method public setRawListing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->rawListing:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->size:J

    return-void
.end method

.method public setTimestamp(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->user:Ljava/lang/String;

    return-void
.end method

.method public toFormattedString()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPFile;->toFormattedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toFormattedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "[Invalid: could not parse file entry]"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFile;->formatType()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " %4d"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getHardLinkCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v5, " %-8s %-8s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getUser()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getGroup()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {v1, v5, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v4, " %8d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object v2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, " %1$tY-%1$tm-%1$td"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 p1, 0xb

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, " %1$tH"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 p1, 0xc

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ":%1$tM"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 p1, 0xd

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ":%1$tS"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 p1, 0xe

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ".%1$tL"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_2
    const-string p1, " %1$tZ"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_3
    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getRawListing()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
