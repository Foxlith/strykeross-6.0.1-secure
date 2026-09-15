.class public final synthetic Lb3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lb3/g;

.field public final synthetic b:Lb3/f;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lb3/g;Lb3/f;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/c;->a:Lb3/g;

    iput-object p2, p0, Lb3/c;->b:Lb3/f;

    iput-object p3, p0, Lb3/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lb3/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lb3/c;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 1
    iget-object v2, p0, Lb3/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v5, p0, Lb3/c;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lb3/c;->a:Lb3/g;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lb3/c;->e:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    move-object v3, p1

    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Lb3/c;->b:Lb3/f;

    .line 20
    .line 21
    iget-object p1, v4, Lb3/f;->b:Landroid/widget/TextView;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    const-string p1, "#9E9E9E"

    .line 28
    .line 29
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v0, v4, Lb3/f;->b:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, v4, Lb3/f;->c:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v4, Lb3/f;->d:Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    const v6, 0x7f130279

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    const-string v6, "#AB47BC"

    .line 55
    .line 56
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, v4, Lb3/f;->e:Landroid/widget/ImageView;

    .line 64
    .line 65
    const/16 v6, 0x8

    .line 66
    .line 67
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, v4, Lb3/f;->f:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    const p1, 0x7f130272

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Ljava/lang/Thread;

    .line 82
    .line 83
    new-instance p2, Ln1/b0;

    .line 84
    .line 85
    const/4 v6, 0x2

    .line 86
    move-object v0, p2

    .line 87
    invoke-direct/range {v0 .. v6}, Ln1/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 94
    .line 95
    .line 96
    return-void
.end method
