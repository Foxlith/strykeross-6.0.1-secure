.class public final Lp1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Lr1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Lm1/n;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILp1/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp1/e;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lp1/e;->b:I

    .line 7
    .line 8
    iget-object p1, p3, Lp1/j;->e:Ln1/a0;

    .line 9
    .line 10
    iget-object p1, p1, Ln1/a0;->l:Lv1/m;

    .line 11
    .line 12
    new-instance p2, Lr1/c;

    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-direct {p2, p1, p3}, Lr1/c;-><init>(Lv1/m;Lr1/b;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lp1/e;->c:Lr1/c;

    .line 19
    .line 20
    return-void
.end method
