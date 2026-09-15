.class public final synthetic Lcom/google/android/material/textfield/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/textfield/EndIconDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textfield/EndIconDelegate;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/textfield/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/EndIconDelegate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/b;->a:I

    iget-object v1, p0, Lcom/google/android/material/textfield/b;->b:Lcom/google/android/material/textfield/EndIconDelegate;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->a(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v1, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->c(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v1, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->a(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
