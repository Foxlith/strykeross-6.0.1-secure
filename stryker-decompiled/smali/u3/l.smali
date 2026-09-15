.class public final synthetic Lu3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/logger/LoggerFragment;

.field public final synthetic b:Lv1/t;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/logger/LoggerFragment;Lv1/t;JZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/l;->a:Lcom/zalexdev/stryker/logger/LoggerFragment;

    iput-object p2, p0, Lu3/l;->b:Lv1/t;

    iput-wide p3, p0, Lu3/l;->c:J

    iput-boolean p5, p0, Lu3/l;->d:Z

    iput p6, p0, Lu3/l;->e:I

    iput-boolean p7, p0, Lu3/l;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v6, p0, Lu3/l;->b:Lv1/t;

    .line 2
    .line 3
    iget-wide v3, p0, Lu3/l;->c:J

    .line 4
    .line 5
    iget v9, p0, Lu3/l;->e:I

    .line 6
    .line 7
    iget-boolean v13, p0, Lu3/l;->f:Z

    .line 8
    .line 9
    iget-object v8, p0, Lu3/l;->a:Lcom/zalexdev/stryker/logger/LoggerFragment;

    .line 10
    .line 11
    iget-object v7, v8, Lcom/zalexdev/stryker/logger/LoggerFragment;->c:Lu3/e;

    .line 12
    .line 13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v10, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const-wide v1, 0x7fffffffffffffffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    move-object v0, v6

    .line 27
    move-object v5, v10

    .line 28
    invoke-virtual/range {v0 .. v5}, Lv1/t;->h(JJLjava/util/ArrayList;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "SELECT _id,ts,level,tool,msg FROM log WHERE "

    .line 33
    .line 34
    const-string v2, " ORDER BY _id ASC LIMIT "

    .line 35
    .line 36
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/16 v1, 0x1f4

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    new-array v1, v1, [Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, [Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v7, v0, v1, v2}, Lu3/e;->i(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    iget-boolean v0, p0, Lu3/l;->d:Z

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    iget-object v0, v8, Lcom/zalexdev/stryker/logger/LoggerFragment;->c:Lu3/e;

    .line 72
    .line 73
    invoke-virtual {v0, v6}, Lu3/e;->b(Lv1/t;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    :goto_0
    move-wide v10, v0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    const-wide/16 v0, -0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :goto_1
    iget-object v0, v8, Lcom/zalexdev/stryker/logger/LoggerFragment;->q:Landroid/os/Handler;

    .line 83
    .line 84
    new-instance v1, Lu3/p;

    .line 85
    .line 86
    move-object v7, v1

    .line 87
    invoke-direct/range {v7 .. v13}, Lu3/p;-><init>(Lcom/zalexdev/stryker/logger/LoggerFragment;IJLjava/util/ArrayList;Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    return-void
.end method
