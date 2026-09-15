.class public final synthetic Ls2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls2/e;

.field public final synthetic c:Ls2/d;

.field public final synthetic d:Lcom/zalexdev/stryker/custom/Package;


# direct methods
.method public synthetic constructor <init>(ILs2/d;Ls2/e;Lcom/zalexdev/stryker/custom/Package;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ls2/a;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Ls2/a;->b:Ls2/e;

    .line 7
    .line 8
    iput-object p2, p0, Ls2/a;->c:Ls2/d;

    .line 9
    .line 10
    iput-object p4, p0, Ls2/a;->d:Lcom/zalexdev/stryker/custom/Package;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Ls2/a;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Ls2/a;->d:Lcom/zalexdev/stryker/custom/Package;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    iget-object v3, p0, Ls2/a;->c:Ls2/d;

    .line 9
    .line 10
    iget-object v4, p0, Ls2/a;->b:Ls2/e;

    .line 11
    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p1, v3, Ls2/d;->e:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v3, Ls2/d;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, v4, Ls2/e;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ll4/l;

    .line 31
    .line 32
    iget-object v1, v4, Ls2/e;->b:Landroid/app/Activity;

    .line 33
    .line 34
    iget-object v2, v4, Ls2/e;->c:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const v6, 0x7f130146

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1, v1, v2}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/Thread;

    .line 55
    .line 56
    new-instance v1, Ls2/b;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-direct {v1, v2, v3, v4, v0}, Ls2/b;-><init>(ILs2/d;Ls2/e;Lcom/zalexdev/stryker/custom/Package;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object p1, v3, Ls2/d;->e:Landroid/widget/ImageView;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, v3, Ls2/d;->f:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, v4, Ls2/e;->d:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Ll4/l;

    .line 85
    .line 86
    iget-object v2, v4, Ls2/e;->b:Landroid/app/Activity;

    .line 87
    .line 88
    iget-object v5, v4, Ls2/e;->c:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/zalexdev/stryker/custom/Package;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const v7, 0x7f13015b

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {p1, v2, v5}, Ll4/l;->q0(Landroid/app/Activity;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Ljava/lang/Thread;

    .line 109
    .line 110
    new-instance v2, Ls2/b;

    .line 111
    .line 112
    invoke-direct {v2, v1, v3, v4, v0}, Ls2/b;-><init>(ILs2/d;Ls2/e;Lcom/zalexdev/stryker/custom/Package;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
