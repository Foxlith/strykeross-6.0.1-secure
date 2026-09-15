.class public final Lcom/topjohnwu/superuser/internal/BuilderImpl;
.super Lcom/topjohnwu/superuser/Shell$Builder;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BUILDER"


# instance fields
.field private flags:I

.field private initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

.field timeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/topjohnwu/superuser/Shell$Builder;-><init>()V

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->timeout:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->flags:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/topjohnwu/superuser/Shell;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build()Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build(Ljava/lang/Process;)Lcom/topjohnwu/superuser/Shell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build(Ljava/lang/Process;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic build([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/topjohnwu/superuser/internal/ShellImpl;
    .locals 6

    .line 4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->hasFlags(I)Z

    move-result v1

    const-string v2, "su"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v5, "--mount-master"

    aput-object v5, v1, v0

    invoke-virtual {p0, v1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v1
    :try_end_0
    .catch Lcom/topjohnwu/superuser/NoShellException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    move-result v5
    :try_end_1
    .catch Lcom/topjohnwu/superuser/NoShellException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_1

    :catch_0
    :cond_0
    move-object v1, v4

    :catch_1
    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->hasFlags(I)Z

    move-result v5

    if-nez v5, :cond_3

    :try_start_2
    new-array v5, v0, [Ljava/lang/String;

    aput-object v2, v5, v3

    invoke-virtual {p0, v5}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell;->isRoot()Z

    move-result v2
    :try_end_2
    .catch Lcom/topjohnwu/superuser/NoShellException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    move-object v1, v4

    :catch_2
    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->hasFlags(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lcom/topjohnwu/superuser/internal/Utils;->setConfirmedRootState(Z)V

    :cond_4
    const-string v0, "sh"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public build(Ljava/lang/Process;)Lcom/topjohnwu/superuser/internal/ShellImpl;
    .locals 5

    .line 5
    :try_start_0
    new-instance v0, Lcom/topjohnwu/superuser/internal/ShellImpl;

    invoke-direct {v0, p0, p1}, Lcom/topjohnwu/superuser/internal/ShellImpl;-><init>(Lcom/topjohnwu/superuser/internal/BuilderImpl;Ljava/lang/Process;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/MainShell;->setCached(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    iget-object p1, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/topjohnwu/superuser/internal/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1, v0}, Lcom/topjohnwu/superuser/Shell$Initializer;->onInit(Landroid/content/Context;Lcom/topjohnwu/superuser/Shell;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/MainShell;->setCached(Lcom/topjohnwu/superuser/internal/ShellImpl;)V

    new-instance p1, Lcom/topjohnwu/superuser/NoShellException;

    const-string v0, "Unable to init shell"

    invoke-direct {p1, v0}, Lcom/topjohnwu/superuser/NoShellException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/topjohnwu/superuser/NoShellException;

    const-string v1, "Unable to create a shell!"

    invoke-direct {v0, v1, p1}, Lcom/topjohnwu/superuser/NoShellException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs build([Ljava/lang/String;)Lcom/topjohnwu/superuser/internal/ShellImpl;
    .locals 2

    .line 6
    :try_start_0
    const-string v0, " "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/topjohnwu/superuser/internal/BuilderImpl;->build(Ljava/lang/Process;)Lcom/topjohnwu/superuser/internal/ShellImpl;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/topjohnwu/superuser/NoShellException;

    const-string v1, "Unable to create a shell!"

    invoke-direct {v0, v1, p1}, Lcom/topjohnwu/superuser/NoShellException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createInitializers([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/topjohnwu/superuser/Shell$Initializer;",
            ">;)V"
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [Lcom/topjohnwu/superuser/Shell$Initializer;

    iput-object v0, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    :try_start_0
    aget-object v2, p1, v1

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v3, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->initializers:[Lcom/topjohnwu/superuser/Shell$Initializer;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/topjohnwu/superuser/Shell$Initializer;

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    invoke-static {v2}, Lcom/topjohnwu/superuser/internal/Utils;->err(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasFlags(I)Z
    .locals 1

    iget v0, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setContext(Landroid/content/Context;)Lcom/topjohnwu/superuser/Shell$Builder;
    .locals 1

    sget-object v0, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/Utils;->getContextImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p1}, Lcom/topjohnwu/superuser/internal/Utils;->getContextImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/topjohnwu/superuser/internal/Utils;->context:Landroid/content/Context;

    :cond_1
    return-object p0
.end method

.method public setFlags(I)Lcom/topjohnwu/superuser/Shell$Builder;
    .locals 0

    iput p1, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->flags:I

    return-object p0
.end method

.method public setTimeout(J)Lcom/topjohnwu/superuser/Shell$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/topjohnwu/superuser/internal/BuilderImpl;->timeout:J

    return-object p0
.end method
