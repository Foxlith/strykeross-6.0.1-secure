.class public final Lcom/stryker/terminal/setup/SetupHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/setup/SetupHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/setup/SetupHelper;

    invoke-direct {v0}, Lcom/stryker/terminal/setup/SetupHelper;-><init>()V

    sput-object v0, Lcom/stryker/terminal/setup/SetupHelper;->INSTANCE:Lcom/stryker/terminal/setup/SetupHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/setup/SetupHelper;->makeErrorDialog$lambda$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final makeErrorDialog$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p0, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {p0}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object p0

    invoke-virtual {p0}, Lcom/stryker/terminal/App;->openHelpLink()V

    return-void
.end method

.method private final makeProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2

    .line 1
    sget v0, Lcom/stryker/terminal/R$string;->installer_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.installer_message)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/stryker/terminal/setup/SetupHelper;->makeProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final determineArchName()Ljava/lang/String;
    .locals 5

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v1, "SUPPORTED_ABIS"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const-string v4, "arm64-v8a"

    invoke-static {v3, v4}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "aarch64"

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine arch from Build.SUPPORTED_ABIS =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final makeErrorDialog(Landroid/content/Context;I)Lf/n;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.getString(messageId)"

    invoke-static {p2, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/setup/SetupHelper;->makeErrorDialog(Landroid/content/Context;Ljava/lang/String;)Lf/n;

    move-result-object p1

    return-object p1
.end method

.method public final makeErrorDialog(Landroid/content/Context;Ljava/lang/String;)Lf/n;
    .locals 2

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

    const p2, 0x1040013

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget p2, Lcom/stryker/terminal/R$string;->show_help:I

    new-instance v0, Lcom/stryker/terminal/setup/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/setup/a;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Lf/n;

    move-result-object p1

    const-string p2, "MaterialAlertDialogBuild\u2026pLink() }\n      .create()"

    invoke-static {p1, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final makeProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    return-object v0
.end method

.method public final needSetup()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.zalexdev.stryker/files/usr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final setup(Lf/q;Lcom/stryker/terminal/setup/SourceConnection;Lcom/stryker/terminal/setup/ResultListener;)V
    .locals 7

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/setup/SetupHelper;->needSetup()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lcom/stryker/terminal/setup/ResultListener;->onResult(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v0, "/data/data/com.zalexdev.stryker/files/usr"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/setup/SetupHelper;->makeProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v5

    const/16 v0, 0x64

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    new-instance v6, Lcom/stryker/terminal/setup/SetupThread;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/stryker/terminal/setup/SetupThread;-><init>(Lf/q;Lcom/stryker/terminal/setup/SourceConnection;Ljava/io/File;Lcom/stryker/terminal/setup/ResultListener;Landroid/app/ProgressDialog;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method
