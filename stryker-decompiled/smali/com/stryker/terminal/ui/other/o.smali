.class public final synthetic Lcom/stryker/terminal/ui/other/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Consumer;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/stryker/terminal/ui/other/o;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/ui/other/o;->b:Ljava/util/function/Consumer;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/stryker/terminal/ui/other/o;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/stryker/terminal/ui/other/o;->a:I

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/o;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/stryker/terminal/ui/other/o;->b:Ljava/util/function/Consumer;

    packed-switch v0, :pswitch_data_0

    invoke-static {v2, v1}, Lcom/stryker/terminal/ui/other/SuUtils;->d(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void

    :pswitch_0
    invoke-static {v2, v1}, Lcom/stryker/terminal/ui/other/SuUtils;->g(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void

    :pswitch_1
    invoke-static {v2, v1}, Lcom/stryker/terminal/ui/other/SuUtils;->c(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void

    :pswitch_2
    invoke-static {v2, v1}, Lcom/stryker/terminal/ui/other/SuUtils;->b(Ljava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
