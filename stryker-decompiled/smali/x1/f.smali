.class public final Lx1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lx1/i;

.field public final b:La2/a;


# direct methods
.method public constructor <init>(Lx1/i;La2/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/f;->a:Lx1/i;

    iput-object p2, p0, Lx1/f;->b:La2/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx1/f;->a:Lx1/i;

    iget-object v0, v0, Lx1/i;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lx1/f;->b:La2/a;

    invoke-static {v0}, Lx1/i;->f(La2/a;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lx1/i;->f:Lg/a;

    iget-object v2, p0, Lx1/f;->a:Lx1/i;

    invoke-virtual {v1, v2, p0, v0}, Lg/a;->e(Lx1/i;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx1/f;->a:Lx1/i;

    invoke-static {v0}, Lx1/i;->c(Lx1/i;)V

    :cond_1
    return-void
.end method
