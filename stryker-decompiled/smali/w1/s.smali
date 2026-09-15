.class public final Lw1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic g:I


# instance fields
.field public final a:Lx1/k;

.field public final b:Landroid/content/Context;

.field public final c:Lv1/p;

.field public final d:Lm1/m;

.field public final e:Lm1/g;

.field public final f:Ly1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lv1/p;Lm1/m;Lw1/t;Ly1/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx1/k;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lw1/s;->a:Lx1/k;

    .line 10
    .line 11
    iput-object p1, p0, Lw1/s;->b:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lw1/s;->c:Lv1/p;

    .line 14
    .line 15
    iput-object p3, p0, Lw1/s;->d:Lm1/m;

    .line 16
    .line 17
    iput-object p4, p0, Lw1/s;->e:Lm1/g;

    .line 18
    .line 19
    iput-object p5, p0, Lw1/s;->f:Ly1/b;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lw1/s;->c:Lv1/p;

    .line 2
    .line 3
    iget-boolean v0, v0, Lv1/p;->q:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lx1/k;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lw1/s;->f:Ly1/b;

    .line 20
    .line 21
    iget-object v2, v1, Ly1/b;->c:Ly1/a;

    .line 22
    .line 23
    new-instance v3, Lf/n0;

    .line 24
    .line 25
    const/4 v4, 0x6

    .line 26
    invoke-direct {v3, p0, v0, v4}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ly1/a;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Landroidx/appcompat/widget/j;

    .line 33
    .line 34
    const/16 v3, 0xa

    .line 35
    .line 36
    invoke-direct {v2, p0, v0, v3}, Landroidx/appcompat/widget/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Ly1/b;->c:Ly1/a;

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lx1/i;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lw1/s;->a:Lx1/k;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Lx1/k;->j(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
