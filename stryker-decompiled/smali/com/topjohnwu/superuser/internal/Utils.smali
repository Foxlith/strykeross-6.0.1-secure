.class public final Lcom/topjohnwu/superuser/internal/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LIBSU"

.field static context:Landroid/content/Context; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static currentRootState:I = -0x1

.field private static synchronizedCollectionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static err(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static err(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    const-string v0, "LIBSU"

    invoke-static {v0, p0}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static ex(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget-object v0, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentApplication"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/Utils;->getContextImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getContextImpl(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getDeContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static hasStartupAgents(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "startup_agents"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized isAppGrantedRoot()Ljava/lang/Boolean;
    .locals 9

    const-class v0, Lcom/topjohnwu/superuser/internal/Utils;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/topjohnwu/superuser/internal/Utils;->currentRootState:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gez v1, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-nez v1, :cond_0

    sput v3, Lcom/topjohnwu/superuser/internal/Utils;->currentRootState:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    new-instance v7, Ljava/io/File;

    const-string v8, "su"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->canExecute()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    sput v1, Lcom/topjohnwu/superuser/internal/Utils;->currentRootState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    sput v4, Lcom/topjohnwu/superuser/internal/Utils;->currentRootState:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_3
    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    monitor-exit v0

    return-object v2

    :cond_4
    :try_start_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_5
    :try_start_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static isMainShellRoot()Z
    .locals 1

    invoke-static {}, Lcom/topjohnwu/superuser/internal/MainShell;->get()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    move-result v0

    return v0
.end method

.method public static isProcess64Bit()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi"
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static isRootImpossible()Z
    .locals 2

    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->isAppGrantedRoot()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSynchronized(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/topjohnwu/superuser/internal/Utils;->synchronizedCollectionClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/topjohnwu/superuser/internal/NOPList;->getInstance()Lcom/topjohnwu/superuser/internal/NOPList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/topjohnwu/superuser/internal/Utils;->synchronizedCollectionClass:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/topjohnwu/superuser/internal/Utils;->synchronizedCollectionClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static log(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static newArraySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method public static pump(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static declared-synchronized setConfirmedRootState(Z)V
    .locals 1

    const-class v0, Lcom/topjohnwu/superuser/internal/Utils;

    monitor-enter v0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    :try_start_0
    sput p0, Lcom/topjohnwu/superuser/internal/Utils;->currentRootState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static vLog()Z
    .locals 1

    sget-boolean v0, Lcom/topjohnwu/superuser/Shell;->enableVerboseLogging:Z

    return v0
.end method
