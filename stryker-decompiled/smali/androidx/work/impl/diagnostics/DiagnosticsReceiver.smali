.class public Landroidx/work/impl/diagnostics/DiagnosticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsRcvr"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p1}, Ln1/a0;->M(Landroid/content/Context;)Ln1/a0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-class p2, Landroidx/work/impl/workers/DiagnosticsWorker;

    .line 16
    .line 17
    new-instance v0, Lm1/o;

    .line 18
    .line 19
    invoke-direct {v0, p2}, Lm1/w;-><init>(Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, v0, Lm1/w;->b:Lv1/p;

    .line 23
    .line 24
    const-class v1, Landroidx/work/OverwritingInputMerger;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p2, Lv1/p;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0}, Lm1/w;->a()Lm1/x;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lm1/p;

    .line 37
    .line 38
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ln1/a0;->K(Ljava/util/List;)Lm1/t;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    sget-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    .line 52
    .line 53
    const-string v1, "WorkManager is not initialized"

    .line 54
    .line 55
    invoke-virtual {p2, v0, v1, p1}, Lm1/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method
