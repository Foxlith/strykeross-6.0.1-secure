.class public final synthetic Lr3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr3/t;

.field public final synthetic b:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lr3/t;Lcom/google/android/material/progressindicator/LinearProgressIndicator;IILandroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/o;->a:Lr3/t;

    iput-object p2, p0, Lr3/o;->b:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput p3, p0, Lr3/o;->c:I

    iput p4, p0, Lr3/o;->d:I

    iput-object p5, p0, Lr3/o;->e:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/o;->a:Lr3/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iget-object v2, p0, Lr3/o;->b:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 8
    .line 9
    iget v3, p0, Lr3/o;->c:I

    .line 10
    .line 11
    invoke-virtual {v2, v3, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lr3/o;->d:I

    .line 15
    .line 16
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v0, v0, Lr3/t;->a:Landroid/content/Context;

    .line 31
    .line 32
    const v2, 0x7f1300a5

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lr3/o;->e:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
