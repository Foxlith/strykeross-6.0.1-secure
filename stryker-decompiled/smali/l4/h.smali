.class public abstract Ll4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:Ll4/l;

.field public volatile d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ll4/h;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Ll4/h;->a:Landroid/app/Activity;

    .line 8
    .line 9
    iput-object p2, p0, Ll4/h;->b:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Ll4/l;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Ll4/h;->c:Ll4/l;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/Thread;

    .line 19
    .line 20
    new-instance p2, Ll4/g;

    .line 21
    .line 22
    invoke-direct {p2, p0, v0}, Ll4/g;-><init>(Ll4/h;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ld4/d;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, Ll4/h;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll4/h;->d:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ll4/g;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ll4/g;-><init>(Ll4/h;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
