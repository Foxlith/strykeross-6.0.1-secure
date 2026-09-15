.class public final Lcom/stryker/terminal/utils/NeoPermission;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/stryker/terminal/utils/NeoPermission;

.field public static final REQUEST_APP_PERMISSION:I = 0x2766


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/utils/NeoPermission;

    invoke-direct {v0}, Lcom/stryker/terminal/utils/NeoPermission;-><init>()V

    sput-object v0, Lcom/stryker/terminal/utils/NeoPermission;->INSTANCE:Lcom/stryker/terminal/utils/NeoPermission;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf/q;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/utils/NeoPermission;->initAppPermission$lambda$0(Lf/q;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method private final doRequestPermission(Lf/q;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0, p2}, Lv/g;->f(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final initAppPermission$lambda$0(Lf/q;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const-string p3, "$context"

    invoke-static {p0, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/stryker/terminal/utils/NeoPermission;->INSTANCE:Lcom/stryker/terminal/utils/NeoPermission;

    invoke-direct {p2, p0, p1}, Lcom/stryker/terminal/utils/NeoPermission;->doRequestPermission(Lf/q;I)V

    return-void
.end method


# virtual methods
.method public final initAppPermission(Lf/q;I)V
    .locals 3

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lx/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lv/g;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v1, "Please allow storage permissions"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/utils/b;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, p1}, Lcom/stryker/terminal/utils/b;-><init>(IILjava/lang/Object;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lf/m;->show()Lf/n;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/utils/NeoPermission;->doRequestPermission(Lf/q;I)V

    :cond_1
    :goto_0
    return-void
.end method
