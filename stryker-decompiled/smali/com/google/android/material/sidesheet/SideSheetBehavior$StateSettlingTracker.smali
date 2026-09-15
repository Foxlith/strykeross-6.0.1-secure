.class Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/sidesheet/SideSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateSettlingTracker"
.end annotation


# instance fields
.field private final continueSettlingRunnable:Ljava/lang/Runnable;

.field private isContinueSettlingRunnablePosted:Z

.field private targetState:I

.field final synthetic this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/material/sidesheet/c;

    invoke-direct {p1, p0}, Lcom/google/android/material/sidesheet/c;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;)V

    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->continueSettlingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$700(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Landroidx/customview/widget/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$700(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Landroidx/customview/widget/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/customview/widget/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->targetState:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->continueSettlingToState(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$000(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->targetState:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public continueSettlingToState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$100(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$100(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->targetState:I

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$100(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/view/View;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->continueSettlingRunnable:Ljava/lang/Runnable;

    .line 41
    .line 42
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 43
    .line 44
    invoke-static {p1, v0}, Landroidx/core/view/k0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    .line 49
    .line 50
    :cond_1
    :goto_0
    return-void
.end method
