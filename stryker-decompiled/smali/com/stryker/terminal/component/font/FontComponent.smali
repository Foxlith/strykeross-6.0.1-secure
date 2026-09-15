.class public final Lcom/stryker/terminal/component/font/FontComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/NeoComponent;


# instance fields
.field private DEFAULT_FONT:Lcom/stryker/terminal/component/font/NeoFont;

.field private fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stryker/terminal/component/font/NeoFont;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/component/font/FontComponent;->reloadFonts$lambda$0(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private final checkForFiles()V
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/font"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    sget-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {v0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object v0

    const-string v1, "UbuntuMono"

    invoke-direct {p0, v1}, Lcom/stryker/terminal/component/font/FontComponent;->fontFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "DEFAULT_FONT"

    const-string v4, "fonts"

    const/4 v5, 0x0

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/font/FontComponent;->extractDefaultFont(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/font/FontComponent;->loadDefaultFontFromAsset(Landroid/content/Context;)Lcom/stryker/terminal/component/font/NeoFont;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->DEFAULT_FONT:Lcom/stryker/terminal/component/font/NeoFont;

    iget-object v2, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {v3}, Li5/a;->g1(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {v4}, Li5/a;->g1(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual {p0}, Lcom/stryker/terminal/component/font/FontComponent;->reloadFonts()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v0}, Lcom/stryker/terminal/component/font/FontComponent;->loadDefaultFontFromAsset(Landroid/content/Context;)Lcom/stryker/terminal/component/font/NeoFont;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->DEFAULT_FONT:Lcom/stryker/terminal/component/font/NeoFont;

    iget-object v2, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {v3}, Li5/a;->g1(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-static {v4}, Li5/a;->g1(Ljava/lang/String;)V

    throw v5

    :cond_5
    :goto_0
    return-void
.end method

.method private final extractDefaultFont(Landroid/content/Context;)Z
    .locals 2

    :try_start_0
    const-string v0, "fonts"

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/font"

    invoke-static {p1, v0, v1}, Lcom/stryker/terminal/utils/UtilsKt;->extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method private final fontFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/font/"

    .line 4
    .line 5
    const-string v2, ".ttf"

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private final fontName(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lg5/i;->k0(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final loadDefaultFontFromAsset(Landroid/content/Context;)Lcom/stryker/terminal/component/font/NeoFont;
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/font/NeoFont;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "fonts/UbuntuMono.ttf"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    const-string v1, "createFromAsset(context.\u2026\"fonts/$defaultFont.ttf\")"

    invoke-static {p1, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/stryker/terminal/component/font/NeoFont;-><init>(Landroid/graphics/Typeface;)V

    return-object v0
.end method

.method private static final reloadFonts$lambda$0(Ljava/io/File;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "pathname.name"

    .line 6
    .line 7
    invoke-static {p0, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const-string v1, ".ttf"

    .line 12
    .line 13
    invoke-static {p0, v1, v0}, Lq5/h;->o1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method


# virtual methods
.method public final applyFont(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/component/font/NeoFont;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/stryker/terminal/component/font/NeoFont;->applyFont$terminal_release(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    :cond_0
    return-void
.end method

.method public final getCurrentFont()Lcom/stryker/terminal/component/font/NeoFont;
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/component/font/FontComponent;->getCurrentFontName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    check-cast v0, Lcom/stryker/terminal/component/font/NeoFont;

    return-object v0

    :cond_0
    const-string v0, "fonts"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getCurrentFontName()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v1, Lcom/stryker/terminal/R$string;->key_customization_font:I

    const-string v2, "UbuntuMono"

    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->loadString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget v1, Lcom/stryker/terminal/R$string;->key_customization_font:I

    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    :cond_1
    const-string v0, "fonts"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getFont(Ljava/lang/String;)Lcom/stryker/terminal/component/font/NeoFont;
    .locals 3

    const-string v0, "fontName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    const/4 v1, 0x0

    const-string v2, "fonts"

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Li5/a;->m(Ljava/lang/Object;)V

    check-cast p1, Lcom/stryker/terminal/component/font/NeoFont;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/stryker/terminal/component/font/FontComponent;->getCurrentFont()Lcom/stryker/terminal/component/font/NeoFont;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    invoke-static {v2}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1
.end method

.method public final getFontNames()Ljava/util/List;
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

    iget-object v1, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/l;->v0(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const-string v0, "fonts"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onServiceDestroy()V
    .locals 0

    return-void
.end method

.method public onServiceInit()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/component/font/FontComponent;->checkForFiles()V

    return-void
.end method

.method public onServiceObtained()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/component/font/FontComponent;->checkForFiles()V

    return-void
.end method

.method public final reloadFonts()Z
    .locals 10

    iget-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    const/4 v1, 0x0

    const-string v2, "fonts"

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_8

    new-instance v3, Lcom/stryker/terminal/component/font/NeoFont;

    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    const-string v5, "MONOSPACE"

    invoke-static {v4, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/stryker/terminal/component/font/NeoFont;-><init>(Landroid/graphics/Typeface;)V

    const-string v4, "Monospace"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_7

    new-instance v3, Lcom/stryker/terminal/component/font/NeoFont;

    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string v5, "SANS_SERIF"

    invoke-static {v4, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/stryker/terminal/component/font/NeoFont;-><init>(Landroid/graphics/Typeface;)V

    const-string v4, "Sans Serif"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_6

    new-instance v3, Lcom/stryker/terminal/component/font/NeoFont;

    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string v5, "SERIF"

    invoke-static {v4, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/stryker/terminal/component/font/NeoFont;-><init>(Landroid/graphics/Typeface;)V

    const-string v4, "Serif"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/font"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/stryker/terminal/component/a;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/stryker/terminal/component/a;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/io/File;

    :cond_0
    array-length v5, v0

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v0, v6

    const-string v8, "file"

    invoke-static {v7, v8}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/stryker/terminal/component/font/FontComponent;->fontName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/stryker/terminal/component/font/NeoFont;

    invoke-direct {v9, v7}, Lcom/stryker/terminal/component/font/NeoFont;-><init>(Ljava/io/File;)V

    iget-object v7, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v7, :cond_1

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_5

    const-string v5, "UbuntuMono"

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->fonts:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    check-cast v0, Lcom/stryker/terminal/component/font/NeoFont;

    iput-object v0, p0, Lcom/stryker/terminal/component/font/FontComponent;->DEFAULT_FONT:Lcom/stryker/terminal/component/font/NeoFont;

    return v4

    :cond_3
    invoke-static {v2}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_4
    return v3

    :cond_5
    invoke-static {v2}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v2}, Li5/a;->g1(Ljava/lang/String;)V

    throw v1
.end method

.method public final setCurrentFont(Ljava/lang/String;)V
    .locals 2

    const-string v0, "fontName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v1, Lcom/stryker/terminal/R$string;->key_customization_font:I

    invoke-virtual {v0, v1, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    return-void
.end method
