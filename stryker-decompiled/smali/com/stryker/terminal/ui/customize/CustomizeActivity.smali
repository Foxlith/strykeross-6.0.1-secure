.class public final Lcom/stryker/terminal/ui/customize/CustomizeActivity;
.super Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;
.source "SourceFile"


# instance fields
.field private final REQUEST_SELECT_COLOR:I

.field private final REQUEST_SELECT_FONT:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;-><init>()V

    const/16 v0, 0x56ce

    iput v0, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->REQUEST_SELECT_FONT:I

    const/16 v0, 0x56cf

    iput v0, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->REQUEST_SELECT_COLOR:I

    return-void
.end method

.method public static synthetic f(Lcom/stryker/terminal/ui/customize/CustomizeActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->onCreate$lambda$1(Lcom/stryker/terminal/ui/customize/CustomizeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/stryker/terminal/ui/customize/CustomizeActivity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->onCreate$lambda$2(Lcom/stryker/terminal/ui/customize/CustomizeActivity;I)V

    return-void
.end method

.method public static synthetic h(Lcom/stryker/terminal/ui/customize/CustomizeActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->onCreate$lambda$0(Lcom/stryker/terminal/ui/customize/CustomizeActivity;Landroid/view/View;)V

    return-void
.end method

.method private final installColor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/color"

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->installFileTo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->setupSpinners()V

    return-void
.end method

.method private final installFileTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lc3/a;->j(Ljava/io/File;)Ljava/nio/file/Path;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-array v2, v0, [Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v1, v2, v3

    .line 19
    .line 20
    invoke-static {p2, v2}, Lc3/a;->k(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-array v1, v3, [Ljava/nio/file/CopyOption;

    .line 25
    .line 26
    invoke-static {p1, p2, v1}, Lc3/a;->l(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    new-instance p2, Lw4/d;

    .line 33
    .line 34
    invoke-direct {p2, p1}, Lw4/d;-><init>(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    move-object p1, p2

    .line 38
    :goto_0
    invoke-static {p1}, Lw4/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    sget v1, Lcom/stryker/terminal/R$string;->error:I

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ": "

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method

.method private final installFont(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/font"

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->installFileTo(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->setupSpinners()V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/stryker/terminal/ui/customize/CustomizeActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Lcom/stryker/terminal/R$string;->install_font:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->REQUEST_SELECT_FONT:I

    invoke-virtual {p0, p1, v0}, Landroidx/activity/h;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/stryker/terminal/ui/customize/CustomizeActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget v0, Lcom/stryker/terminal/R$string;->install_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->REQUEST_SELECT_COLOR:I

    invoke-virtual {p0, p1, v0}, Landroidx/activity/h;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/stryker/terminal/ui/customize/CustomizeActivity;I)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/stryker/terminal/R$id;->text_size:I

    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupSpinner(ILjava/util/List;Ljava/lang/String;Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/widget/Spinner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")",
            "Landroid/widget/Spinner;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p1, p4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    return-object p1
.end method

.method private final setupSpinners()V
    .locals 8

    .line 1
    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    .line 2
    .line 3
    const-class v1, Lcom/stryker/terminal/component/font/FontComponent;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v1, v2, v3, v4}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/stryker/terminal/component/font/FontComponent;

    .line 13
    .line 14
    const-class v5, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    .line 15
    .line 16
    invoke-static {v0, v5, v2, v3, v4}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;

    .line 21
    .line 22
    sget v4, Lcom/stryker/terminal/R$id;->custom_font_spinner:I

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/stryker/terminal/component/font/FontComponent;->getFontNames()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v1}, Lcom/stryker/terminal/component/font/FontComponent;->getCurrentFontName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    new-instance v7, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$1;

    .line 33
    .line 34
    invoke-direct {v7, v1, p0}, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$1;-><init>(Lcom/stryker/terminal/component/font/FontComponent;Lcom/stryker/terminal/ui/customize/CustomizeActivity;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->setupSpinner(ILjava/util/List;Ljava/lang/String;Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/widget/Spinner;

    .line 38
    .line 39
    .line 40
    new-instance v1, Lg3/b;

    .line 41
    .line 42
    invoke-direct {v1, v3}, Lg3/b;-><init>(I)V

    .line 43
    .line 44
    .line 45
    sget v3, Lcom/stryker/terminal/R$string;->new_color_scheme:I

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v4, v1, Lg3/b;->b:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v5, v4

    .line 54
    check-cast v5, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getColorSchemeNames()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-array v2, v2, [Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lg3/b;->c(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v1, v4

    .line 73
    check-cast v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    new-array v1, v1, [Ljava/lang/String;

    .line 80
    .line 81
    check-cast v4, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Lv1/f;->G([Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    sget v2, Lcom/stryker/terminal/R$id;->custom_color_spinner:I

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;->getCurrentColorSchemeName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    new-instance v4, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;

    .line 98
    .line 99
    invoke-direct {v4, p0, v0}, Lcom/stryker/terminal/ui/customize/CustomizeActivity$setupSpinners$2;-><init>(Lcom/stryker/terminal/ui/customize/CustomizeActivity;Lcom/stryker/terminal/component/colorscheme/ColorSchemeComponent;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v2, v1, v3, v4}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->setupSpinner(ILjava/util/List;Ljava/lang/String;Landroid/widget/AdapterView$OnItemSelectedListener;)Landroid/widget/Spinner;

    .line 103
    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/stryker/terminal/utils/UtilsKt;->getPathOfMediaUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->REQUEST_SELECT_FONT:I

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->installFont(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->REQUEST_SELECT_COLOR:I

    if-ne p1, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->installColor(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/a0;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/stryker/terminal/R$layout;->ui_customize:I

    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->initCustomizationComponent(I)V

    sget p1, Lcom/stryker/terminal/R$id;->custom_install_font_button:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/stryker/terminal/ui/customize/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stryker/terminal/ui/customize/e;-><init>(Lcom/stryker/terminal/ui/customize/CustomizeActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/stryker/terminal/R$id;->text_size:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/config/NeoPreference;->getFontSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/stryker/terminal/R$id;->custom_install_color_button:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/stryker/terminal/ui/customize/e;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/stryker/terminal/ui/customize/e;-><init>(Lcom/stryker/terminal/ui/customize/CustomizeActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/stryker/terminal/R$id;->terminal_view:I

    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/config/NeoPreference;->getFontSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setTextSize(I)V

    new-instance v0, Lv/f;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->setOnTextSize(Lcom/stryker/terminal/frontend/session/terminal/OnTextSize;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lf/q;->onDestroy()V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/backend/TerminalSession;->finishIfRunning()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/a0;->onResume()V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/customize/CustomizeActivity;->setupSpinners()V

    return-void
.end method
