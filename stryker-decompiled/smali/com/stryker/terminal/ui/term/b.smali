.class public final synthetic Lcom/stryker/terminal/ui/term/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/stryker/terminal/component/session/XSessionData;

.field public final synthetic c:Lcom/stryker/terminal/ui/term/NeoTabDecorator;

.field public final synthetic d:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/stryker/terminal/ui/term/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/ui/term/b;->b:Lcom/stryker/terminal/component/session/XSessionData;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/stryker/terminal/ui/term/b;->c:Lcom/stryker/terminal/ui/term/NeoTabDecorator;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/stryker/terminal/ui/term/b;->d:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/stryker/terminal/ui/term/b;->a:I

    iget-object v1, p0, Lcom/stryker/terminal/ui/term/b;->b:Lcom/stryker/terminal/component/session/XSessionData;

    iget-object v2, p0, Lcom/stryker/terminal/ui/term/b;->d:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/stryker/terminal/ui/term/b;->c:Lcom/stryker/terminal/ui/term/NeoTabDecorator;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, v3, v2}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->e(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;)V

    return-void

    :pswitch_0
    invoke-static {v1, v3, v2}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->c(Lcom/stryker/terminal/component/session/XSessionData;Lcom/stryker/terminal/ui/term/NeoTabDecorator;Landroid/widget/FrameLayout;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
