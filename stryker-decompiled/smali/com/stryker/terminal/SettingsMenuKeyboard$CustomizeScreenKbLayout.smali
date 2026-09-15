.class Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizeScreenKbLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 2

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/xorg/R$string;->screenkb_custom_layout_help:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/stryker/terminal/MainActivity;->setText(Ljava/lang/String;)V

    new-instance v0, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;

    invoke-direct {v0, p1}, Lcom/stryker/terminal/SettingsMenuKeyboard$CustomizeScreenKbLayout$CustomizeScreenKbLayoutTool;-><init>(Lcom/stryker/terminal/MainActivity;)V

    const/4 p1, 0x4

    sput p1, Lcom/stryker/terminal/Globals;->TouchscreenKeyboardSize:I

    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->screenkb_custom_layout:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
