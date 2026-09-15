.class public final synthetic Lcom/stryker/terminal/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/stryker/terminal/utils/b;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/stryker/terminal/utils/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput p1, p0, Lcom/stryker/terminal/utils/b;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/stryker/terminal/utils/b;->a:I

    .line 2
    .line 3
    iget v1, p0, Lcom/stryker/terminal/utils/b;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/stryker/terminal/utils/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lt2/m;

    .line 11
    .line 12
    iget-object p1, v2, Lt2/m;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ll4/l;

    .line 15
    .line 16
    iget-object p2, v2, Lt2/m;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "bssids"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v3, v0}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ll4/l;->g0(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v2, Lt2/m;->b:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/k0;->notifyItemRemoved(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, v2, Lt2/m;->b:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {v2, v1, p1}, Landroidx/recyclerview/widget/k0;->notifyItemRangeChanged(II)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_0
    check-cast v2, Lf/q;

    .line 65
    .line 66
    invoke-static {v2, v1, p1, p2}, Lcom/stryker/terminal/utils/NeoPermission;->a(Lf/q;ILandroid/content/DialogInterface;I)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
