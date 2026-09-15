.class public final synthetic Lcom/google/android/material/search/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/search/k;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/search/k;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/search/k;->a:I

    iget-object v1, p0, Lcom/google/android/material/search/k;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Lcom/google/android/material/search/SearchBar;

    invoke-static {v1}, Lcom/google/android/material/search/SearchBar;->r(Lcom/google/android/material/search/SearchBar;)V

    return-void

    :pswitch_0
    check-cast v1, Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->e(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    return-void

    :pswitch_1
    check-cast v1, Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {v1}, Lcom/google/android/material/search/SearchViewAnimationHelper;->c(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
