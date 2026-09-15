.class public final synthetic Landroidx/lifecycle/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/c;


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
    iput p2, p0, Landroidx/lifecycle/j0;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/lifecycle/j0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/j0;->a:I

    iget-object v1, p0, Landroidx/lifecycle/j0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Landroidx/activity/h;

    invoke-static {v1}, Landroidx/activity/h;->b(Landroidx/activity/h;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v1, Landroidx/lifecycle/k0;

    invoke-static {v1}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/k0;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1
    check-cast v1, Landroidx/lifecycle/k0;

    invoke-static {v1}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/k0;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
