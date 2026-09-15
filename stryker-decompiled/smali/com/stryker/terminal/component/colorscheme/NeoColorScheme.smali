.class public Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/codegen/CodeGenObject;
.implements Lcom/stryker/terminal/component/ConfigFileBasedObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/component/colorscheme/NeoColorScheme$Companion;
    }
.end annotation


# static fields
.field public static final COLOR_BACKGROUND:I = -0x3

.field public static final COLOR_BRIGHT_BLACK:I = 0x8

.field public static final COLOR_BRIGHT_BLUE:I = 0xc

.field public static final COLOR_BRIGHT_CYAN:I = 0xe

.field public static final COLOR_BRIGHT_GREEN:I = 0xa

.field public static final COLOR_BRIGHT_MAGENTA:I = 0xd

.field public static final COLOR_BRIGHT_RED:I = 0x9

.field public static final COLOR_BRIGHT_WHITE:I = 0xf

.field public static final COLOR_BRIGHT_YELLOW:I = 0xb

.field public static final COLOR_CURSOR:I = -0x1

.field public static final COLOR_DEF_BACKGROUND:Ljava/lang/String; = "background"

.field public static final COLOR_DEF_CURSOR:Ljava/lang/String; = "cursor"

.field public static final COLOR_DEF_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final COLOR_DIM_BLACK:I = 0x0

.field public static final COLOR_DIM_BLUE:I = 0x4

.field public static final COLOR_DIM_CYAN:I = 0x6

.field public static final COLOR_DIM_GREEN:I = 0x2

.field public static final COLOR_DIM_MAGENTA:I = 0x5

.field public static final COLOR_DIM_RED:I = 0x1

.field public static final COLOR_DIM_WHITE:I = 0x7

.field public static final COLOR_DIM_YELLOW:I = 0x3

.field public static final COLOR_FOREGROUND:I = -0x2

.field public static final COLOR_META_NAME:Ljava/lang/String; = "name"

