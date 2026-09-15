.class public Lcom/stryker/terminal/App;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/App$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/App$Companion;

.field private static app:Lcom/stryker/terminal/App;


# instance fields
.field private final neoInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/App$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/App$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/stryker/terminal/App;->neoInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lj5/a;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/App;->errorDialog$lambda$1(Lj5/a;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic access$getApp$cp()Lcom/stryker/terminal/App;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/App;->app:Lcom/stryker/terminal/App;

    return-object v0
.end method

.method public static synthetic b(Lcom/stryker/terminal/App;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/App;->errorDialog$lambda$0(Lcom/stryker/terminal/App;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final errorDialog$lambda$0(Lcom/stryker/terminal/App;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/App;->openHelpLink()V

    return-void
.end method

.method private static final errorDialog$lambda$1(Lj5/a;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lj5/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final easterEgg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    const-string v1, "neoterm_fun_happy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->loadInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/stryker/terminal/component/config/NeoPreference;->store(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    invoke-static {p0, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p2, 0x50

    invoke-virtual {p1, p2, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    if-le v3, p2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/stryker/terminal/component/config/NeoPreference;->store(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/stryker/terminal/ui/other/BonusActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final ensureInitialized()V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/App;->neoInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stryker/terminal/component/NeoInitializer;->INSTANCE:Lcom/stryker/terminal/component/NeoInitializer;

    invoke-virtual {v0, p0}, Lcom/stryker/terminal/component/NeoInitializer;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final errorDialog(Landroid/content/Context;ILj5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lj5/a;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(message)"

    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/stryker/terminal/App;->errorDialog(Landroid/content/Context;Ljava/lang/String;Lj5/a;)V

    return-void
.end method

.method public final errorDialog(Landroid/content/Context;Ljava/lang/String;Lj5/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lj5/a;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/stryker/terminal/R$string;->error:I

    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const p2, 0x1040009

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget p2, Lcom/stryker/terminal/R$string;->show_help:I

    new-instance v0, Lcom/stryker/terminal/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stryker/terminal/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/b;

    invoke-direct {p2, p3, v1}, Lcom/stryker/terminal/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/stryker/terminal/App;->app:Lcom/stryker/terminal/App;

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v0, p0}, Lcom/stryker/terminal/component/config/NeoPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public final openHelpLink()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://github.com/zalexdev/strykerapp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
