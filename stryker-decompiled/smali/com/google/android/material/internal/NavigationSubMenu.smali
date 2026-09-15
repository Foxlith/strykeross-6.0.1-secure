.class public Lcom/google/android/material/internal/NavigationSubMenu;
.super Landroidx/appcompat/view/menu/i0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/NavigationMenu;Landroidx/appcompat/view/menu/q;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/i0;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)V

    return-void
.end method


# virtual methods
.method public onItemsChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/i0;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/o;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-void
.end method
