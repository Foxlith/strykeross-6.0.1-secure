.class public final Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;
.super Lcom/stryker/terminal/component/ConfigFileBasedComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stryker/terminal/component/ConfigFileBasedComponent<",
        "Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent$Companion;


# instance fields
.field private DEFAULT_COLOR:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

.field private colors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->Companion:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/color"

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    return-void
.end method

.method private final extractDefaultColor(Landroid/content/Context;)Z
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "colors"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->getBaseDir()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1, v0, v1}, Lcom/stryker/terminal/utils/UtilsKt;->extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lw4/e;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lw4/e;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    new-instance v0, Lw4/d;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    instance-of p1, v0, Lw4/d;

    .line 24
    .line 25
    xor-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    return p1
.end method


# virtual methods
.method public final applyColorScheme(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->applyColorScheme$terminal_release(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    :cond_0
    return-void
.end method

.method public getCheckComponentFileWhenObtained()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getColorScheme(Ljava/lang/String;)Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;
    .locals 1

    const-string v0, "colorName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    check-cast p1, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getCurrentColorScheme()Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getColorSchemeNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/l;->v0(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getCurrentColorScheme()Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getCurrentColorSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    check-cast v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    return-object v0
.end method

.method public final getCurrentColorSchemeName()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v1, Lcom/stryker/terminal/R$string;->key_customization_color_scheme:I

    sget-object v2, Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;->INSTANCE:Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;

    invoke-virtual {v2}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/stryker/terminal/component/config/NeoPreference;->loadString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/stryker/terminal/R$string;->key_customization_color_scheme:I

    invoke-virtual {v2}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public onCheckComponentFiles()V
    .locals 5

    sget-object v0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->Companion:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent$Companion;

    sget-object v1, Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;->INSTANCE:Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent$Companion;->colorFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "DEFAULT_COLOR"

    if-nez v0, :cond_2

    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->extractDefaultColor(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->DEFAULT_COLOR:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->DEFAULT_COLOR:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    if-eqz v4, :cond_0

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {v3}, Li5/a;->g1(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Li5/a;->g1(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->reloadColorSchemes()Z

    move-result v0

    if-nez v0, :cond_5

    iput-object v1, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->DEFAULT_COLOR:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->DEFAULT_COLOR:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    if-eqz v4, :cond_3

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {v3}, Li5/a;->g1(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Li5/a;->g1(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/ConfigFileBasedObject;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    move-result-object p1

    return-object p1
.end method

.method public onCreateComponentObject(Lt4/a;)Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;
    .locals 1

    .line 2
    const-string v0, "configVisitor"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    invoke-direct {p1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;-><init>()V

    return-object p1
.end method

.method public final reloadColorSchemes()Z
    .locals 7

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-lt v0, v1, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->getBaseDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->Companion:Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/ConfigFileBasedComponent$Companion;->getNEOLANG_FILTER()Ljava/io/FileFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/io/File;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    const-string v6, "it"

    invoke-static {v5, v6}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->loadConfigure(Ljava/io/File;)Lcom/stryker/terminal/component/ConfigFileBasedObject;

    move-result-object v5

    check-cast v5, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    if-eqz v5, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    iget-object v3, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    sget-object v1, Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;->INSTANCE:Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->colors:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    check-cast v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->DEFAULT_COLOR:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    const/4 v0, 0x1

    return v0

    :cond_4
    return v2
.end method

.method public final saveColorScheme(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;)V
    .locals 6

    .line 1
    const-string v0, "colorScheme"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->Companion:Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent$Companion;->colorFile(Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    sget-object v1, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    .line 23
    .line 24
    const-class v2, Lcom/stryker/terminal/component/codegen/CodeGenComponent;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x2

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static {v1, v2, v3, v4, v5}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/stryker/terminal/component/codegen/CodeGenComponent;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/stryker/terminal/component/codegen/CodeGenComponent;->newGenerator(Lcom/stryker/terminal/component/codegen/CodeGenObject;)Lcom/stryker/terminal/component/codegen/CodeGenerator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Lcom/stryker/terminal/component/codegen/CodeGenerator;->generateCode(Lcom/stryker/terminal/component/codegen/CodeGenObject;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v2, 0x1a

    .line 46
    .line 47
    if-lt v1, v2, :cond_0

    .line 48
    .line 49
    invoke-static {v0}, Lc3/a;->j(Ljava/io/File;)Ljava/nio/file/Path;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v2, Lq5/a;->a:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 60
    .line 61
    invoke-static {p1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-array v2, v3, [Ljava/nio/file/OpenOption;

    .line 65
    .line 66
    invoke-static {v1, p1, v2}, Lc3/a;->m(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 67
    .line 68
    .line 69
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    return-void

    .line 74
    :goto_0
    new-instance v1, Lw4/d;

    .line 75
    .line 76
    invoke-direct {v1, p1}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    move-object p1, v1

    .line 80
    :goto_1
    invoke-static {p1}, Lw4/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_1

    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v2, "Failed to save file "

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v2, "ColorScheme already "

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string p1, " exists!"

    .line 128
    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method

.method public final setCurrentColorScheme(Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;)V
    .locals 1

    .line 1
    const-string v0, "color"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->setCurrentColorScheme(Ljava/lang/String;)V

    return-void
.end method

.method public final setCurrentColorScheme(Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "colorName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v1, Lcom/stryker/terminal/R$string;->key_customization_color_scheme:I

    invoke-virtual {v0, v1, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    return-void
.end method
