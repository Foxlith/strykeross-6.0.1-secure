.class public final Landroidx/appcompat/widget/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/appcompat/widget/h2;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/h2;->b:Landroid/view/ViewGroup;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/h2;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/appcompat/widget/h2;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, Landroidx/appcompat/widget/i2;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, v1, Landroidx/appcompat/widget/i2;->l:Landroidx/appcompat/widget/h2;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/appcompat/widget/i2;->drawableStateChanged()V

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
