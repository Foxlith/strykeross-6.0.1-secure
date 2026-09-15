.class public final synthetic Lp2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp2/r;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lp2/r;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/p;->a:Lp2/r;

    iput p2, p0, Lp2/p;->b:I

    iput p3, p0, Lp2/p;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp2/p;->a:Lp2/r;

    .line 2
    .line 3
    iget-object v0, v0, Lp2/r;->k:Lp2/j;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lp2/p;->b:I

    .line 8
    .line 9
    iget v2, p0, Lp2/p;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lp2/j;->d(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
