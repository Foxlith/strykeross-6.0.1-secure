.class public final synthetic Lr3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/progressindicator/LinearProgressIndicator;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lr3/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lr3/m;->b:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 7
    .line 8
    iput p2, p0, Lr3/m;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lr3/m;->a:I

    .line 2
    .line 3
    iget v1, p0, Lr3/m;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lr3/m;->b:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {v3, v1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {v3, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
