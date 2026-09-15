.class public final Ls4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg3/b;

.field public final synthetic c:Ls4/d;


# direct methods
.method public synthetic constructor <init>(Ls4/d;Lg3/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Ls4/c;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Ls4/c;->c:Ls4/d;

    .line 7
    .line 8
    iput-object p2, p0, Ls4/c;->b:Lg3/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Ls4/c;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ls4/c;->b:Lg3/b;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lg3/b;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Les/dmoral/coloromatic/ColorOMaticDialog;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, Ls4/c;->c:Ls4/d;

    .line 17
    .line 18
    iget p1, p1, Ls4/d;->b:I

    .line 19
    .line 20
    iget-object v0, v0, Lg3/b;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Les/dmoral/coloromatic/ColorOMaticDialog;

    .line 23
    .line 24
    iget-object v1, v0, Les/dmoral/coloromatic/ColorOMaticDialog;->a:Lv/f;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, v1, Lv/f;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lj5/l;

    .line 31
    .line 32
    invoke-static {v1, p1}, Lcom/stryker/terminal/ui/customize/ColorSchemeActivity;->h(Lj5/l;I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
