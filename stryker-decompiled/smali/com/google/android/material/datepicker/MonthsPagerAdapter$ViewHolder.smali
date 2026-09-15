.class public Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/MonthsPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field final monthTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/google/android/material/R$id;->month_title:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthTitle:Landroid/widget/TextView;

    .line 13
    .line 14
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    new-instance v1, Landroidx/core/view/g0;

    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    const v3, 0x7f0a0614

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v3, v2}, Landroidx/core/view/g0;-><init>(II)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Landroidx/core/view/i0;->b(Landroid/view/View;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget v1, Lcom/google/android/material/R$id;->month_grid:I

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 39
    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    const/16 p1, 0x8

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
