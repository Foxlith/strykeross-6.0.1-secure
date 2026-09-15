.class public final Landroidx/work/OverwritingInputMerger;
.super Lm1/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Lm1/e;
    .locals 3

    .line 1
    new-instance v0, Landroidx/lifecycle/a0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lm1/e;

    .line 27
    .line 28
    iget-object v2, v2, Lm1/e;->a:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->b(Ljava/util/HashMap;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lm1/e;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lm1/e;-><init>(Ljava/util/HashMap;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lm1/e;->b(Lm1/e;)[B

    .line 49
    .line 50
    .line 51
    return-object p1
.end method
