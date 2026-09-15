.class public final Lcom/google/android/material/navigation/NavigationBarMenu;
.super Landroidx/appcompat/view/menu/o;
.source "SourceFile"


# instance fields
.field private final maxItemCount:I

.field private final viewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    return-void
.end method


# virtual methods
.method public addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    iget v2, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    .line 8
    .line 9
    if-gt v0, v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/o;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of p2, p1, Landroidx/appcompat/view/menu/q;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    move-object p2, p1

    .line 23
    check-cast p2, Landroidx/appcompat/view/menu/q;

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/q;->g(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p3, "Maximum number of items supported by "

    .line 41
    .line 42
    const-string p4, " is "

    .line 43
    .line 44
    invoke-static {p3, p1, p4}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    iget p4, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    .line 49
    .line 50
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p4, ". Limit can be checked with "

    .line 54
    .line 55
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, "#getMaxItemCount()"

    .line 62
    .line 63
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p2
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p2, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->viewClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, " does not support submenus"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMaxItemCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenu;->maxItemCount:I

    return v0
.end method
