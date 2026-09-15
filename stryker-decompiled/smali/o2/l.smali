.class public final synthetic Lo2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;ZZZZZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/l;->a:Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;

    iput-boolean p2, p0, Lo2/l;->b:Z

    iput-boolean p3, p0, Lo2/l;->c:Z

    iput-boolean p4, p0, Lo2/l;->d:Z

    iput-boolean p5, p0, Lo2/l;->e:Z

    iput-boolean p6, p0, Lo2/l;->f:Z

    iput-wide p7, p0, Lo2/l;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-boolean v8, p0, Lo2/l;->b:Z

    .line 2
    .line 3
    iget-boolean v2, p0, Lo2/l;->c:Z

    .line 4
    .line 5
    iget-boolean v3, p0, Lo2/l;->d:Z

    .line 6
    .line 7
    iget-boolean v4, p0, Lo2/l;->e:Z

    .line 8
    .line 9
    iget-boolean v5, p0, Lo2/l;->f:Z

    .line 10
    .line 11
    iget-wide v6, p0, Lo2/l;->g:J

    .line 12
    .line 13
    iget-object v9, p0, Lo2/l;->a:Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;

    .line 14
    .line 15
    iget-object v0, v9, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, v9, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->a:Landroidx/fragment/app/a0;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, v9, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->i:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, v9, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->e:Lcom/google/android/material/card/MaterialCardView;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v9, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->f:Landroid/widget/TextView;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v9, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->g:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    move-object v0, v9

    .line 58
    move v1, v8

    .line 59
    invoke-virtual/range {v0 .. v7}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->f(ZZZZZJ)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, v9, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->u:Z

    .line 64
    .line 65
    invoke-virtual {v9, v8}, Lcom/zalexdev/stryker/appintro/slides/SlidePCheck;->d(Z)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method
