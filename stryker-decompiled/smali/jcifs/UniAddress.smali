.class public Ljcifs/UniAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/UniAddress$QueryThread;,
        Ljcifs/UniAddress$Sem;
    }
.end annotation


# static fields
.field private static final RESOLVER_BCAST:I = 0x1

.field private static final RESOLVER_DNS:I = 0x2

.field private static final RESOLVER_LMHOSTS:I = 0x3

.field private static final RESOLVER_WINS:I

.field private static baddr:Ljava/net/InetAddress;

.field private static log:Ljcifs/util/LogStream;

.field private static resolveOrder:[I


# instance fields
.field addr:Ljava/lang/Object;

.field calledName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/UniAddress;->log:Ljcifs/util/LogStream;

    const-string v0, "jcifs.resolveOrder"

    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v1

    :try_start_0
    const-string v2, "jcifs.netbios.baddr"

    const-string v3, "255.255.255.255"

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-static {v2, v3}, Ljcifs/Config;->getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v2

    sput-object v2, Ljcifs/UniAddress;->baddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_2

    :cond_0
    new-array v2, v2, [I

    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v7, v0, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    :cond_1
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "LMHOSTS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v8, v0, 0x1

    aput v4, v2, v0

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_2
    const-string v9, "WINS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v1, :cond_3

    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v6, :cond_1

    sget-object v8, Ljcifs/UniAddress;->log:Ljcifs/util/LogStream;

    const-string v9, "UniAddress resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v0, 0x1

    aput v5, v2, v0

    goto :goto_1

    :cond_4
    const-string v9, "BCAST"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 v8, v0, 0x1

    aput v6, v2, v0

    goto :goto_1

    :cond_5
    const-string v9, "DNS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v8, v0, 0x1

    aput v3, v2, v0

    goto :goto_1

    :cond_6
    sget v9, Ljcifs/util/LogStream;->level:I

    if-le v9, v6, :cond_1

    sget-object v9, Ljcifs/UniAddress;->log:Ljcifs/util/LogStream;

    const-string v10, "unknown resolver method: "

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-array v1, v0, [I

    sput-object v1, Ljcifs/UniAddress;->resolveOrder:[I

    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_8
    :goto_2
    if-nez v1, :cond_9

    new-array v0, v4, [I

    sput-object v0, Ljcifs/UniAddress;->resolveOrder:[I

    aput v4, v0, v5

    aput v3, v0, v6

    aput v6, v0, v3

    goto :goto_3

    :cond_9
    new-array v0, v2, [I

    sput-object v0, Ljcifs/UniAddress;->resolveOrder:[I

    aput v4, v0, v5

    aput v5, v0, v6

    aput v3, v0, v3

    aput v6, v0, v4

    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;
    .locals 8

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Ljcifs/UniAddress;->isDotQuadIP(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array p1, v2, [Ljcifs/UniAddress;

    new-instance v0, Ljcifs/UniAddress;

    invoke-static {p0}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object p0

    invoke-direct {v0, p0}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v0, p1, v1

    return-object p1

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Ljcifs/UniAddress;->resolveOrder:[I

    array-length v4, v3

    if-ge v0, v4, :cond_d

    :try_start_0
    aget v3, v3, v0

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/16 v6, 0xf

    if-eqz v3, :cond_8

    if-eq v3, v2, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-static {p0}, Ljcifs/netbios/Lmhosts;->getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_5

    :cond_1
    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {p0}, Ljcifs/UniAddress;->isAllDigits(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [Ljcifs/UniAddress;

    move v5, v1

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    new-instance v6, Ljcifs/UniAddress;

    aget-object v7, v3, v5

    invoke-direct {v6, v7}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-object v4

    :cond_4
    new-instance v3, Ljava/net/UnknownHostException;

    invoke-direct {v3, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_6

    goto :goto_5

    :cond_6
    if-eqz p1, :cond_7

    sget-object v3, Ljcifs/UniAddress;->baddr:Ljava/net/InetAddress;

    :goto_2
    invoke-static {p0, v3}, Ljcifs/UniAddress;->lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v3

    goto :goto_4

    :cond_7
    sget-object v3, Ljcifs/UniAddress;->baddr:Ljava/net/InetAddress;

    :goto_3
    invoke-static {p0, v5, v4, v3}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;

    move-result-object v3

    goto :goto_4

    :cond_8
    const-string v3, "\u0001\u0002__MSBROWSE__\u0002"

    if-eq p0, v3, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_9

    goto :goto_5

    :cond_9
    if-eqz p1, :cond_a

    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_2

    :cond_a
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getWINSAddress()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_3

    :cond_b
    :goto_4
    new-array v4, v2, [Ljcifs/UniAddress;

    new-instance v5, Ljcifs/UniAddress;

    invoke-direct {v5, v3}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p0, Ljava/net/UnknownHostException;

    invoke-direct {p0}, Ljava/net/UnknownHostException;-><init>()V

    throw p0
.end method

.method public static getByName(Ljava/lang/String;)Ljcifs/UniAddress;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object p0

    return-object p0
.end method

.method public static getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Ljcifs/UniAddress;->getAllByName(Ljava/lang/String;Z)[Ljcifs/UniAddress;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static isAllDigits(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isDotQuadIP(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    add-int/lit8 v4, v2, 0x1

    aget-char v5, p0, v2

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v4, v1, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge v4, v1, :cond_1

    aget-char v5, p0, v4

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static lookupServerOrWorkgroup(Ljava/lang/String;Ljava/net/InetAddress;)Ljcifs/netbios/NbtAddress;
    .locals 9

    new-instance v6, Ljcifs/UniAddress$Sem;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljcifs/UniAddress$Sem;-><init>(I)V

    invoke-static {p1}, Ljcifs/netbios/NbtAddress;->isWINS(Ljava/net/InetAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    :goto_1
    new-instance v7, Ljcifs/UniAddress$QueryThread;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljcifs/UniAddress$QueryThread;-><init>(Ljcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    new-instance v8, Ljcifs/UniAddress$QueryThread;

    const/16 v3, 0x20

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Ljcifs/UniAddress$QueryThread;-><init>(Ljcifs/UniAddress$Sem;Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)V

    const/4 p1, 0x1

    invoke-virtual {v7, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v8, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    :try_start_0
    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    :goto_2
    iget p1, v6, Ljcifs/UniAddress$Sem;->count:I

    if-lez p1, :cond_1

    iget-object p1, v7, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    if-nez p1, :cond_1

    iget-object p1, v8, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    if-nez p1, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, v7, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    iget-object p0, v8, Ljcifs/UniAddress$QueryThread;->ans:Ljcifs/netbios/NbtAddress;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    iget-object p0, v7, Ljcifs/UniAddress$QueryThread;->uhe:Ljava/net/UnknownHostException;

    throw p0

    :goto_3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    new-instance p1, Ljava/net/UnknownHostException;

    invoke-direct {p1, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljcifs/UniAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    check-cast p1, Ljcifs/UniAddress;

    iget-object p1, p1, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public firstCalledName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v1, v0, Ljcifs/netbios/NbtAddress;

    if-eqz v1, :cond_0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->firstCalledName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    invoke-static {v0}, Ljcifs/UniAddress;->isDotQuadIP(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "*SMBSERVER     "

    if-eqz v0, :cond_1

    :goto_0
    iput-object v1, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0xf

    if-le v0, v2, :cond_2

    if-ge v0, v3, :cond_2

    iget-object v1, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v1, v0, Ljcifs/netbios/NbtAddress;

    if-eqz v1, :cond_0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v1, v0, Ljcifs/netbios/NbtAddress;

    if-eqz v1, :cond_0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public nextCalledName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    instance-of v1, v0, Ljcifs/netbios/NbtAddress;

    if-eqz v1, :cond_0

    check-cast v0, Ljcifs/netbios/NbtAddress;

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->nextCalledName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    const-string v1, "*SMBSERVER     "

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Ljcifs/UniAddress;->calledName:Ljava/lang/String;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljcifs/UniAddress;->addr:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
