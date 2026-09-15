.class public final Landroidx/appcompat/widget/s2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/appcompat/widget/s2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/s2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/s2;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/s2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ll0/b;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, v1, Ll0/b;->a:Z

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast v1, Landroidx/appcompat/widget/v2;

    .line 18
    .line 19
    iget-object v0, v1, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/appcompat/widget/v2;->d()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onInvalidated()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/s2;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/s2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ll0/b;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, v1, Ll0/b;->a:Z

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    check-cast v1, Landroidx/appcompat/widget/v2;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/appcompat/widget/v2;->dismiss()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
