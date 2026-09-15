.class public final Lc1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/fragment/app/t0;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/t0;ZZ)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lc1/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lc1/c;->c:Landroidx/fragment/app/t0;

    iput-boolean p4, p0, Lc1/c;->d:Z

    iput-boolean p5, p0, Lc1/c;->e:Z

    return-void
.end method
