.class public final synthetic Lj2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj2/m;


# direct methods
.method public synthetic constructor <init>(Lj2/m;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lj2/l;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lj2/l;->b:Lj2/m;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lj2/l;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lj2/l;->b:Lj2/m;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, v1, Lj2/m;->b:Landroid/content/ContextWrapper;

    .line 9
    .line 10
    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/zalexdev/stryker/MainActivity;->j:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lf/j0;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    iget-object v0, v1, Lj2/m;->b:Landroid/content/ContextWrapper;

    .line 21
    .line 22
    check-cast v0, Lcom/zalexdev/stryker/MainActivity;

    .line 23
    .line 24
    sget-object v1, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/zalexdev/stryker/MainActivity;->n()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
