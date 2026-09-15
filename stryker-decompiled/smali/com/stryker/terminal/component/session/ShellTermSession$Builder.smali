.class public final Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/component/session/ShellTermSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private changeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

.field private cwd:Ljava/lang/String;

.field private env:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw4/c;",
            ">;"
        }
    .end annotation
.end field

.field private executablePath:Ljava/lang/String;

.field private initialCommand:Ljava/lang/String;

.field private shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

.field private systemShell:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/stryker/terminal/component/session/ShellProfile;

    invoke-direct {v0}, Lcom/stryker/terminal/component/session/ShellProfile;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    return-void
.end method

.method private final buildEnvironment(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 22

    const-string v0, "/"

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const-string v3, "TERM=xterm-256color"

    const-string v5, "HOME=/"

    const-string v10, "PREFIX=/data/data/com.zalexdev.stryker/files/usr"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ANDROID_ROOT="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ANDROID_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ANDROID_DATA="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ANDROID_DATA"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "EXTERNAL_STORAGE="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "EXTERNAL_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "BOOTCLASSPATH="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "BOOTCLASSPATH"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ANDROID_ART_ROOT="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ANDROID_ART_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DEX2OATBOOTCLASSPATH="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "DEX2OATBOOTCLASSPATH"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ANDROID_I18N_ROOT="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ANDROID_I18N_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ANDROID_RUNTIME_ROOT="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ANDROID_RUNTIME_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ANDROID_TZDATA_ROOT="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ANDROID_TZDATA_ROOT"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v0, "COLORTERM=truecolor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "LD_LIBRARY_PATH="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->buildLdLibraryEnv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v2, "PWD="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v18, "TMPDIR=/data/data/com.zalexdev.stryker/files/usr/tmp"

    const-string v20, "LANG=en_US.UTF-8"

    const-string v21, "PS1=\\[\\e[1;32m\\]\\u [ \\[\\e[0m\\]\\w\\[\\e[1;32m\\] ]$ \\[\\e[0m\\]"

    const-string v1, "PATH"

    const-string v2, "PATH="

    if-eqz p2, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v17, v0

    filled-new-array/range {v3 .. v21}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->buildPathEnv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LANG=en_US.UTF-8"

    filled-new-array {v3, v4, v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final buildLdLibraryEnv()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/lib"

    return-object v0
.end method

.method private final buildPathEnv()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/bin"

    return-object v0
.end method

.method private final transformEnvironment(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw4/c;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lw4/c;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v3, v1, Lw4/c;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v3, 0x3d

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, v1, Lw4/c;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    new-array p1, p1, [Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, [Ljava/lang/String;

    .line 66
    .line 67
    return-object p1
.end method


# virtual methods
.method public final arg(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->args:Ljava/util/List;

    if-nez v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv1/f;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->args:Ljava/util/List;

    goto :goto_1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final argArray([Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->args:Ljava/util/List;

    return-object p0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->arg(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->args:Ljava/util/List;

    :cond_2
    return-object p0
.end method

.method public final callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->changeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    return-object p0
.end method

.method public final create(Landroid/content/Context;)Lcom/stryker/terminal/component/session/ShellTermSession;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->cwd:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "/"

    :cond_0
    move-object v2, p1

    iget-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->executablePath:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->systemShell:Z

    if-eqz p1, :cond_2

    const-string p1, "/system/bin/sh"

    :cond_1
    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/ShellProfile;->getLoginShell()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->args:Ljava/util/List;

    if-nez p1, :cond_3

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lv1/f;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->env:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->transformEnvironment(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->systemShell:Z

    invoke-direct {p0, v2, v0}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->buildEnvironment(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v4, v0

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->changeCallback:Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    if-nez v0, :cond_5

    new-instance v0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    invoke-direct {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;-><init>()V

    :cond_5
    move-object v5, v0

    new-instance v9, Lcom/stryker/terminal/component/session/ShellTermSession;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    iget-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->initialCommand:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    move-object v6, p1

    iget-object v7, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/stryker/terminal/component/session/ShellTermSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;Ljava/lang/String;Lcom/stryker/terminal/component/session/ShellProfile;Lkotlin/jvm/internal/f;)V

    return-object v9
.end method

.method public final currentWorkingDirectory(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->cwd:Ljava/lang/String;

    return-object p0
.end method

.method public final env(Lw4/c;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw4/c;",
            ")",
            "Lcom/stryker/terminal/component/session/ShellTermSession$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->env:Ljava/util/List;

    if-nez v0, :cond_0

    filled-new-array {p1}, [Lw4/c;

    move-result-object p1

    invoke-static {p1}, Lv1/f;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->env:Ljava/util/List;

    goto :goto_1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final envArray([Lw4/c;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw4/c;",
            ")",
            "Lcom/stryker/terminal/component/session/ShellTermSession$Builder;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->env:Ljava/util/List;

    return-object p0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->env(Lw4/c;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->env:Ljava/util/List;

    :cond_2
    return-object p0
.end method

.method public final executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->executablePath:Ljava/lang/String;

    return-object p0
.end method

.method public final initialCommand(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->initialCommand:Ljava/lang/String;

    return-object p0
.end method

.method public final profile(Lcom/stryker/terminal/component/session/ShellProfile;)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->shellProfile:Lcom/stryker/terminal/component/session/ShellProfile;

    :cond_0
    return-object p0
.end method

.method public final systemShell(Z)Lcom/stryker/terminal/component/session/ShellTermSession$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/ShellTermSession$Builder;->systemShell:Z

    return-object p0
.end method
