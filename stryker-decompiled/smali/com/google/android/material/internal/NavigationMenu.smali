.class public Lcom/google/android/material/internal/NavigationMenu;
.super Landroidx/appcompat/view/menu/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/o;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/appcompat/view/menu/q;

    .line 6
    .line 7
    new-instance p2, Lcom/google/android/material/internal/NavigationSubMenu;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-direct {p2, p3, p0, p1}, Lcom/google/android/material/internal/NavigationSubMenu;-><init>(Landroid/content/Context;Lcom/google/android/material/internal/NavigationMenu;Landroidx/appcompat/view/menu/q;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p1, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/i0;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 21
    .line 22
    .line 23
    return-object p2
.end method
