.class public final Ls1/c;
.super Ls1/b;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "NetworkMeteredCtrlr"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"NetworkMeteredCtrlr\")"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lv1/p;)Z
    .locals 1

    .line 1
    const-string v0, "workSpec"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lv1/p;->j:Lm1/d;

    .line 7
    .line 8
    iget p1, p1, Lm1/d;->a:I

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lr1/a;

    .line 2
    .line 3
    const-string v0, "value"

    .line 4
    .line 5
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x1a

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    iget-boolean v4, p1, Lr1/a;->a:Z

    .line 15
    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lm1/n;->c()Lm1/n;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    :cond_0
    :goto_0
    move v2, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    if-eqz v4, :cond_0

    .line 30
    .line 31
    iget-boolean p1, p1, Lr1/a;->c:Z

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    return v2
.end method
