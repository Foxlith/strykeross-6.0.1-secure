.class public final Lv/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public b:Z

.field public c:La/d;

.field public final d:Ljava/util/ArrayDeque;

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/d0;->b:Z

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lv/d0;->d:Ljava/util/ArrayDeque;

    iput v0, p0, Lv/d0;->e:I

    iput-object p1, p0, Lv/d0;->a:Landroid/content/ComponentName;

    return-void
.end method
