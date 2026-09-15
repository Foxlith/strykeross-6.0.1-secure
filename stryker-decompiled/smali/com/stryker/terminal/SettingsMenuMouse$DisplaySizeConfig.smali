.class Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplaySizeConfig"
.end annotation


# instance fields
.field firstStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;->firstStart:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    iput-boolean p1, p0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;->firstStart:Z

    return-void
.end method


# virtual methods
.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/stryker/terminal/xorg/R$string;->display_size_small:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/stryker/terminal/xorg/R$string;->display_size_small_touchpad:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/stryker/terminal/xorg/R$string;->display_size_large:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/stryker/terminal/xorg/R$string;->display_size_desktop:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-boolean v2, Lcom/stryker/terminal/Globals;->SwVideoMode:Z

    if-nez v2, :cond_0

    new-array v1, v6, [Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/stryker/terminal/xorg/R$string;->display_size_small_touchpad:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/stryker/terminal/xorg/R$string;->display_size_large:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/stryker/terminal/xorg/R$string;->display_size_desktop:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x3e8

    move v10, v2

    move v11, v3

    move v7, v4

    move v2, v5

    goto :goto_0

    :cond_0
    move v10, v3

    move v11, v4

    move v7, v5

    move v2, v6

    :goto_0
    iget-boolean v12, v8, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;->firstStart:Z

    if-eqz v12, :cond_1

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/stryker/terminal/xorg/R$string;->display_size_small:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v3

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/stryker/terminal/xorg/R$string;->display_size_small_touchpad:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v4

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/stryker/terminal/xorg/R$string;->display_size_large:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v5

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/stryker/terminal/xorg/R$string;->display_size_desktop:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v6

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/stryker/terminal/xorg/R$string;->show_more_options:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v0

    sget-boolean v12, Lcom/stryker/terminal/Globals;->SwVideoMode:Z

    if-nez v12, :cond_1

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v12, Lcom/stryker/terminal/xorg/R$string;->display_size_small_touchpad:I

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/stryker/terminal/xorg/R$string;->display_size_large:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/stryker/terminal/xorg/R$string;->display_size_desktop:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual/range {p1 .. p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/stryker/terminal/xorg/R$string;->show_more_options:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    :goto_1
    move-object v12, v1

    goto :goto_2

    :cond_1
    move v6, v0

    goto :goto_1

    :goto_2
    new-instance v13, Lf/m;

    invoke-direct {v13, v9}, Lf/m;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/stryker/terminal/xorg/R$string;->display_size:I

    invoke-virtual {v13, v0}, Lf/m;->setTitle(I)Lf/m;

    new-instance v14, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;

    move-object v0, v14

    move-object v1, p0

    move v3, v7

    move v4, v10

    move v5, v11

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;-><init>(Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;IIIIILcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v13, v12, v14}, Lf/m;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1;

    invoke-direct {v0, p0, v9}, Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig$1;-><init>(Lcom/stryker/terminal/SettingsMenuMouse$DisplaySizeConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v13, v0}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v13}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->display_size_mouse:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
