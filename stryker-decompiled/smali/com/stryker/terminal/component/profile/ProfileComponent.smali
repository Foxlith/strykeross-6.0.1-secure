.class public final Lcom/stryker/terminal/component/profile/ProfileComponent;
.super Lcom/stryker/terminal/component/ConfigFileBasedComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stryker/terminal/component/ConfigFileBasedComponent<",
        "Lcom/stryker/terminal/component/profile/NeoProfile;",
        ">;"
    }
.end annotation


# instance fields
.field private final profileList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/profile/NeoProfile;",
            ">;>;"
        }
    .end annotation
.end field

.field private final profileRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/stryker/terminal/component/profile/NeoProfile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/profile"

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/profile/ProfileComponent;->profileRegistry:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/profile/ProfileComponent;->profileList:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCheckComponentFileWhenObtained()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getProfiles(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/component/profile/NeoProfile;",
            ">;"
        }
    .end annotation

    const-string v0, "metaName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/profile/ProfileComponent;->profileList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    sget-object p1, Lx4/o;->a:Lx4/o;

    :cond_0
    return-object p1
.end method

.method public onCheckComponentFiles()V
    .locals 0

    invoke-virtual {p0}, Lcom/stryker/terminal/component/profile/ProfileComponent;->reloadProfiles()V

    return-void
.end method

.method public bridge synthetic onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/ConfigFileBasedObject;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/profile/ProfileComponent;->onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/profile/NeoProfile;

    move-result-object p1

    return-object p1
.end method

.method public onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/profile/NeoProfile;
    .locals 3

    const-string v0, "configVisitor"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Lt4/a;->a:Lu4/d;

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p1, Lu4/d;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu4/d;

    iget-object v2, p0, Lcom/stryker/terminal/component/profile/ProfileComponent;->profileRegistry:Ljava/util/Map;

    .line 5
    iget-object v1, v1, Lu4/d;->a:Ljava/lang/String;

    .line 6
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 8
    :goto_1
    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Loaded profile: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ProfileComponent"

    invoke-virtual {v0, v2, v1}, Lcom/stryker/terminal/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "profileClass.newInstance()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/component/profile/NeoProfile;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No proper profile registry found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final registerProfile(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/stryker/terminal/component/profile/NeoProfile;",
            ">;)V"
        }
    .end annotation

    const-string v0, "metaName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prototype"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/profile/ProfileComponent;->profileRegistry:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/profile/ProfileComponent;->reloadProfiles()V

    return-void
.end method

.method public final reloadProfiles()V
    .locals 7

    iget-object v0, p0, Lcom/stryker/terminal/component/profile/ProfileComponent;->profileList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

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

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    const-string v6, "it"

    invoke-static {v5, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->loadConfigure(Ljava/io/File;)Lcom/stryker/terminal/component/ConfigFileBasedObject;

    move-result-object v5

    check-cast v5, Lcom/stryker/terminal/component/profile/NeoProfile;

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stryker/terminal/component/profile/NeoProfile;

    iget-object v3, p0, Lcom/stryker/terminal/component/profile/ProfileComponent;->profileList:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileMetaName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/stryker/terminal/component/profile/NeoProfile;

    aput-object v2, v3, v1

    invoke-static {v3}, Lv1/f;->J([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/stryker/terminal/component/profile/ProfileComponent;->profileList:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileMetaName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final unregisterProfile(Ljava/lang/String;)V
    .locals 1

    const-string v0, "metaName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/profile/ProfileComponent;->profileRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
