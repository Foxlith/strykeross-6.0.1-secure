.class public final Lu3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lu3/a;->a:J

    iput-wide p3, p0, Lu3/a;->b:J

    iput p5, p0, Lu3/a;->c:I

    const-string p1, ""

    if-nez p6, :cond_0

    move-object p6, p1

    :cond_0
    iput-object p6, p0, Lu3/a;->d:Ljava/lang/String;

    if-nez p7, :cond_1

    move-object p7, p1

    :cond_1
    iput-object p7, p0, Lu3/a;->e:Ljava/lang/String;

    return-void
.end method
