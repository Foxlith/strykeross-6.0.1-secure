.class public final Landroidx/appcompat/widget/h;
.super Landroidx/appcompat/view/menu/a0;
.source "SourceFile"


# instance fields
.field public final synthetic m:I

.field public final synthetic n:Landroidx/appcompat/widget/o;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/o;Landroid/content/Context;Landroidx/appcompat/view/menu/i0;Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/h;->m:I

    iput-object p1, p0, Landroidx/appcompat/widget/h;->n:Landroidx/appcompat/widget/o;

    const/4 v7, 0x0

    const v2, 0x7f040022

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    .line 4
    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/view/menu/a0;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/o;Z)V

    .line 5
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/i0;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/q;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/q;->f()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Landroidx/appcompat/widget/o;->j:Landroidx/appcompat/widget/l;

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p1, Landroidx/appcompat/widget/o;->h:Landroidx/appcompat/view/menu/e0;

    .line 7
    check-cast p2, Landroid/view/View;

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/a0;->f:Landroid/view/View;

    :cond_1
    iget-object p1, p1, Landroidx/appcompat/widget/o;->y:Landroidx/appcompat/widget/m;

    iput-object p1, p0, Landroidx/appcompat/view/menu/a0;->i:Landroidx/appcompat/view/menu/b0;

    iget-object p2, p0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/x;

    if-eqz p2, :cond_2

    .line 8
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/c0;->setCallback(Landroidx/appcompat/view/menu/b0;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/o;Landroid/content/Context;Landroidx/appcompat/view/menu/o;Landroidx/appcompat/widget/l;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/h;->m:I

    iput-object p1, p0, Landroidx/appcompat/widget/h;->n:Landroidx/appcompat/widget/o;

    const v1, 0x7f040022

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/view/menu/a0;-><init>(IILandroid/content/Context;Landroid/view/View;Landroidx/appcompat/view/menu/o;Z)V

    const p2, 0x800005

    iput p2, p0, Landroidx/appcompat/view/menu/a0;->g:I

    .line 2
    iget-object p1, p1, Landroidx/appcompat/widget/o;->y:Landroidx/appcompat/widget/m;

    iput-object p1, p0, Landroidx/appcompat/view/menu/a0;->i:Landroidx/appcompat/view/menu/b0;

    iget-object p2, p0, Landroidx/appcompat/view/menu/a0;->j:Landroidx/appcompat/view/menu/x;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/c0;->setCallback(Landroidx/appcompat/view/menu/b0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/h;->m:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/h;->n:Landroidx/appcompat/widget/o;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v2, Landroidx/appcompat/widget/o;->c:Landroidx/appcompat/view/menu/o;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/o;->close()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object v1, v2, Landroidx/appcompat/widget/o;->u:Landroidx/appcompat/widget/h;

    .line 17
    .line 18
    invoke-super {p0}, Landroidx/appcompat/view/menu/a0;->c()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iput-object v1, v2, Landroidx/appcompat/widget/o;->v:Landroidx/appcompat/widget/h;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, v2, Landroidx/appcompat/widget/o;->z:I

    .line 26
    .line 27
    invoke-super {p0}, Landroidx/appcompat/view/menu/a0;->c()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
