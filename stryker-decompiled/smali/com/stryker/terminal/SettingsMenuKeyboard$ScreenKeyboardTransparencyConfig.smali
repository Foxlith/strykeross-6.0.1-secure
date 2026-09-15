.class Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenKeyboardTransparencyConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->controls_screenkb_trans_0:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->controls_screenkb_trans_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->controls_screenkb_trans_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->controls_screenkb_trans_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stryker/terminal/xorg/R$string;->controls_screenkb_trans_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lf/m;

    invoke-direct {v1, p1}, Lf/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/stryker/terminal/xorg/R$string;->controls_screenkb_transparency:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    sget v2, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardTransparency:I

    new-instance v3, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig$1;

    invoke-direct {v3, p0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig$1;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lf/m;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lf/m;

    new-instance v0, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig$2;

    invoke-direct {v0, p0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig$2;-><init>(Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardTransparencyConfig;Lcom/stryker/terminal/MainActivity;)V

    invoke-virtual {v1, v0}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    invoke-virtual {v1}, Lf/m;->create()Lf/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->controls_screenkb_transparency:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
