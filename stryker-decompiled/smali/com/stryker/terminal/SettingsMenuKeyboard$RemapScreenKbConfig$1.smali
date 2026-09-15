.class Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig$1;->this$0:Lcom/stryker/terminal/SettingsMenuKeyboard$RemapScreenKbConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    sget-object p1, Lcom/stryker/terminal/Globals;->ScreenKbControlsShown:[Z

    aput-boolean p3, p1, p2

    return-void
.end method
