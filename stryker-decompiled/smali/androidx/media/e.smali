.class public final Landroidx/media/e;
.super Landroidx/media/j;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/media/q;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/media/e;->d:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media/e;->e:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroidx/media/j;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media/e;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media/e;->d()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Landroidx/media/e;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/media/q;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/media/q;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    invoke-virtual {p0}, Landroidx/media/e;->d()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Landroidx/media/e;->d:I

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/media/e;->e:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Landroidx/media/q;

    .line 10
    .line 11
    iget v1, p0, Landroidx/media/j;->c:I

    .line 12
    .line 13
    iget-object v3, v2, Landroidx/media/q;->b:Landroid/service/media/MediaBrowserService$Result;

    .line 14
    .line 15
    :try_start_0
    sget-object v4, Landroidx/media/v;->a:Ljava/lang/reflect/Field;

    .line 16
    .line 17
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    const-string v4, "MBSCompatApi26"

    .line 23
    .line 24
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v2, v0}, Landroidx/media/q;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v3, v0}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast v2, Landroidx/media/q;

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Landroidx/media/q;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
