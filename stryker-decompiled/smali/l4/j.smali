.class public final synthetic Ll4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:[J

.field public final synthetic c:J

.field public final synthetic d:[Z

.field public final synthetic e:Ljava/lang/Process;


# direct methods
.method public synthetic constructor <init>([Z[JJ[ZLjava/lang/Process;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4/j;->a:[Z

    iput-object p2, p0, Ll4/j;->b:[J

    iput-wide p3, p0, Ll4/j;->c:J

    iput-object p5, p0, Ll4/j;->d:[Z

    iput-object p6, p0, Ll4/j;->e:Ljava/lang/Process;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Ll4/j;->a:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v2, v0, v1

    .line 5
    .line 6
    if-nez v2, :cond_2

    .line 7
    .line 8
    const-wide/16 v2, 0x1388

    .line 9
    .line 10
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    aget-boolean v0, v0, v1

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-object v0, p0, Ll4/j;->b:[J

    .line 23
    .line 24
    aget-wide v4, v0, v1

    .line 25
    .line 26
    sub-long/2addr v2, v4

    .line 27
    iget-wide v4, p0, Ll4/j;->c:J

    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iget-object v2, p0, Ll4/j;->d:[Z

    .line 35
    .line 36
    aput-boolean v0, v2, v1

    .line 37
    .line 38
    iget-object v0, p0, Ll4/j;->e:Ljava/lang/Process;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