.field private static final COLOR_META_PATH:[Ljava/lang/String;

.field public static final COLOR_META_VERSION:Ljava/lang/String; = "version"

.field private static final COLOR_PATH:[Ljava/lang/String;

.field public static final COLOR_PREFIX:Ljava/lang/String; = "color"

.field public static final COLOR_TYPE_BEGIN:I = -0x3

.field public static final COLOR_TYPE_END:I = 0xf

.field public static final CONTEXT_COLOR_NAME:Ljava/lang/String; = "colors"

.field public static final CONTEXT_META_NAME:Ljava/lang/String; = "color-scheme"

.field public static final Companion:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme$Companion;


# instance fields
.field private backgroundColor:Ljava/lang/String;

.field private color:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public colorName:Ljava/lang/String;

.field private colorVersion:Ljava/lang/String;

.field private cursorColor:Ljava/lang/String;

.field private foregroundColor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->Companion:Lcom/stryker/terminal/component/colorscheme/NeoColorScheme$Companion;

    const-string v0, "color-scheme"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->COLOR_META_PATH:[Ljava/lang/String;

    const-string v1, "colors"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->COLOR_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->color:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getCOLOR_META_PATH$cp()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->COLOR_META_PATH:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getCOLOR_PATH$cp()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->COLOR_PATH:[Ljava/lang/String;

    return-object v0
.end method

.method private final getColorByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->COLOR_PATH:[Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lt4/a;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getMetaByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->COLOR_META_PATH:[Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lt4/a;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final validateColors()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;->INSTANCE:Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;->INSTANCE:Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getForegroundColor()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;->INSTANCE:Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getCursorColor()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applyColorScheme$terminal_release(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 6

    invoke-direct {p0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->validateColors()V

    const/16 v0, 0x1a

    if-eqz p1, :cond_1

    new-instance v1, Lcom/stryker/terminal/backend/TerminalColorScheme;

    invoke-direct {v1}, Lcom/stryker/terminal/backend/TerminalColorScheme;-><init>()V

    iget-object v2, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    iget-object v3, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    iget-object v4, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->color:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/stryker/terminal/backend/TerminalColorScheme;->updateWith(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->getCurrentSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/stryker/terminal/backend/TerminalSession;->getEmulator()Lcom/stryker/terminal/backend/TerminalEmulator;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/stryker/terminal/backend/TerminalSession;->getEmulator()Lcom/stryker/terminal/backend/TerminalEmulator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/stryker/terminal/backend/TerminalEmulator;->setColorScheme(Lcom/stryker/terminal/backend/TerminalColorScheme;)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_1

    iget-object v1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/stryker/terminal/backend/TerminalColors;->parse(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    if-eqz p2, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    invoke-static {p1}, Lcom/stryker/terminal/backend/TerminalColors;->parse(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    invoke-static {p1}, Lcom/stryker/terminal/backend/TerminalColors;->parse(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method public final copy()Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;
    .locals 5

    new-instance v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;

    invoke-direct {v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;-><init>()V

    invoke-virtual {p0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setColorName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    iput-object v1, v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    iget-object v1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    iput-object v1, v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    iget-object v1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    iput-object v1, v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    iget-object v1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->color:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->color:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeGenerator(Lcom/stryker/terminal/component/codegen/CodeGenParameter;)Lcom/stryker/terminal/component/codegen/CodeGenerator;
    .locals 1

    const-string v0, "parameter"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stryker/terminal/component/codegen/NeoColorGenerator;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/component/codegen/NeoColorGenerator;-><init>(Lcom/stryker/terminal/component/codegen/CodeGenParameter;)V

    return-object v0
.end method

.method public final getColor(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->validateColors()V

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->color:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->color:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public final getColor()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->color:Ljava/util/Map;

    return-object v0
.end method

.method public final getColorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->colorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "colorName"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getColorVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->colorVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getCursorColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getForegroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public onConfigLoaded(Lt4/a;)V
    .locals 4

    .line 1
    const-string v0, "configVisitor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "name"

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getMetaByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setColorName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "version"

    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getMetaByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->colorVersion:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "background"

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "foreground"

    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "cursor"

    .line 42
    .line 43
    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColorByVisitor(Lt4/a;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    .line 48
    .line 49
    sget-object v0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->COLOR_PATH:[Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lt4/a;->b([Ljava/lang/String;)Lu4/d;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Lu4/d;->b:Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/String;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    const-string v3, "color"

    .line 85
    .line 86
    invoke-static {v1, v3, v2}, Lq5/h;->K1(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    const/4 v1, -0x1

    .line 93
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v2, v3}, Lq5/h;->O1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move v2, v1

    .line 109
    :goto_1
    if-ne v2, v1, :cond_1

    .line 110
    .line 111
    sget-object v1, Lcom/stryker/terminal/utils/NLog;->INSTANCE:Lcom/stryker/terminal/utils/NLog;

    .line 112
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v3, "Invalid color type: "

    .line 116
    .line 117
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v2, "ColorScheme"

    .line 138
    .line 139
    invoke-virtual {v1, v2, v0}, Lcom/stryker/terminal/utils/NLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lu4/e;

    .line 148
    .line 149
    iget-object v0, v0, Lu4/e;->a:Ljava/lang/Object;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p0, v2, v0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setColor(ILjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->validateColors()V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 164
    .line 165
    const-string v0, "ColorScheme must have a name"

    .line 166
    .line 167
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1
.end method

.method public final setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    return-void
.end method

.method public final setColor(ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "color"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-gez p1, :cond_3

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->backgroundColor:Ljava/lang/String;

    :goto_0
    return-void

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->color:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setColor(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->color:Ljava/util/Map;

    return-void
.end method

.method public final setColorName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->colorName:Ljava/lang/String;

    return-void
.end method

.method public final setColorVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->colorVersion:Ljava/lang/String;

    return-void
.end method

.method public final setCursorColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->cursorColor:Ljava/lang/String;

    return-void
.end method

.method public final setForegroundColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->foregroundColor:Ljava/lang/String;

    return-void
.end method
