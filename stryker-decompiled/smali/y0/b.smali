.class public final Ly0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lc1/d;

.field public final d:Landroidx/lifecycle/a0;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:I

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Landroid/content/Intent;

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/util/Set;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lc1/d;Landroidx/lifecycle/a0;Ljava/util/ArrayList;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrationContainer"

    invoke-static {p4, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "journalMode"

    invoke-static {p7, v0}, Landroid/support/v4/media/session/a;->z(ILjava/lang/String;)V

    const-string v0, "typeConverters"

    invoke-static {p13, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoMigrationSpecs"

    invoke-static {p14, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/b;->a:Landroid/content/Context;

    iput-object p2, p0, Ly0/b;->b:Ljava/lang/String;

    iput-object p3, p0, Ly0/b;->c:Lc1/d;

    iput-object p4, p0, Ly0/b;->d:Landroidx/lifecycle/a0;

    iput-object p5, p0, Ly0/b;->e:Ljava/util/List;

    iput-boolean p6, p0, Ly0/b;->f:Z

    iput p7, p0, Ly0/b;->g:I

    iput-object p8, p0, Ly0/b;->h:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Ly0/b;->i:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    iput-object p1, p0, Ly0/b;->j:Landroid/content/Intent;

    iput-boolean p10, p0, Ly0/b;->k:Z

    iput-boolean p11, p0, Ly0/b;->l:Z

    iput-object p12, p0, Ly0/b;->m:Ljava/util/Set;

    iput-object p13, p0, Ly0/b;->n:Ljava/util/List;

    iput-object p14, p0, Ly0/b;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    iget-boolean p2, p0, Ly0/b;->l:Z

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-boolean p2, p0, Ly0/b;->k:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Ly0/b;->m:Ljava/util/Set;

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
