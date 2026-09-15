.class public final Lv/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/r;


# instance fields
.field public final a:Landroid/app/job/JobWorkItem;

.field public final synthetic b:Lv/t;


# direct methods
.method public constructor <init>(Lv/t;Landroid/app/job/JobWorkItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/s;->b:Lv/t;

    iput-object p2, p0, Lv/s;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv/s;->b:Lv/t;

    iget-object v0, v0, Lv/t;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv/s;->b:Lv/t;

    iget-object v1, v1, Lv/t;->c:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lv/s;->a:Landroid/app/job/JobWorkItem;

    invoke-static {v1, v2}, Lq1/a;->i(Landroid/app/job/JobParameters;Landroid/app/job/JobWorkItem;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/s;->a:Landroid/app/job/JobWorkItem;

    invoke-static {v0}, Lq1/a;->e(Landroid/app/job/JobWorkItem;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
