.class public final synthetic Lr3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lr3/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lr3/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lr3/a;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput p3, p0, Lr3/a;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lr3/a;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lr3/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/zalexdev/stryker/MainActivity;

    .line 9
    .line 10
    iget-object v0, p0, Lr3/a;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 13
    .line 14
    iget v1, p0, Lr3/a;->d:I

    .line 15
    .line 16
    sget-object v2, Lcom/zalexdev/stryker/MainActivity;->q:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const v2, 0x800003

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->m(Landroid/view/View;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->d(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object v0, Lcom/zalexdev/stryker/MainActivity;->r:Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget-object v3, Lx/g;->a:Ljava/lang/Object;

    .line 47
    .line 48
    const v3, 0x7f0801ac

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p1, Lcom/zalexdev/stryker/MainActivity;->l:Landroidx/fragment/app/x0;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Landroidx/fragment/app/x0;->e(I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_0
    iget-object p1, p0, Lr3/a;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lr3/t;

    .line 70
    .line 71
    iget-object v0, p0, Lr3/a;->c:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lcom/zalexdev/stryker/custom/Device;

    .line 74
    .line 75
    iget-object v1, p1, Lr3/t;->d:Ll4/l;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iget v2, p0, Lr3/a;->d:I

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    new-instance v1, Ljava/lang/Thread;

    .line 89
    .line 90
    new-instance v3, Lcom/stryker/terminal/component/session/b;

    .line 91
    .line 92
    const/4 v4, 0x2

    .line 93
    invoke-direct {v3, p1, v0, v2, v4}, Lcom/stryker/terminal/component/session/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    const-string p1, "netcut-l2-check"

    .line 97
    .line 98
    invoke-direct {v1, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p1, v0, v2}, Lr3/t;->c(Lcom/zalexdev/stryker/custom/Device;I)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void

    .line 109
    :pswitch_1
    iget-object p1, p0, Lr3/a;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p1, Lr3/t;

    .line 112
    .line 113
    iget-object v0, p0, Lr3/a;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Lcom/zalexdev/stryker/custom/Device;

    .line 116
    .line 117
    iget v1, p0, Lr3/a;->d:I

    .line 118
    .line 119
    invoke-virtual {p1, v0, v1}, Lr3/t;->d(Lcom/zalexdev/stryker/custom/Device;I)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
