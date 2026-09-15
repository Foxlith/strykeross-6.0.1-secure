.class public final synthetic Lcom/zalexdev/stryker/wpair/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/zalexdev/stryker/wpair/p;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/p;->c:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/zalexdev/stryker/wpair/p;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/zalexdev/stryker/wpair/p;->b:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/zalexdev/stryker/wpair/p;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/zalexdev/stryker/wpair/p;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/zalexdev/stryker/wpair/p;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/zalexdev/stryker/wpair/p;->c:Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 13
    .line 14
    check-cast v2, Landroid/widget/ArrayAdapter;

    .line 15
    .line 16
    sget-object v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->l()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->p:Landroid/widget/AutoCompleteTextView;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->p:Landroid/widget/AutoCompleteTextView;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v3, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->d:Lcom/google/android/material/textview/MaterialTextView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->j()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :pswitch_0
    check-cast v3, Lcom/zalexdev/stryker/wpair/WpairFragment;

    .line 46
    .line 47
    check-cast v2, Lcom/zalexdev/stryker/wpair/FastPairDevice;

    .line 48
    .line 49
    invoke-static {v3, v2, v1}, Lcom/zalexdev/stryker/wpair/WpairFragment;->q(Lcom/zalexdev/stryker/wpair/WpairFragment;Lcom/zalexdev/stryker/wpair/FastPairDevice;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
