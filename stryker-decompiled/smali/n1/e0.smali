.class public final Ln1/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lu1/a;

.field public final c:Ly1/b;

.field public final d:Lm1/b;

.field public final e:Landroidx/work/impl/WorkDatabase;

.field public final f:Lv1/p;

.field public g:Ljava/util/List;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm1/b;Ly1/b;Lu1/a;Landroidx/work/impl/WorkDatabase;Lv1/p;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/t;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lv1/t;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln1/e0;->a:Landroid/content/Context;

    iput-object p3, p0, Ln1/e0;->c:Ly1/b;

    iput-object p4, p0, Ln1/e0;->b:Lu1/a;

    iput-object p2, p0, Ln1/e0;->d:Lm1/b;

    iput-object p5, p0, Ln1/e0;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p6, p0, Ln1/e0;->f:Lv1/p;

    iput-object p7, p0, Ln1/e0;->h:Ljava/util/List;

    return-void
.end method
