.class public final Lf/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf/j;->a:I

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf/j;->a:I

    iput-object p1, p0, Lf/j;->b:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p0, Lf/j;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget p1, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lf/j;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroidx/preference/PreferenceFragmentCompat;

    .line 15
    .line 16
    iget-object p1, p1, Landroidx/preference/PreferenceFragmentCompat;->b:Ld1/h;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const/4 v2, -0x3

    .line 25
    if-eq v0, v2, :cond_2

    .line 26
    .line 27
    const/4 v2, -0x2

    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroid/content/DialogInterface;

    .line 39
    .line 40
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 47
    .line 48
    iget-object v1, p0, Lf/j;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/content/DialogInterface;

    .line 57
    .line 58
    iget p1, p1, Landroid/os/Message;->what:I

    .line 59
    .line 60
    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
