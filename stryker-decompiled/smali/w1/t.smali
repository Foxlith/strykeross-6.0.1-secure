.class public final Lw1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm1/g;


# instance fields
.field public final a:Ly1/b;

.field public final b:Lu1/a;

.field public final c:Lv1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WMFgUpdater"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase;Lu1/a;Ly1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw1/t;->b:Lu1/a;

    iput-object p3, p0, Lw1/t;->a:Ly1/b;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->v()Lv1/r;

    move-result-object p1

    iput-object p1, p0, Lw1/t;->c:Lv1/r;

    return-void
.end method
