.class public final synthetic Lw1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lw1/i;


# direct methods
.method public synthetic constructor <init>(Lw1/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/g;->a:Lw1/i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lw1/g;->a:Lw1/i;

    .line 2
    .line 3
    const-string v1, "this$0"

    .line 4
    .line 5
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lw1/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Lv1/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "next_alarm_manager_id"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lv1/e;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    long-to-int v1, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v3

    .line 30
    :goto_0
    const v4, 0x7fffffff

    .line 31
    .line 32
    .line 33
    if-ne v1, v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Lv1/e;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v4, Lv1/d;

    .line 43
    .line 44
    int-to-long v5, v3

    .line 45
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-direct {v4, v2, v3}, Lv1/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v4}, Lv1/e;->d(Lv1/d;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method
