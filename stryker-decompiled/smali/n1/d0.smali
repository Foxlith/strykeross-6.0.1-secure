.class public final Ln1/d0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:Lm1/x;

.field public final synthetic b:Ln1/a0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ln1/m;


# direct methods
.method public constructor <init>(Lm1/x;Ln1/a0;Ln1/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/d0;->a:Lm1/x;

    iput-object p2, p0, Ln1/d0;->b:Ln1/a0;

    const-string p1, "stryker_update_poll"

    iput-object p1, p0, Ln1/d0;->c:Ljava/lang/String;

    iput-object p3, p0, Ln1/d0;->d:Ln1/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ln1/d0;->a:Lm1/x;

    .line 2
    .line 3
    invoke-static {v0}, Lv1/f;->F(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ln1/u;

    .line 8
    .line 9
    iget-object v2, p0, Ln1/d0;->b:Ln1/a0;

    .line 10
    .line 11
    iget-object v3, p0, Ln1/d0;->c:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    invoke-direct {v1, v2, v3, v4, v0}, Ln1/u;-><init>(Ln1/a0;Ljava/lang/String;ILjava/util/List;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lw1/e;

    .line 18
    .line 19
    iget-object v2, p0, Ln1/d0;->d:Ln1/m;

    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lw1/e;-><init>(Ln1/u;Ln1/m;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lw1/e;->run()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lw4/h;->a:Lw4/h;

    .line 28
    .line 29
    return-object v0
.end method
