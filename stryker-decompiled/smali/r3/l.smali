.class public final synthetic Lr3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr3/t;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lr3/t;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lr3/l;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lr3/l;->b:Lr3/t;

    .line 7
    .line 8
    iput-object p2, p0, Lr3/l;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lr3/l;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lr3/l;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lr3/l;->b:Lr3/t;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lr3/t;->d:Ll4/l;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, v2, Lr3/t;->d:Ll4/l;

    .line 17
    .line 18
    const-string v3, "cameradar"

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ll4/l;->T(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    new-instance v3, Ln1/o;

    .line 25
    .line 26
    const/4 v4, 0x3

    .line 27
    invoke-direct {v3, v2, v0, v1, v4}, Ln1/o;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v2, Lr3/t;->b:Landroid/app/Activity;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iget-object v0, v2, Lr3/t;->a:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
