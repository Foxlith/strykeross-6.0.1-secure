.class Lcom/google/android/material/datepicker/MaterialDatePicker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->enableEdgeToEdgeIfNeeded(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

.field final synthetic val$headerLayout:Landroid/view/View;

.field final synthetic val$originalHeaderHeight:I

.field final synthetic val$originalPaddingTop:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;ILandroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iput p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalHeaderHeight:I

    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    iput p4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalPaddingTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 4

    .line 1
    iget-object p1, p2, Landroidx/core/view/q2;->a:Landroidx/core/view/o2;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-virtual {p1, v0}, Landroidx/core/view/o2;->f(I)Lz/f;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget p1, p1, Lz/f;->b:I

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalHeaderHeight:I

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalHeaderHeight:I

    .line 21
    .line 22
    add-int/2addr v1, p1

    .line 23
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalPaddingTop:I

    .line 41
    .line 42
    add-int/2addr v2, p1

    .line 43
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    .line 57
    .line 58
    return-object p2
.end method
