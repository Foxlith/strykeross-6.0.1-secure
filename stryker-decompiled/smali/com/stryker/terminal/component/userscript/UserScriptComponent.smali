.class public final Lcom/stryker/terminal/component/userscript/UserScriptComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/NeoComponent;


# instance fields
.field private final binDir:Ljava/io/File;

.field private binFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/userscript/UserScript;",
            ">;"
        }
    .end annotation
.end field

.field private final scriptDir:Ljava/io/File;

.field private userScripts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/userscript/UserScript;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lx4/o;->a:Lx4/o;

    iput-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->binFiles:Ljava/util/List;

    iput-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->userScripts:Ljava/util/List;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr/bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->binDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/script"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->scriptDir:Ljava/io/File;

    return-void
.end method

.method private final checkForFiles()V
    .locals 1

    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->extractDefaultScript-IoAF18A(Landroid/content/Context;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->reloadScripts()V

    return-void
.end method

.method private final reloadScripts()V
    .locals 7

    iget-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->scriptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->canExecute()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    new-instance v5, Lcom/stryker/terminal/component/userscript/UserScript;

    invoke-static {v3, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3}, Lcom/stryker/terminal/component/userscript/UserScript;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->userScripts:Ljava/util/List;

    iget-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->binDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/io/File;

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_6

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->canExecute()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v2}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    new-instance v3, Lcom/stryker/terminal/component/userscript/UserScript;

    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/stryker/terminal/component/userscript/UserScript;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-static {v0}, Lx4/m;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->binFiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final extractDefaultScript-IoAF18A(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    const-string v1, "/data/data/com.zalexdev.stryker/files/usr"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->binDir:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    array-length v2, v0

    .line 26
    move v3, v1

    .line 27
    :goto_0
    if-ge v3, v2, :cond_0

    .line 28
    .line 29
    aget-object v4, v0, v3

    .line 30
    .line 31
    const-string v5, "it"

    .line 32
    .line 33
    invoke-static {v4, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Lg5/i;->h0(Ljava/io/File;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_3

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->binDir:Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    .line 49
    const-string v0, "scripts"

    .line 50
    .line 51
    const-string v2, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/script"

    .line 52
    .line 53
    invoke-static {p1, v0, v2}, Lcom/stryker/terminal/utils/UtilsKt;->extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->scriptDir:Ljava/io/File;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const/16 v2, 0x1c0

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    array-length v3, v0

    .line 67
    move v4, v1

    .line 68
    :goto_1
    if-ge v4, v3, :cond_1

    .line 69
    .line 70
    aget-object v5, v0, v4

    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {v5, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const-string v0, "bin"

    .line 83
    .line 84
    const-string v3, "/data/data/com.zalexdev.stryker/files/usr/bin"

    .line 85
    .line 86
    invoke-static {p1, v0, v3}, Lcom/stryker/terminal/utils/UtilsKt;->extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->binDir:Ljava/io/File;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    array-length v0, p1

    .line 98
    :goto_2
    if-ge v1, v0, :cond_2

    .line 99
    .line 100
    aget-object v3, p1, v1

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    sget-object p1, Lw4/h;->a:Lw4/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_3
    const/4 p1, 0x0

    .line 116
    goto :goto_4

    .line 117
    :goto_3
    new-instance v0, Lw4/d;

    .line 118
    .line 119
    invoke-direct {v0, p1}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    move-object p1, v0

    .line 123
    :goto_4
    invoke-static {p1}, Lw4/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    sget-object v1, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v3, "Failed to extract default user scripts: "

    .line 134
    .line 135
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v2, "UserScript"

    .line 154
    .line 155
    invoke-virtual {v1, v2, v0}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_4
    return-object p1
.end method

.method public final getBinFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/userscript/UserScript;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->binFiles:Ljava/util/List;

    return-object v0
.end method

.method public final getUserScripts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/userscript/UserScript;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->userScripts:Ljava/util/List;

    return-object v0
.end method

.method public onServiceDestroy()V
    .locals 0

    return-void
.end method

.method public onServiceInit()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->checkForFiles()V

    return-void
.end method

.method public onServiceObtained()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->checkForFiles()V

    return-void
.end method

.method public final setBinFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/userscript/UserScript;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->binFiles:Ljava/util/List;

    return-void
.end method

.method public final setUserScripts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/userscript/UserScript;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/userscript/UserScriptComponent;->userScripts:Ljava/util/List;

    return-void
.end method
