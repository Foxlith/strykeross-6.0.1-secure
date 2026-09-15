.class public final synthetic Landroidx/appcompat/widget/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/appcompat/widget/i4;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/widget/i4;->b:Landroidx/appcompat/widget/Toolbar;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/i4;->a:I

    iget-object v1, p0, Landroidx/appcompat/widget/i4;->b:Landroidx/appcompat/widget/Toolbar;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->g(Landroidx/appcompat/widget/Toolbar;)V

    return-void

    :pswitch_0
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    return-void

    :pswitch_1
    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->invalidateMenu()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
