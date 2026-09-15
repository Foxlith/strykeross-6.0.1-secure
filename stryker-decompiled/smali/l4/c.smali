.class public abstract Ll4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public c:Ljava/lang/Process;

.field public final d:Ll4/l;

.field public e:Ljava/io/InputStream;

.field public f:Ljava/io/InputStream;

.field public g:Ljava/io/OutputStream;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public k:Z

.field public final l:Ljava/util/ArrayList;

.field public final m:Lu3/g;

.field public n:Z

.field public o:Z

.field public final p:Z

.field public volatile q:Lu2/b;

.field public volatile r:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ll4/c;->k:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Ll4/c;->l:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Ll4/c;->n:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Ll4/c;->o:Z

    .line 18
    .line 19
    iput-object p1, p0, Ll4/c;->a:Landroid/app/Activity;

    .line 20
    .line 21
    iput-object p2, p0, Ll4/c;->b:Landroid/content/Context;

    .line 22
    .line 23
    new-instance p1, Ll4/l;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Ll4/c;->d:Ll4/l;

    .line 29
    .line 30
    iput-object p3, p0, Ll4/c;->h:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p3}, Lu3/f;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iput-object p2, p0, Ll4/c;->i:Ljava/lang/String;

    .line 37
    .line 38
    iput-boolean p4, p0, Ll4/c;->j:Z

    .line 39
    .line 40
    if-eqz p4, :cond_0

    .line 41
    .line 42
    invoke-static {p1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move v1, v0

    .line 50
    :goto_0
    iput-boolean v1, p0, Ll4/c;->p:Z

    .line 51
    .line 52
    new-instance p1, Lu3/g;

    .line 53
    .line 54
    invoke-direct {p1}, Lu3/g;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Ll4/c;->m:Lu3/g;

    .line 58
    .line 59
    new-instance p1, Ljava/lang/Thread;

    .line 60
    .line 61
    new-instance p2, Ll4/a;

    .line 62
    .line 63
    invoke-direct {p2, p0, v0}, Ll4/a;-><init>(Ll4/c;I)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 70
    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll4/c;->r:Z

    :try_start_0
    iget-boolean v0, p0, Ll4/c;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll4/c;->q:Lu2/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll4/c;->q:Lu2/b;

    invoke-virtual {v0}, Lu2/b;->a()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll4/c;->c:Ljava/lang/Process;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ll4/c;->n:Z

    return-void
.end method

.method public abstract b(Ljava/util/ArrayList;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method
