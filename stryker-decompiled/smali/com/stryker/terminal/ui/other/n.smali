.class public final synthetic Lcom/stryker/terminal/ui/other/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/util/function/Consumer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/stryker/terminal/ui/other/n;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/ui/other/n;->b:Landroid/app/Activity;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/stryker/terminal/ui/other/n;->c:Ljava/util/function/Consumer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/stryker/terminal/ui/other/n;->a:I

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/n;->c:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/n;->b:Landroid/app/Activity;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1}, Lcom/stryker/terminal/ui/other/SuUtils;->a(Landroid/app/Activity;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    invoke-static {v2, v1}, Lcom/stryker/terminal/ui/other/SuUtils;->h(Landroid/app/Activity;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    invoke-static {v2, v1}, Lcom/stryker/terminal/ui/other/SuUtils;->f(Landroid/app/Activity;Ljava/util/function/Consumer;)V

    return-void

    :pswitch_2
    invoke-static {v2, v1}, Lcom/stryker/terminal/ui/other/SuUtils;->i(Landroid/app/Activity;Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
