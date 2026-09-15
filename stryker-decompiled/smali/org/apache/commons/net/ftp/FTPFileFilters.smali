.class public Lorg/apache/commons/net/ftp/FTPFileFilters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Lorg/apache/commons/net/ftp/FTPFileFilter;

.field public static final DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

.field public static final NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Linet/ipaddr/mac/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Linet/ipaddr/mac/j;-><init>(I)V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->ALL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    new-instance v0, Linet/ipaddr/mac/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Linet/ipaddr/mac/j;-><init>(I)V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    new-instance v0, Linet/ipaddr/mac/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Linet/ipaddr/mac/j;-><init>(I)V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPFileFilters;->lambda$static$0(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPFileFilters;->lambda$static$1(Lorg/apache/commons/net/ftp/FTPFile;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$static$1(Lorg/apache/commons/net/ftp/FTPFile;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
