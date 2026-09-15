.class public final synthetic Lcom/google/android/material/search/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/search/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/search/h;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/search/h;->b:Lcom/google/android/material/search/SearchView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/search/h;->a:I

    iget-object v1, p0, Lcom/google/android/material/search/h;->b:Lcom/google/android/material/search/SearchView;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1}, Lcom/google/android/material/search/SearchView;->b(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {v1, p1}, Lcom/google/android/material/search/SearchView;->c(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {v1, p1}, Lcom/google/android/material/search/SearchView;->g(Lcom/google/android/material/search/SearchView;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
