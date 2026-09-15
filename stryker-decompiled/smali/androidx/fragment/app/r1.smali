.class public final Landroidx/fragment/app/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/s1;

.field public final synthetic c:Landroidx/fragment/app/t1;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/t1;Landroidx/fragment/app/s1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/fragment/app/r1;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/fragment/app/r1;->c:Landroidx/fragment/app/t1;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/fragment/app/r1;->b:Landroidx/fragment/app/s1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/r1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/r1;->b:Landroidx/fragment/app/s1;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/r1;->c:Landroidx/fragment/app/t1;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Landroidx/fragment/app/t1;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, v2, Landroidx/fragment/app/t1;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object v0, v2, Landroidx/fragment/app/t1;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget v0, v1, Landroidx/fragment/app/s1;->a:I

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/Fragment;

    .line 32
    .line 33
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->a(ILandroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
