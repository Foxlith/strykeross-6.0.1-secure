.class Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced$1;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$ScreenKeyboardAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    if-nez p2, :cond_0

    sput-boolean p3, Lcom/stryker/terminal/Globals;->FloatingScreenJoystick:Z

    :cond_0
    return-void
.end method
