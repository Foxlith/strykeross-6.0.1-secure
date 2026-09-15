.class public final synthetic Lcom/topjohnwu/superuser/internal/c;
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
    iput p3, p0, Lcom/topjohnwu/superuser/internal/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/topjohnwu/superuser/internal/c;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/topjohnwu/superuser/internal/c;->a:I

    iget-object v1, p0, Lcom/topjohnwu/superuser/internal/c;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/topjohnwu/superuser/internal/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v2, Ljava/util/concurrent/Executor;

    check-cast v1, Lcom/topjohnwu/superuser/Shell$GetShellCallback;

    invoke-static {v2, v1}, Lcom/topjohnwu/superuser/internal/MainShell;->b(Ljava/util/concurrent/Executor;Lcom/topjohnwu/superuser/Shell$GetShellCallback;)V

    return-void

    :pswitch_0
    check-cast v2, Lcom/topjohnwu/superuser/Shell$GetShellCallback;

    check-cast v1, Lcom/topjohnwu/superuser/Shell;

    invoke-static {v2, v1}, Lcom/topjohnwu/superuser/internal/MainShell;->a(Lcom/topjohnwu/superuser/Shell$GetShellCallback;Lcom/topjohnwu/superuser/Shell;)V

    return-void

    :pswitch_1
    check-cast v2, Lcom/topjohnwu/superuser/internal/ResultImpl;

    check-cast v1, Lcom/topjohnwu/superuser/Shell$ResultCallback;

    invoke-static {v2, v1}, Lcom/topjohnwu/superuser/internal/ResultImpl;->a(Lcom/topjohnwu/superuser/internal/ResultImpl;Lcom/topjohnwu/superuser/Shell$ResultCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
