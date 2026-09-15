.class public final synthetic Lb3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lb3/g;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILb3/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb3/a;->a:Lb3/g;

    iput p1, p0, Lb3/a;->b:I

    iput-object p3, p0, Lb3/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lb3/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lb3/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget v1, p0, Lb3/a;->b:I

    .line 2
    .line 3
    iget-object v3, p0, Lb3/a;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lb3/a;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lb3/a;->a:Lb3/g;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v6, Landroid/widget/PopupMenu;

    .line 13
    .line 14
    iget-object v0, v2, Lb3/g;->b:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v6, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v2, Lb3/g;->d:Ll4/l;

    .line 20
    .line 21
    iget-object v0, p0, Lb3/a;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 p1, 0x0

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v7, 0x5

    .line 41
    const v8, 0x7f13026f

    .line 42
    .line 43
    .line 44
    invoke-interface {v0, p1, v7, p1, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const v7, 0x7f130264

    .line 52
    .line 53
    .line 54
    const/4 v8, 0x1

    .line 55
    invoke-interface {v0, p1, v8, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const v7, 0x7f130262

    .line 63
    .line 64
    .line 65
    const/4 v8, 0x2

    .line 66
    invoke-interface {v0, p1, v8, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const v7, 0x7f130261

    .line 74
    .line 75
    .line 76
    const/4 v8, 0x3

    .line 77
    invoke-interface {v0, p1, v8, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const v7, 0x7f13025f

    .line 85
    .line 86
    .line 87
    const/4 v8, 0x4

    .line 88
    invoke-interface {v0, p1, v8, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 89
    .line 90
    .line 91
    new-instance p1, Lb3/b;

    .line 92
    .line 93
    move-object v0, p1

    .line 94
    invoke-direct/range {v0 .. v5}, Lb3/b;-><init>(ILb3/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6}, Landroid/widget/PopupMenu;->show()V

    .line 101
    .line 102
    .line 103
    return-void
.end method
