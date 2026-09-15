.class public final Lcom/stryker/terminal/ui/customize/ColorItemAdapter;
.super Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;
.source "SourceFile"

# interfaces
.implements Ld2/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter<",
        "Lcom/stryker/terminal/ui/customize/ColorItem;",
        ">;",
        "Ld2/b;"
    }
.end annotation


# instance fields
.field private final colorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/ui/customize/ColorItem;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;Ljava/util/Comparator;Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;",
            "Ljava/util/Comparator<",
            "Lcom/stryker/terminal/ui/customize/ColorItem;",
            ">;",
            "Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initColorScheme"

    .line 7
    .line 8
    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "comparator"

    .line 12
    .line 13
    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "listener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-class v0, Lcom/stryker/terminal/ui/customize/ColorItem;

    .line 22
    .line 23
    invoke-direct {p0, p1, v0, p3}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Comparator;)V

    .line 24
    .line 25
    .line 26
    iput-object p4, p0, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;->listener:Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;

    .line 27
    .line 28
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;->colorList:Ljava/util/List;

    .line 34
    .line 35
    new-instance p1, Ln5/c;

    .line 36
    .line 37
    const/4 p3, 0x1

    .line 38
    const/4 p4, -0x3

    .line 39
    const/16 v0, 0xf

    .line 40
    .line 41
    invoke-direct {p1, p4, v0, p3}, Ln5/a;-><init>(III)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    move-object p3, p1

    .line 55
    check-cast p3, Ln5/b;

    .line 56
    .line 57
    invoke-virtual {p3}, Ln5/b;->b()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    iget-object p4, p0, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;->colorList:Ljava/util/List;

    .line 62
    .line 63
    new-instance v0, Lcom/stryker/terminal/ui/customize/ColorItem;

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Lcom/stryker/terminal/component/colorscheme/NeoColorScheme;->getColor(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    const-string v1, ""

    .line 72
    .line 73
    :cond_0
    invoke-direct {v0, p3, v1}, Lcom/stryker/terminal/ui/customize/ColorItem;-><init>(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter;->edit()Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;->colorList:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p1, p2}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;->add(Ljava/util/List;)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p1}, Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$Editor;->commit()V

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final getColorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/ui/customize/ColorItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;->colorList:Ljava/util/List;

    return-object v0
.end method

.method public getSectionName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;->colorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/ui/customize/ColorItem;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/customize/ColorItem;->getColorName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/github/wrdlbrnft/sortedlistadapter/SortedListAdapter$ViewHolder<",
            "+",
            "Lcom/stryker/terminal/ui/customize/ColorItem;",
            ">;"
        }
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Lcom/stryker/terminal/R$layout;->item_color:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;

    const-string p3, "rootView"

    invoke-static {p1, p3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/stryker/terminal/ui/customize/ColorItemAdapter;->listener:Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;

    invoke-direct {p2, p1, p3}, Lcom/stryker/terminal/ui/customize/ColorItemViewHolder;-><init>(Landroid/view/View;Lcom/stryker/terminal/ui/customize/ColorItemAdapter$Listener;)V

    return-object p2
.end method
