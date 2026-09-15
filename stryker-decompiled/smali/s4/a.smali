.class public final Ls4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:Ls4/b;


# direct methods
.method public constructor <init>(Ls4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/a;->a:Ls4/b;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 1
    iget-object p1, p0, Ls4/a;->a:Ls4/b;

    .line 2
    .line 3
    iget-object p3, p1, Ls4/b;->a:Lq4/b;

    .line 4
    .line 5
    iput p2, p3, Lq4/b;->d:I

    .line 6
    .line 7
    iget-object p1, p1, Ls4/b;->b:Lv1/m;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p3, p1, Lv1/m;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p3, Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ls4/b;

    .line 35
    .line 36
    invoke-virtual {v1}, Ls4/b;->getChannel()Lq4/b;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p1, Lv1/m;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ls4/d;

    .line 47
    .line 48
    iget-object v1, p1, Lv1/m;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Landroid/view/View;

    .line 51
    .line 52
    iget-object p1, p1, Lv1/m;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Landroid/widget/TextView;

    .line 55
    .line 56
    sget v2, Ls4/d;->e:I

    .line 57
    .line 58
    invoke-virtual {v0, v1, p1, p3, p2}, Ls4/d;->a(Landroid/view/View;Landroid/widget/TextView;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method
