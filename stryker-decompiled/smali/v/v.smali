.class public final Lv/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/b0;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/v;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lv/v;->a:Z

    iput-object p2, p0, Lv/v;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/appcompat/view/menu/o;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv/v;->b:Ljava/lang/Object;

    check-cast v0, Lf/t0;

    iget-object v0, v0, Lf/t0;->b:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lv/v;->a:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lv/v;->a:Z

    .line 8
    .line 9
    iget-object p2, p0, Lv/v;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lf/t0;

    .line 12
    .line 13
    iget-object v0, p2, Lf/t0;->a:Landroidx/appcompat/widget/q4;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/appcompat/widget/q4;->a:Landroidx/appcompat/widget/Toolbar;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->dismissPopupMenus()V

    .line 18
    .line 19
    .line 20
    iget-object p2, p2, Lf/t0;->b:Landroid/view/Window$Callback;

    .line 21
    .line 22
    const/16 v0, 0x6c

    .line 23
    .line 24
    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lv/v;->a:Z

    .line 29
    .line 30
    return-void
.end method
