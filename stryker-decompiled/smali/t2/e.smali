.class public final synthetic Lt2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lt2/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lt2/e;->b:Lcom/google/android/material/snackbar/Snackbar;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt2/e;->a:I

    iget-object v1, p0, Lt2/e;->b:Lcom/google/android/material/snackbar/Snackbar;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    return-void

    :pswitch_0
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
