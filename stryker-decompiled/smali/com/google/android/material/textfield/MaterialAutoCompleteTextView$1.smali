.class Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    if-gez p3, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/v2;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    move-object v0, p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$100(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_7

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    if-gez p3, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :goto_1
    move-object v3, p2

    .line 56
    move v4, p3

    .line 57
    move-wide v5, p4

    .line 58
    goto :goto_7

    .line 59
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 60
    .line 61
    invoke-static {p2}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/v2;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iget-object p3, p2, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 66
    .line 67
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    if-nez p3, :cond_4

    .line 72
    .line 73
    :goto_3
    move-object p2, p1

    .line 74
    goto :goto_4

    .line 75
    :cond_4
    iget-object p1, p2, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    goto :goto_3

    .line 82
    :goto_4
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/v2;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p3, p1, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 89
    .line 90
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-nez p3, :cond_5

    .line 95
    .line 96
    const/4 p1, -0x1

    .line 97
    :goto_5
    move p3, p1

    .line 98
    goto :goto_6

    .line 99
    :cond_5
    iget-object p1, p1, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    goto :goto_5

    .line 106
    :goto_6
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/v2;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object p4, p1, Landroidx/appcompat/widget/v2;->A:Landroidx/appcompat/widget/j0;

    .line 113
    .line 114
    invoke-virtual {p4}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 115
    .line 116
    .line 117
    move-result p4

    .line 118
    if-nez p4, :cond_6

    .line 119
    .line 120
    const-wide/high16 p4, -0x8000000000000000L

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_6
    iget-object p1, p1, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 126
    .line 127
    .line 128
    move-result-wide p4

    .line 129
    goto :goto_1

    .line 130
    :goto_7
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/v2;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object v2, p1, Landroidx/appcompat/widget/v2;->c:Landroidx/appcompat/widget/i2;

    .line 137
    .line 138
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 139
    .line 140
    .line 141
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/v2;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroidx/appcompat/widget/v2;->dismiss()V

    .line 148
    .line 149
    .line 150
    return-void
.end method
