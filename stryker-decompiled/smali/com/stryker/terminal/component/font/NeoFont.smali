.class public final Lcom/stryker/terminal/component/font/NeoFont;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fontFile:Ljava/io/File;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    const-string v0, "typeface"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/font/NeoFont;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 2
    const-string v0, "fontFile"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/font/NeoFont;->fontFile:Ljava/io/File;

    return-void
.end method

.method private final getTypeFace()Landroid/graphics/Typeface;
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/component/font/NeoFont;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/stryker/terminal/component/font/NeoFont;->fontFile:Ljava/io/File;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/component/font/NeoFont;->fontFile:Ljava/io/File;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/component/font/NeoFont;->typeface:Landroid/graphics/Typeface;

    :cond_1
    iget-object v0, p0, Lcom/stryker/terminal/component/font/NeoFont;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public final applyFont$terminal_release(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 1

    invoke-direct {p0}, Lcom/stryker/terminal/component/font/NeoFont;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method
