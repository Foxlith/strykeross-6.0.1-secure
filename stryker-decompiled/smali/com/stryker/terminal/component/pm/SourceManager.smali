.class public final Lcom/stryker/terminal/component/pm/SourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final database:Lcom/stryker/terminal/framework/NeoTermDatabase;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sources"

    invoke-static {v0}, Lcom/stryker/terminal/framework/NeoTermDatabase;->instance(Ljava/lang/String;)Lcom/stryker/terminal/framework/NeoTermDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/pm/SourceManager;->database:Lcom/stryker/terminal/framework/NeoTermDatabase;

    const-class v1, Lcom/stryker/terminal/component/pm/Source;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/framework/NeoTermDatabase;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$array;->pref_package_source_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "App.get().resources.getS\u2026ef_package_source_values)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/stryker/terminal/component/pm/SourceManager;->database:Lcom/stryker/terminal/framework/NeoTermDatabase;

    new-instance v5, Lcom/stryker/terminal/component/pm/Source;

    const-string v6, "stable main"

    const/4 v7, 0x1

    invoke-direct {v5, v3, v6, v7}, Lcom/stryker/terminal/component/pm/Source;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lcom/stryker/terminal/framework/NeoTermDatabase;->saveBean(Ljava/lang/Object;)Lcom/stryker/terminal/framework/NeoTermDatabase;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addSource(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "sourceUrl"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repo"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/SourceManager;->database:Lcom/stryker/terminal/framework/NeoTermDatabase;

    new-instance v1, Lcom/stryker/terminal/component/pm/Source;

    invoke-direct {v1, p1, p2, p3}, Lcom/stryker/terminal/component/pm/Source;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/framework/NeoTermDatabase;->saveBean(Ljava/lang/Object;)Lcom/stryker/terminal/framework/NeoTermDatabase;

    return-void
.end method

.method public final applyChanges()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/SourceManager;->database:Lcom/stryker/terminal/framework/NeoTermDatabase;

    invoke-virtual {v0}, Lcom/stryker/terminal/framework/NeoTermDatabase;->vacuum()V

    return-void
.end method

.method public final getAllSources()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/pm/Source;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/SourceManager;->database:Lcom/stryker/terminal/framework/NeoTermDatabase;

    const-class v1, Lcom/stryker/terminal/component/pm/Source;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/framework/NeoTermDatabase;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const-string v1, "database.findAll(Source::class.java)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEnabledSources()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/pm/Source;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/stryker/terminal/component/pm/SourceManager;->getAllSources()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stryker/terminal/component/pm/Source;

    iget-boolean v3, v3, Lcom/stryker/terminal/component/pm/Source;->enabled:Z

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getMainPackageSource()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/stryker/terminal/component/pm/SourceManager;->getEnabledSources()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stryker/terminal/component/pm/Source;

    iget-object v2, v2, Lcom/stryker/terminal/component/pm/Source;->repo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v6, "it"

    invoke-static {v5, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lq5/h;->Q1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "stable main"

    invoke-static {v5, v6}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    move-object v3, v4

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_5

    sget-object v0, Lcom/stryker/terminal/component/config/NeoTermPath;->INSTANCE:Lcom/stryker/terminal/component/config/NeoTermPath;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoTermPath;->getDEFAULT_MAIN_PACKAGE_SOURCE()Ljava/lang/String;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public final removeSource(Ljava/lang/String;)V
    .locals 3

    const-string v0, "sourceUrl"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/SourceManager;->database:Lcom/stryker/terminal/framework/NeoTermDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url == \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/stryker/terminal/component/pm/Source;

    invoke-virtual {v0, v1, p1}, Lcom/stryker/terminal/framework/NeoTermDatabase;->deleteBeanByWhere(Ljava/lang/Class;Ljava/lang/String;)Lcom/stryker/terminal/framework/NeoTermDatabase;

    return-void
.end method

.method public final updateAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stryker/terminal/component/pm/Source;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sources"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/SourceManager;->database:Lcom/stryker/terminal/framework/NeoTermDatabase;

    invoke-virtual {v0}, Lcom/stryker/terminal/framework/NeoTermDatabase;->dropAllTable()V

    iget-object v0, p0, Lcom/stryker/terminal/component/pm/SourceManager;->database:Lcom/stryker/terminal/framework/NeoTermDatabase;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/framework/NeoTermDatabase;->saveBeans(Ljava/util/List;)Lcom/stryker/terminal/framework/NeoTermDatabase;

    return-void
.end method
