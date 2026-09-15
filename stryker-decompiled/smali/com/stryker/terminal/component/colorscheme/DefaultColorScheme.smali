.class public final Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;
.super Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;

    invoke-direct {v0}, Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;->INSTANCE:Lcom/stryker/terminal/component/colorscheme/DefaultColorScheme;

    const-string v1, "Dracula"

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setColorName(Ljava/lang/String;)V

    const-string v1, "#282a36"

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setBackgroundColor(Ljava/lang/String;)V

    const-string v1, "#f8f8f2"

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setForegroundColor(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->setCursorColor(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;-><init>()V

    return-void
.end method
