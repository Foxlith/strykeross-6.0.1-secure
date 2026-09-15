.class public final Ll1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ll1/r;->a:I

    iput-object p1, p0, Ll1/r;->c:Ljava/lang/Object;

    iput p2, p0, Ll1/r;->b:I

    return-void
.end method

.method public constructor <init>(Ll1/p;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll1/r;->a:I

    iput p2, p0, Ll1/r;->b:I

    iput-object p1, p0, Ll1/r;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Ll1/r;->a:I

    .line 2
    .line 3
    iget v1, p0, Ll1/r;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Ll1/r;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 11
    .line 12
    iget-object v0, v2, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
