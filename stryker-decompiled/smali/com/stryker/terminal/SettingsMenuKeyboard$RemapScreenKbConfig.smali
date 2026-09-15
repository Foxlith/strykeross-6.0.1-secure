.class Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemapScreenKbConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method

.method public static showRemapScreenKbConfig2(Lcom/stryker/terminal/MainActivity;I)V
    .locals 8

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 3"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 4"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 5"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 6"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    :goto_0
    sget-object v2, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v3, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    const-string v6, "_"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    invoke-static {p0}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    return-void

    :cond_1
    sget-object v0, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    add-int/lit8 v2, p1, 0x2

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    add-int/2addr p1, v4

    invoke-static {p0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;->showRemapScreenKbConfig2(Lcom/stryker/terminal/MainActivity;I)V

    return-void

    :cond_2
    new-instance v0, Lf/m;

    invoke-direct {v0, p0}, Lf/m;-><init>(Landroid/content/Context;)V

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    sget-object v1, Lcom/stryker/terminal/SDL_Keys;->namesSorted:[Ljava/lang/String;

    sget-object v2, Lcom/stryker/terminal/SDL_Keys;->namesSortedBackIdx:[Ljava/lang/Integer;

    sget-object v3, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$4;

    invoke-direct {v3, p1, p0}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$4;-><init>(ILcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lf/m;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance p1, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$5;

    invoke-direct {p1, p0}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$5;-><init>(Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v0, p1}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v0}, Lf/m;->create()Lf/n;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 11

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_joystick:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button_text:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " 2"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " 3"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 4"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " 5"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x6

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_button:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " 6"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x7

    aput-object v1, v0, v7

    sget-object v1, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    array-length v7, v1

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    sget-boolean v7, Lcom/stryker/terminal/Globals;->AppUsesSecondJoystick:Z

    if-eqz v7, :cond_0

    const/16 v7, 0x9

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    array-length v7, v0

    sub-int/2addr v7, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_joystick:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    array-length v4, v1

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    array-length v4, v1

    sub-int/2addr v4, v3

    aput-boolean v3, v1, v4

    :cond_0
    sget-boolean v4, Lcom/stryker/terminal/Globals;->AppUsesThirdJoystick:Z

    if-eqz v4, :cond_1

    array-length v4, v0

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    array-length v4, v0

    sub-int/2addr v4, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb_joystick:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    array-length v4, v1

    add-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v1

    array-length v4, v1

    sub-int/2addr v4, v3

    aput-boolean v3, v1, v4

    :cond_1
    :goto_0
    sget-object v3, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v7, "_"

    const-string v8, " "

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lf/m;

    invoke-direct {v2, p1}, Lf/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    new-instance v3, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$1;

    invoke-direct {v3, p0}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$1;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;)V

    invoke-virtual {v2, v0, v1, v3}, Lf/m;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lf/m;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/xorg/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$2;

    invoke-direct {v1, p0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$2;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v2, v0, v1}, Lf/m;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$3;

    invoke-direct {v0, p0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$3;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v2, v0}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v2}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->remap_screenkb:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
