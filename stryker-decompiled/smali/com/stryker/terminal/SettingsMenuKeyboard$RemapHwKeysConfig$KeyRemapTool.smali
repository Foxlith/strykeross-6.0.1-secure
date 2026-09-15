.class public Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyRemapTool"
.end annotation


# instance fields
.field p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    return-void
.end method


# virtual methods
.method public ShowAllKeys(I)V
    .locals 4

    new-instance v0, Lf/m;

    iget-object v1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {v0, v1}, Lf/m;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/stryker/terminal/xorg/R$string;->remap_hwkeys_select:I

    invoke-virtual {v0, v1}, Lf/m;->setTitle(I)Lf/m;

    sget-object v1, Lcom/stryker/terminal/SDL_Keys;->namesSorted:[Ljava/lang/String;

    sget-object v2, Lcom/stryker/terminal/SDL_Keys;->namesSortedBackIdx:[Ljava/lang/Integer;

    sget-object v3, Lcom/stryker/terminal/Globals;->RemapHwKeycode:[I

    aget v3, v3, p1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;

    invoke-direct {v3, p0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$3;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;I)V

    invoke-virtual {v0, v1, v2, v3}, Lf/m;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance p1, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$4;

    invoke-direct {p1, p0}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$4;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;)V

    invoke-virtual {v0, p1}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v0}, Lf/m;->create()Lf/n;

    move-result-object p1

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->getVideoLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p1, 0x0

    if-gez p2, :cond_0

    move p2, p1

    :cond_0
    const/16 p3, 0xff

    if-le p2, p3, :cond_1

    move p2, p1

    :cond_1
    const/4 p3, 0x7

    new-array p3, p3, [Ljava/lang/CharSequence;

    sget-object v0, Lcom/stryker/terminal/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    aput-object v0, p3, p1

    sget-object v0, Lcom/stryker/terminal/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    aget-object v0, v0, v1

    aput-object v0, p3, v2

    sget-object v0, Lcom/stryker/terminal/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    const/4 v3, 0x2

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-object v0, p3, v3

    sget-object v0, Lcom/stryker/terminal/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-object v0, p3, v3

    sget-object v0, Lcom/stryker/terminal/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-object v0, p3, v3

    sget-object v0, Lcom/stryker/terminal/SDL_Keys;->names:[Ljava/lang/String;

    sget-object v1, Lcom/stryker/terminal/Globals;->RemapScreenKbKeycode:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    aget-object v0, v0, v1

    aput-object v0, p3, v3

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {v0}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/xorg/R$string;->remap_hwkeys_select_more_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p3, v1

    :goto_0
    sget-object v0, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p1, v0, :cond_2

    sget-object v0, Lcom/stryker/terminal/Globals;->AppTouchscreenKeyboardKeysNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v3, "_"

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lf/m;

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p1, v0}, Lf/m;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/stryker/terminal/xorg/R$string;->remap_hwkeys_select_simple:I

    invoke-virtual {p1, v0}, Lf/m;->setTitle(I)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;

    invoke-direct {v0, p0, p2}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$1;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;I)V

    invoke-virtual {p1, p3, v0}, Lf/m;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance p2, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;

    invoke-direct {p2, p0}, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool$2;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;)V

    invoke-virtual {p1, p2}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {p1}, Lf/m;->create()Lf/n;

    move-result-object p1

    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapHwKeysConfig$KeyRemapTool;->p:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v2
.end method
