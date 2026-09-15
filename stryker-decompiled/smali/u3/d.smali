.class public final Lu3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lu3/d;->a:J

    iput p3, p0, Lu3/d;->b:I

    iput-object p4, p0, Lu3/d;->c:Ljava/lang/String;

    iput-object p5, p0, Lu3/d;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lu3/d;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu3/d;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lu3/d;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu3/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lu3/d;->d:Ljava/lang/String;

    iput-object p1, p0, Lu3/d;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method
