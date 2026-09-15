.class public final Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;
.super Lcom/stryker/terminal/component/ConfigFileBasedComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stryker/terminal/component/ConfigFileBasedComponent<",
        "Lcom/stryker/terminal/component/extrakey/NeoExtraKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stryker/terminal/component/extrakey/NeoExtraKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/eks"

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;->extraKeys:Ljava/util/Map;

    return-void
.end method

.method private final extractDefaultConfig(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "eks"

    invoke-virtual {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->getBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/stryker/terminal/utils/UtilsKt;->extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to extract configure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ExtraKey"

    invoke-virtual {v0, v1, p1}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final registerShortcutKeys(Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V
    .locals 3

    invoke-virtual {p1}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getProgramNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;->extraKeys:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final reloadExtraKeyConfig()V
    .locals 7

    iget-object v0, p0, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;->extraKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->getBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->Companion:Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;->getNEOLANG_FILTER()Ljava/io/FileFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/eks/default.nl"

    invoke-static {v5, v6}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const-string v3, "it"

    invoke-static {v2, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->loadConfigure(Ljava/io/File;)Lcom/stryker/terminal/component/ConfigFileBasedObject;

    move-result-object v2

    check-cast v2, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;

    if-eqz v2, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;

    invoke-direct {p0, v1}, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;->registerShortcutKeys(Lcom/stryker/terminal/component/extrakey/NeoExtraKey;)V

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public getCheckComponentFileWhenObtained()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckComponentFiles()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/eks/default.nl"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;->extractDefaultConfig(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;->reloadExtraKeyConfig()V

    return-void
.end method

.method public bridge synthetic onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/ConfigFileBasedObject;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;->onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/extrakey/NeoExtraKey;

    move-result-object p1

    return-object p1
.end method

.method public onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/extrakey/NeoExtraKey;
    .locals 1

    .line 2
    const-string v0, "configVisitor"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;

    invoke-direct {p1}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;-><init>()V

    return-object p1
.end method

.method public final showShortcutKeys(Ljava/lang/String;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 1

    const-string v0, "program"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;->extraKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->applyExtraKeys(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->loadDefaultUserKeys()V

    return-void
.end method
