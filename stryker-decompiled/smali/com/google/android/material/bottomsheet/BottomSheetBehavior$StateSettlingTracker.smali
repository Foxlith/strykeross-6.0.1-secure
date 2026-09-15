.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateSettlingTracker"
.end annotation


# instance fields
.field private final continueSettlingRunnable:Ljava/lang/Runnable;

.field private isContinueSettlingRunnablePosted:Z

.field private targetState:I

.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method private constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;)V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->continueSettlingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method public static synthetic access$1702(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    return p1
.end method

.method public static synthetic access$1800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->targetState:I

    return p0
.end method


# virtual methods
.method public continueSettlingToState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->targetState:I

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/View;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->continueSettlingRunnable:Ljava/lang/Runnable;

    .line 31
    .line 32
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 33
    .line 34
    invoke-static {p1, v0}, Landroidx/core/view/k0;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$StateSettlingTracker;->isContinueSettlingRunnablePosted:Z

    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method
