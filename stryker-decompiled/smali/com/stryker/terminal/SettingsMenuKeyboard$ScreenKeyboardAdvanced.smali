.class Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenKeyboardAdvanced"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/stryker/terminal/xorg/R$string;->screenkb_floating_joystick:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Z

    sget-boolean v2, Lcom/stryker/terminal/Globals;->FloatingScreenJoystick:Z

    aput-boolean v2, v0, v3

    new-instance v2, Lf/m;

    invoke-direct {v2, p1}, Lf/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/stryker/terminal/xorg/R$string;->advanced:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    new-instance v3, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced$1;

    invoke-direct {v3, p0}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced$1;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;)V

    invoke-virtual {v2, v1, v0, v3}, Lf/m;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lf/m;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/xorg/R$string;->ok:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced$2;

    invoke-direct {v1, p0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced$2;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v2, v0, v1}, Lf/m;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced$3;

    invoke-direct {v0, p0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced$3;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;Lcom/stryker/terminal/MainActivity;)V

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

    sget v0, Lcom/stryker/terminal/xorg/R$string;->advanced:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
