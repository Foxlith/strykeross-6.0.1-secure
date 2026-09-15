.class public final Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/fragment/app/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/fragment/app/g;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/fragment/app/g;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/fragment/app/g;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/fragment/app/t1;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/fragment/app/t1;->c()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast v1, Landroidx/fragment/app/j;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/i;->a()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-static {v1, v0}, Landroidx/fragment/app/g1;->b(Ljava/util/ArrayList;I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
