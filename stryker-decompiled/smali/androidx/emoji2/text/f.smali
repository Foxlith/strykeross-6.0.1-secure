.class public final Landroidx/emoji2/text/f;
.super Lv1/f;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/emoji2/text/g;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/f;->a:Landroidx/emoji2/text/g;

    return-void
.end method


# virtual methods
.method public final L(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Landroidx/emoji2/text/g;

    iget-object v0, v0, Lf/q0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/l;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/l;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final M(Lv1/h;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/f;->a:Landroidx/emoji2/text/g;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/emoji2/text/g;->d:Lv1/h;

    .line 4
    .line 5
    new-instance p1, Lv/y;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/emoji2/text/g;->d:Lv1/h;

    .line 8
    .line 9
    new-instance v2, Ld/d;

    .line 10
    .line 11
    const/4 v3, 0x7

    .line 12
    invoke-direct {v2, v3}, Ld/d;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iget-object v3, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v4, v3

    .line 18
    check-cast v4, Landroidx/emoji2/text/l;

    .line 19
    .line 20
    iget-object v4, v4, Landroidx/emoji2/text/l;->h:Landroidx/emoji2/text/e;

    .line 21
    .line 22
    check-cast v3, Landroidx/emoji2/text/l;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p1, Lv/y;->b:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v1, p1, Lv/y;->c:Lv1/h;

    .line 33
    .line 34
    iput-object v4, p1, Lv/y;->d:Landroidx/emoji2/text/i;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p1, Lv/y;->a:Z

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    iput-object v1, p1, Lv/y;->e:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p1, v0, Landroidx/emoji2/text/g;->c:Lv/y;

    .line 43
    .line 44
    iget-object p1, v0, Lf/q0;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Landroidx/emoji2/text/l;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/emoji2/text/l;->e()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
