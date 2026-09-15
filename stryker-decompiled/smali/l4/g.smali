.class public final synthetic Ll4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll4/h;


# direct methods
.method public synthetic constructor <init>(Ll4/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ll4/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ll4/g;->b:Ll4/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Ll4/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll4/g;->b:Ll4/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll4/h;->c()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Ll4/g;->b:Ll4/h;

    .line 13
    .line 14
    invoke-virtual {v0}, Ll4/h;->d()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Ll4/g;->b:Ll4/h;

    .line 19
    .line 20
    invoke-virtual {v0}, Ll4/h;->a()V

    .line 21
    .line 22
    .line 23
    iget-boolean v1, v0, Ll4/h;->d:Z

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Ll4/h;->a:Landroid/app/Activity;

    .line 28
    .line 29
    new-instance v2, Ll4/g;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v2, v0, v3}, Ll4/g;-><init>(Ll4/h;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
