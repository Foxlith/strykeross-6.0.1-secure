.class public abstract Landroidx/transition/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroidx/transition/n;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ln/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroidx/transition/d0;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/c0;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroidx/transition/s;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/t;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Ln/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln/b;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroidx/transition/a0;

.field private mPathMotion:Landroidx/transition/n;

.field private mPaused:Z

.field mPropagation:Landroidx/transition/y;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Landroidx/transition/d0;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/c0;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    filled-new-array {v2, v3, v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/u;->DEFAULT_MATCH_ORDER:[I

    .line 10
    .line 11
    new-instance v0, Landroidx/transition/p;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/transition/u;->STRAIGHT_PATH_MOTION:Landroidx/transition/n;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/transition/u;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/u;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/u;->mStartDelay:J

    iput-wide v0, p0, Landroidx/transition/u;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/u;->mInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/u;->mTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/u;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/u;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/u;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/u;->mTargetNameExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/u;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/u;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Landroidx/transition/u;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    new-instance v1, Landroidx/transition/d0;

    invoke-direct {v1}, Landroidx/transition/d0;-><init>()V

    iput-object v1, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    new-instance v1, Landroidx/transition/d0;

    invoke-direct {v1}, Landroidx/transition/d0;-><init>()V

    iput-object v1, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    iput-object v0, p0, Landroidx/transition/u;->mParent:Landroidx/transition/a0;

    sget-object v1, Landroidx/transition/u;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/u;->mMatchOrder:[I

    iput-object v0, p0, Landroidx/transition/u;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/u;->mCanRemoveViews:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/u;->mCurrentAnimators:Ljava/util/ArrayList;

    iput v1, p0, Landroidx/transition/u;->mNumInstances:I

    iput-boolean v1, p0, Landroidx/transition/u;->mPaused:Z

    iput-boolean v1, p0, Landroidx/transition/u;->mEnded:Z

    iput-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/u;->mAnimators:Ljava/util/ArrayList;

    sget-object v0, Landroidx/transition/u;->STRAIGHT_PATH_MOTION:Landroidx/transition/n;

    iput-object v0, p0, Landroidx/transition/u;->mPathMotion:Landroidx/transition/n;

    return-void
.end method

.method public static a(Landroidx/transition/d0;Landroid/view/View;Landroidx/transition/c0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/transition/d0;->a:Ln/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x0

    .line 11
    if-ltz p2, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/transition/d0;->b:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    sget-object p2, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    invoke-static {p1}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/transition/d0;->d:Ln/b;

    .line 37
    .line 38
    invoke-virtual {v1, p2}, Ln/k;->containsKey(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1, p2, v0}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v1, p2, p1}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    instance-of p2, p2, Landroid/widget/ListView;

    .line 56
    .line 57
    if-eqz p2, :cond_6

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Landroid/widget/ListView;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    iget-object p0, p0, Landroidx/transition/d0;->c:Ln/e;

    .line 84
    .line 85
    iget-boolean p2, p0, Ln/e;->a:Z

    .line 86
    .line 87
    if-eqz p2, :cond_4

    .line 88
    .line 89
    invoke-virtual {p0}, Ln/e;->c()V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object p2, p0, Ln/e;->b:[J

    .line 93
    .line 94
    iget v3, p0, Ln/e;->d:I

    .line 95
    .line 96
    invoke-static {v1, v2, p2, v3}, Ln/d;->b(J[JI)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-ltz p2, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0, v0, v1, v2}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/view/View;

    .line 107
    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    const/4 p2, 0x0

    .line 111
    invoke-static {p1, p2}, Landroidx/core/view/k0;->r(Landroid/view/View;Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0, v1, v2}, Ln/e;->f(Ljava/lang/Object;J)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    const/4 p2, 0x1

    .line 119
    invoke-static {p1, p2}, Landroidx/core/view/k0;->r(Landroid/view/View;Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1, v1, v2}, Ln/e;->f(Ljava/lang/Object;J)V

    .line 123
    .line 124
    .line 125
    :cond_6
    :goto_2
    return-void
.end method

.method public static c()Ln/b;
    .locals 2

    .line 1
    sget-object v0, Landroidx/transition/u;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ln/b;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ln/b;

    .line 12
    .line 13
    invoke-direct {v0}, Ln/k;-><init>()V

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroidx/transition/u;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public static d(Landroidx/transition/c0;Landroidx/transition/c0;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    goto :goto_1

    :cond_2
    :goto_0
    move p0, p2

    :goto_1
    return p0
.end method


# virtual methods
.method public addListener(Landroidx/transition/t;)Landroidx/transition/u;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(I)Landroidx/transition/u;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/u;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroidx/transition/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/u;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroidx/transition/u;
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/transition/u;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/u;->mTargetNames:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/transition/u;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public animate(Landroid/animation/Animator;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/transition/u;->end()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/transition/u;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/transition/u;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    invoke-virtual {p0}, Landroidx/transition/u;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroidx/transition/u;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {p0}, Landroidx/transition/u;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/transition/u;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v0, Landroidx/appcompat/widget/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public final b(Landroid/view/View;Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/transition/u;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/transition/u;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Landroidx/transition/u;->mTargetTypeExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Landroidx/transition/u;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    new-instance v1, Landroidx/transition/c0;

    invoke-direct {v1, p1}, Landroidx/transition/c0;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_5

    invoke-virtual {p0, v1}, Landroidx/transition/u;->captureStartValues(Landroidx/transition/c0;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/transition/u;->captureEndValues(Landroidx/transition/c0;)V

    :goto_1
    iget-object v3, v1, Landroidx/transition/c0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Landroidx/transition/u;->capturePropagationValues(Landroidx/transition/c0;)V

    if-eqz p2, :cond_6

    iget-object v3, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    :goto_2
    invoke-static {v3, p1, v1}, Landroidx/transition/u;->a(Landroidx/transition/d0;Landroid/view/View;Landroidx/transition/c0;)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    goto :goto_2

    :cond_7
    :goto_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/transition/u;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroidx/transition/u;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroidx/transition/u;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_4
    if-ge v1, v0, :cond_b

    iget-object v3, p0, Landroidx/transition/u;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    :goto_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/transition/u;->b(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    return-void
.end method

.method public cancel()V
    .locals 4

    iget-object v0, p0, Landroidx/transition/u;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/transition/u;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/t;

    invoke-interface {v3, p0}, Landroidx/transition/t;->onTransitionCancel(Landroidx/transition/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract captureEndValues(Landroidx/transition/c0;)V
.end method

.method public capturePropagationValues(Landroidx/transition/c0;)V
    .locals 0

    return-void
.end method

.method public abstract captureStartValues(Landroidx/transition/c0;)V
.end method

.method public captureValues(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Landroidx/transition/u;->clearValues(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/transition/u;->mTargetNames:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/transition/u;->b(Landroid/view/View;Z)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_9

    .line 46
    .line 47
    :cond_3
    :goto_0
    move v0, v1

    .line 48
    :goto_1
    iget-object v2, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ge v0, v2, :cond_7

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    new-instance v3, Landroidx/transition/c0;

    .line 75
    .line 76
    invoke-direct {v3, v2}, Landroidx/transition/c0;-><init>(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, v3}, Landroidx/transition/u;->captureStartValues(Landroidx/transition/c0;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/transition/u;->captureEndValues(Landroidx/transition/c0;)V

    .line 86
    .line 87
    .line 88
    :goto_2
    iget-object v4, v3, Landroidx/transition/c0;->c:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3}, Landroidx/transition/u;->capturePropagationValues(Landroidx/transition/c0;)V

    .line 94
    .line 95
    .line 96
    if-eqz p2, :cond_5

    .line 97
    .line 98
    iget-object v4, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    .line 99
    .line 100
    :goto_3
    invoke-static {v4, v2, v3}, Landroidx/transition/u;->a(Landroidx/transition/d0;Landroid/view/View;Landroidx/transition/c0;)V

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    iget-object v4, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_7
    move p1, v1

    .line 111
    :goto_5
    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ge p1, v0, :cond_a

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/view/View;

    .line 126
    .line 127
    new-instance v2, Landroidx/transition/c0;

    .line 128
    .line 129
    invoke-direct {v2, v0}, Landroidx/transition/c0;-><init>(Landroid/view/View;)V

    .line 130
    .line 131
    .line 132
    if-eqz p2, :cond_8

    .line 133
    .line 134
    invoke-virtual {p0, v2}, Landroidx/transition/u;->captureStartValues(Landroidx/transition/c0;)V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/transition/u;->captureEndValues(Landroidx/transition/c0;)V

    .line 139
    .line 140
    .line 141
    :goto_6
    iget-object v3, v2, Landroidx/transition/c0;->c:Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v2}, Landroidx/transition/u;->capturePropagationValues(Landroidx/transition/c0;)V

    .line 147
    .line 148
    .line 149
    if-eqz p2, :cond_9

    .line 150
    .line 151
    iget-object v3, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    .line 152
    .line 153
    :goto_7
    invoke-static {v3, v0, v2}, Landroidx/transition/u;->a(Landroidx/transition/d0;Landroid/view/View;Landroidx/transition/c0;)V

    .line 154
    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_9
    iget-object v3, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_a
    :goto_9
    if-nez p2, :cond_d

    .line 164
    .line 165
    iget-object p1, p0, Landroidx/transition/u;->mNameOverrides:Ln/b;

    .line 166
    .line 167
    if-eqz p1, :cond_d

    .line 168
    .line 169
    iget p1, p1, Ln/k;->c:I

    .line 170
    .line 171
    new-instance p2, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .line 175
    .line 176
    move v0, v1

    .line 177
    :goto_a
    if-ge v0, p1, :cond_b

    .line 178
    .line 179
    iget-object v2, p0, Landroidx/transition/u;->mNameOverrides:Ln/b;

    .line 180
    .line 181
    invoke-virtual {v2, v0}, Ln/k;->h(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Ljava/lang/String;

    .line 186
    .line 187
    iget-object v3, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    .line 188
    .line 189
    iget-object v3, v3, Landroidx/transition/d0;->d:Ln/b;

    .line 190
    .line 191
    invoke-virtual {v3, v2}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_b
    :goto_b
    if-ge v1, p1, :cond_d

    .line 202
    .line 203
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/view/View;

    .line 208
    .line 209
    if-eqz v0, :cond_c

    .line 210
    .line 211
    iget-object v2, p0, Landroidx/transition/u;->mNameOverrides:Ln/b;

    .line 212
    .line 213
    invoke-virtual {v2, v1}, Ln/k;->j(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Ljava/lang/String;

    .line 218
    .line 219
    iget-object v3, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    .line 220
    .line 221
    iget-object v3, v3, Landroidx/transition/d0;->d:Ln/b;

    .line 222
    .line 223
    invoke-virtual {v3, v2, v0}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 227
    .line 228
    goto :goto_b

    .line 229
    :cond_d
    return-void
.end method

.method public clearValues(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    iget-object p1, p1, Landroidx/transition/d0;->a:Ln/b;

    invoke-virtual {p1}, Ln/k;->clear()V

    iget-object p1, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    iget-object p1, p1, Landroidx/transition/d0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    :goto_0
    iget-object p1, p1, Landroidx/transition/d0;->c:Ln/e;

    invoke-virtual {p1}, Ln/e;->a()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    iget-object p1, p1, Landroidx/transition/d0;->a:Ln/b;

    invoke-virtual {p1}, Ln/k;->clear()V

    iget-object p1, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    iget-object p1, p1, Landroidx/transition/d0;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public clone()Landroidx/transition/u;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/u;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/u;->mAnimators:Ljava/util/ArrayList;

    new-instance v2, Landroidx/transition/d0;

    invoke-direct {v2}, Landroidx/transition/d0;-><init>()V

    iput-object v2, v1, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    new-instance v2, Landroidx/transition/d0;

    invoke-direct {v2}, Landroidx/transition/d0;-><init>()V

    iput-object v2, v1, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    iput-object v0, v1, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    iput-object v0, v1, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/transition/u;->clone()Landroidx/transition/u;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createAnimators(Landroid/view/ViewGroup;Landroidx/transition/d0;Landroidx/transition/d0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/d0;",
            "Landroidx/transition/d0;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/c0;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/c0;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Landroidx/transition/u;->c()Ln/b;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v6, 0x0

    .line 19
    :goto_0
    if-ge v6, v4, :cond_b

    .line 20
    .line 21
    move-object/from16 v7, p4

    .line 22
    .line 23
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    check-cast v8, Landroidx/transition/c0;

    .line 28
    .line 29
    move-object/from16 v9, p5

    .line 30
    .line 31
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    check-cast v10, Landroidx/transition/c0;

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    iget-object v12, v8, Landroidx/transition/c0;->c:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v12

    .line 46
    if-nez v12, :cond_0

    .line 47
    .line 48
    move-object v8, v11

    .line 49
    :cond_0
    if-eqz v10, :cond_1

    .line 50
    .line 51
    iget-object v12, v10, Landroidx/transition/c0;->c:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    if-nez v12, :cond_1

    .line 58
    .line 59
    move-object v10, v11

    .line 60
    :cond_1
    if-nez v8, :cond_3

    .line 61
    .line 62
    if-nez v10, :cond_3

    .line 63
    .line 64
    :cond_2
    move-object/from16 v14, p3

    .line 65
    .line 66
    move/from16 v16, v4

    .line 67
    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :cond_3
    if-eqz v8, :cond_4

    .line 71
    .line 72
    if-eqz v10, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0, v8, v10}, Landroidx/transition/u;->isTransitionRequired(Landroidx/transition/c0;Landroidx/transition/c0;)Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-eqz v12, :cond_2

    .line 79
    .line 80
    :cond_4
    invoke-virtual {v0, v1, v8, v10}, Landroidx/transition/u;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/c0;Landroidx/transition/c0;)Landroid/animation/Animator;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    if-eqz v12, :cond_2

    .line 85
    .line 86
    if-eqz v10, :cond_9

    .line 87
    .line 88
    iget-object v8, v10, Landroidx/transition/c0;->b:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/u;->getTransitionProperties()[Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    if-eqz v10, :cond_8

    .line 95
    .line 96
    array-length v13, v10

    .line 97
    if-lez v13, :cond_8

    .line 98
    .line 99
    new-instance v13, Landroidx/transition/c0;

    .line 100
    .line 101
    invoke-direct {v13, v8}, Landroidx/transition/c0;-><init>(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    move-object/from16 v14, p3

    .line 105
    .line 106
    iget-object v15, v14, Landroidx/transition/d0;->a:Ln/b;

    .line 107
    .line 108
    invoke-virtual {v15, v8, v11}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v15

    .line 112
    check-cast v15, Landroidx/transition/c0;

    .line 113
    .line 114
    if-eqz v15, :cond_5

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    :goto_1
    array-length v11, v10

    .line 118
    if-ge v5, v11, :cond_5

    .line 119
    .line 120
    iget-object v11, v13, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 121
    .line 122
    move/from16 v16, v4

    .line 123
    .line 124
    aget-object v4, v10, v5

    .line 125
    .line 126
    iget-object v7, v15, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {v11, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 136
    .line 137
    move-object/from16 v7, p4

    .line 138
    .line 139
    move/from16 v4, v16

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    move/from16 v16, v4

    .line 143
    .line 144
    iget v4, v2, Ln/k;->c:I

    .line 145
    .line 146
    const/4 v5, 0x0

    .line 147
    :goto_2
    if-ge v5, v4, :cond_7

    .line 148
    .line 149
    invoke-virtual {v2, v5}, Ln/k;->h(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Landroid/animation/Animator;

    .line 154
    .line 155
    const/4 v10, 0x0

    .line 156
    invoke-virtual {v2, v7, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    check-cast v7, Landroidx/transition/r;

    .line 161
    .line 162
    iget-object v11, v7, Landroidx/transition/r;->c:Landroidx/transition/c0;

    .line 163
    .line 164
    if-eqz v11, :cond_6

    .line 165
    .line 166
    iget-object v11, v7, Landroidx/transition/r;->a:Landroid/view/View;

    .line 167
    .line 168
    if-ne v11, v8, :cond_6

    .line 169
    .line 170
    iget-object v11, v7, Landroidx/transition/r;->b:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/u;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v15

    .line 176
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-eqz v11, :cond_6

    .line 181
    .line 182
    iget-object v7, v7, Landroidx/transition/r;->c:Landroidx/transition/c0;

    .line 183
    .line 184
    invoke-virtual {v7, v13}, Landroidx/transition/c0;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_6

    .line 189
    .line 190
    move-object v11, v10

    .line 191
    goto :goto_4

    .line 192
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_7
    :goto_3
    move-object v11, v12

    .line 196
    goto :goto_4

    .line 197
    :cond_8
    move-object/from16 v14, p3

    .line 198
    .line 199
    move/from16 v16, v4

    .line 200
    .line 201
    move-object v10, v11

    .line 202
    move-object v13, v10

    .line 203
    goto :goto_3

    .line 204
    :goto_4
    move-object v12, v11

    .line 205
    move-object v11, v13

    .line 206
    goto :goto_5

    .line 207
    :cond_9
    move-object/from16 v14, p3

    .line 208
    .line 209
    move/from16 v16, v4

    .line 210
    .line 211
    move-object v10, v11

    .line 212
    iget-object v8, v8, Landroidx/transition/c0;->b:Landroid/view/View;

    .line 213
    .line 214
    :goto_5
    if-eqz v12, :cond_a

    .line 215
    .line 216
    new-instance v4, Landroidx/transition/r;

    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/u;->getName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    sget-object v7, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 223
    .line 224
    new-instance v7, Landroidx/transition/o0;

    .line 225
    .line 226
    invoke-direct {v7, v1}, Landroidx/transition/o0;-><init>(Landroid/view/View;)V

    .line 227
    .line 228
    .line 229
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-object v8, v4, Landroidx/transition/r;->a:Landroid/view/View;

    .line 233
    .line 234
    iput-object v5, v4, Landroidx/transition/r;->b:Ljava/lang/String;

    .line 235
    .line 236
    iput-object v11, v4, Landroidx/transition/r;->c:Landroidx/transition/c0;

    .line 237
    .line 238
    iput-object v7, v4, Landroidx/transition/r;->d:Landroidx/transition/p0;

    .line 239
    .line 240
    iput-object v0, v4, Landroidx/transition/r;->e:Landroidx/transition/u;

    .line 241
    .line 242
    invoke-virtual {v2, v12, v4}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    iget-object v4, v0, Landroidx/transition/u;->mAnimators:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 251
    .line 252
    move/from16 v4, v16

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_b
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_c

    .line 261
    .line 262
    const/4 v5, 0x0

    .line 263
    :goto_7
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-ge v5, v1, :cond_c

    .line 268
    .line 269
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    iget-object v2, v0, Landroidx/transition/u;->mAnimators:Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    check-cast v1, Landroid/animation/Animator;

    .line 280
    .line 281
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    int-to-long v6, v2

    .line 286
    const-wide v8, 0x7fffffffffffffffL

    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    sub-long/2addr v6, v8

    .line 292
    invoke-virtual {v1}, Landroid/animation/Animator;->getStartDelay()J

    .line 293
    .line 294
    .line 295
    move-result-wide v8

    .line 296
    add-long/2addr v8, v6

    .line 297
    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 298
    .line 299
    .line 300
    add-int/lit8 v5, v5, 0x1

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_c
    return-void
.end method

.method public end()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/transition/u;->mNumInstances:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Landroidx/transition/u;->mNumInstances:I

    .line 6
    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    move v4, v2

    .line 33
    :goto_0
    if-ge v4, v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroidx/transition/t;

    .line 40
    .line 41
    invoke-interface {v5, p0}, Landroidx/transition/t;->onTransitionEnd(Landroidx/transition/u;)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v2

    .line 48
    :goto_1
    iget-object v3, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    .line 49
    .line 50
    iget-object v3, v3, Landroidx/transition/d0;->c:Ln/e;

    .line 51
    .line 52
    invoke-virtual {v3}, Ln/e;->h()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-ge v0, v3, :cond_2

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    .line 59
    .line 60
    iget-object v3, v3, Landroidx/transition/d0;->c:Ln/e;

    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ln/e;->i(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroid/view/View;

    .line 67
    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    sget-object v4, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 71
    .line 72
    invoke-static {v3, v2}, Landroidx/core/view/k0;->r(Landroid/view/View;Z)V

    .line 73
    .line 74
    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v0, v2

    .line 79
    :goto_2
    iget-object v3, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    .line 80
    .line 81
    iget-object v3, v3, Landroidx/transition/d0;->c:Ln/e;

    .line 82
    .line 83
    invoke-virtual {v3}, Ln/e;->h()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ge v0, v3, :cond_4

    .line 88
    .line 89
    iget-object v3, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    .line 90
    .line 91
    iget-object v3, v3, Landroidx/transition/d0;->c:Ln/e;

    .line 92
    .line 93
    invoke-virtual {v3, v0}, Ln/e;->i(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Landroid/view/View;

    .line 98
    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    sget-object v4, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 102
    .line 103
    invoke-static {v3, v2}, Landroidx/core/view/k0;->r(Landroid/view/View;Z)V

    .line 104
    .line 105
    .line 106
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    iput-boolean v1, p0, Landroidx/transition/u;->mEnded:Z

    .line 110
    .line 111
    :cond_5
    return-void
.end method

.method public excludeChildren(IZ)Landroidx/transition/u;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-lez p1, :cond_1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-static {p1, v0}, Landroidx/lifecycle/k;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->k(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/u;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroidx/transition/u;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->k(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/u;->mTargetChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroidx/transition/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/u;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/transition/u;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->k(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/u;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(IZ)Landroidx/transition/u;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-lez p1, :cond_1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-static {p1, v0}, Landroidx/lifecycle/k;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->k(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/u;->mTargetIdExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/u;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->k(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/u;->mTargetExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/u;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/transition/u;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->k(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/u;->mTargetTypeExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/u;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Landroidx/lifecycle/k;->k(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    :goto_0
    iput-object v0, p0, Landroidx/transition/u;->mTargetNameExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public forceToEnd(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    invoke-static {}, Landroidx/transition/u;->c()Ln/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Ln/k;->c:I

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v2, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v2, Ln/b;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ln/b;-><init>(Ln/b;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ln/k;->clear()V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    :goto_0
    if-ltz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ln/k;->j(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/transition/r;

    .line 35
    .line 36
    iget-object v3, v0, Landroidx/transition/r;->a:Landroid/view/View;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    iget-object v0, v0, Landroidx/transition/r;->d:Landroidx/transition/p0;

    .line 41
    .line 42
    instance-of v3, v0, Landroidx/transition/o0;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    check-cast v0, Landroidx/transition/o0;

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/transition/o0;->a:Landroid/view/WindowId;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Ln/k;->h(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/animation/Animator;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 63
    .line 64
    .line 65
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroidx/transition/u;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/transition/u;->mEpicenterCallback:Landroidx/transition/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    check-cast v0, Landroidx/transition/j;

    .line 8
    .line 9
    iget v2, v0, Landroidx/transition/j;->a:I

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/transition/j;->b:Landroid/graphics/Rect;

    .line 12
    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v1, v0

    .line 26
    :cond_2
    :goto_0
    move-object v0, v1

    .line 27
    :pswitch_0
    return-object v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getEpicenterCallback()Landroidx/transition/s;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mEpicenterCallback:Landroidx/transition/s;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;
    .locals 5

    iget-object v0, p0, Landroidx/transition/u;->mParent:Landroidx/transition/a0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/transition/u;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/c0;

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    iget-object v4, v4, Landroidx/transition/c0;->b:Landroid/view/View;

    if-ne v4, p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    iget-object p1, p0, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/transition/c0;

    :cond_7
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroidx/transition/n;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mPathMotion:Landroidx/transition/n;

    return-object v0
.end method

.method public getPropagation()Landroidx/transition/y;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroidx/transition/u;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/transition/u;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/transition/u;->mParent:Landroidx/transition/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/transition/u;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p0, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    .line 16
    .line 17
    :goto_0
    iget-object p2, p2, Landroidx/transition/d0;->a:Ln/b;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p2, p1, v0}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroidx/transition/c0;

    .line 25
    .line 26
    return-object p1
.end method

.method public isTransitionRequired(Landroidx/transition/c0;Landroidx/transition/c0;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/transition/u;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    invoke-static {p1, p2, v5}, Landroidx/transition/u;->d(Landroidx/transition/c0;Landroidx/transition/c0;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroidx/transition/c0;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, p2, v3}, Landroidx/transition/u;->d(Landroidx/transition/c0;Landroidx/transition/c0;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move v0, v2

    :cond_3
    return v0
.end method

.method public isValidTarget(Landroid/view/View;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/transition/u;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/transition/u;->mTargetExcludes:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    iget-object v1, p0, Landroidx/transition/u;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    move v3, v2

    .line 41
    :goto_0
    if-ge v3, v1, :cond_3

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/transition/u;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/Class;

    .line 50
    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    return v2

    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v1, p0, Landroidx/transition/u;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 62
    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 66
    .line 67
    invoke-static {p1}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/transition/u;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-static {p1}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    return v2

    .line 86
    :cond_4
    iget-object v1, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v3, 0x1

    .line 93
    if-nez v1, :cond_7

    .line 94
    .line 95
    iget-object v1, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_7

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    .line 104
    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_7

    .line 112
    .line 113
    :cond_5
    iget-object v1, p0, Landroidx/transition/u;->mTargetNames:Ljava/util/ArrayList;

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    :cond_6
    return v3

    .line 124
    :cond_7
    iget-object v1, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_c

    .line 135
    .line 136
    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    iget-object v0, p0, Landroidx/transition/u;->mTargetNames:Ljava/util/ArrayList;

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 150
    .line 151
    invoke-static {p1}, Landroidx/core/view/q0;->k(Landroid/view/View;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    return v3

    .line 162
    :cond_9
    iget-object v0, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    .line 163
    .line 164
    if-eqz v0, :cond_b

    .line 165
    .line 166
    move v0, v2

    .line 167
    :goto_1
    iget-object v1, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-ge v0, v1, :cond_b

    .line 174
    .line 175
    iget-object v1, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Ljava/lang/Class;

    .line 182
    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_a

    .line 188
    .line 189
    return v3

    .line 190
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_b
    return v2

    .line 194
    :cond_c
    :goto_2
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/transition/u;->mEnded:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    invoke-static {}, Landroidx/transition/u;->c()Ln/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Ln/k;->c:I

    .line 10
    .line 11
    sget-object v2, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    :goto_0
    const/4 v3, 0x0

    .line 20
    if-ltz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ln/k;->j(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroidx/transition/r;

    .line 27
    .line 28
    iget-object v5, v4, Landroidx/transition/r;->a:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget-object v4, v4, Landroidx/transition/r;->d:Landroidx/transition/p0;

    .line 33
    .line 34
    instance-of v5, v4, Landroidx/transition/o0;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    check-cast v4, Landroidx/transition/o0;

    .line 39
    .line 40
    iget-object v4, v4, Landroidx/transition/o0;->a:Landroid/view/WindowId;

    .line 41
    .line 42
    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    move v3, v2

    .line 49
    :cond_0
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ln/k;->h(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/animation/Animator;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    .line 58
    .line 59
    .line 60
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-lez p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_1
    if-ge v3, v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroidx/transition/t;

    .line 92
    .line 93
    invoke-interface {v1, p0}, Landroidx/transition/t;->onTransitionPause(Landroidx/transition/u;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iput-boolean v2, p0, Landroidx/transition/u;->mPaused:Z

    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method public playTransition(Landroid/view/ViewGroup;)V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, v6, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v6, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    .line 16
    .line 17
    iget-object v0, v6, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    .line 18
    .line 19
    iget-object v1, v6, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    .line 20
    .line 21
    new-instance v2, Ln/b;

    .line 22
    .line 23
    iget-object v3, v0, Landroidx/transition/d0;->a:Ln/b;

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ln/b;-><init>(Ln/b;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Ln/b;

    .line 29
    .line 30
    iget-object v4, v1, Landroidx/transition/d0;->a:Ln/b;

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ln/b;-><init>(Ln/b;)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    :goto_0
    iget-object v7, v6, Landroidx/transition/u;->mMatchOrder:[I

    .line 37
    .line 38
    array-length v8, v7

    .line 39
    const/4 v9, 0x1

    .line 40
    const/4 v10, 0x0

    .line 41
    if-ge v5, v8, :cond_9

    .line 42
    .line 43
    aget v7, v7, v5

    .line 44
    .line 45
    if-eq v7, v9, :cond_6

    .line 46
    .line 47
    const/4 v8, 0x2

    .line 48
    if-eq v7, v8, :cond_4

    .line 49
    .line 50
    const/4 v8, 0x3

    .line 51
    if-eq v7, v8, :cond_2

    .line 52
    .line 53
    const/4 v8, 0x4

    .line 54
    if-eq v7, v8, :cond_0

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_0
    iget-object v7, v0, Landroidx/transition/d0;->c:Ln/e;

    .line 59
    .line 60
    invoke-virtual {v7}, Ln/e;->h()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const/4 v9, 0x0

    .line 65
    :goto_1
    if-ge v9, v8, :cond_8

    .line 66
    .line 67
    invoke-virtual {v7, v9}, Ln/e;->i(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    check-cast v11, Landroid/view/View;

    .line 72
    .line 73
    if-eqz v11, :cond_1

    .line 74
    .line 75
    invoke-virtual {v6, v11}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-eqz v12, :cond_1

    .line 80
    .line 81
    invoke-virtual {v7, v9}, Ln/e;->e(I)J

    .line 82
    .line 83
    .line 84
    move-result-wide v12

    .line 85
    iget-object v14, v1, Landroidx/transition/d0;->c:Ln/e;

    .line 86
    .line 87
    invoke-virtual {v14, v10, v12, v13}, Ln/e;->d(Ljava/lang/Long;J)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    check-cast v12, Landroid/view/View;

    .line 92
    .line 93
    if-eqz v12, :cond_1

    .line 94
    .line 95
    invoke-virtual {v6, v12}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-eqz v13, :cond_1

    .line 100
    .line 101
    invoke-virtual {v2, v11, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    check-cast v13, Landroidx/transition/c0;

    .line 106
    .line 107
    invoke-virtual {v3, v12, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    check-cast v14, Landroidx/transition/c0;

    .line 112
    .line 113
    if-eqz v13, :cond_1

    .line 114
    .line 115
    if-eqz v14, :cond_1

    .line 116
    .line 117
    iget-object v15, v6, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    iget-object v13, v6, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v11}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v12}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    iget-object v7, v0, Landroidx/transition/d0;->b:Landroid/util/SparseArray;

    .line 137
    .line 138
    iget-object v8, v1, Landroidx/transition/d0;->b:Landroid/util/SparseArray;

    .line 139
    .line 140
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    const/4 v11, 0x0

    .line 145
    :goto_2
    if-ge v11, v9, :cond_8

    .line 146
    .line 147
    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v12

    .line 151
    check-cast v12, Landroid/view/View;

    .line 152
    .line 153
    if-eqz v12, :cond_3

    .line 154
    .line 155
    invoke-virtual {v6, v12}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    if-eqz v13, :cond_3

    .line 160
    .line 161
    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    check-cast v13, Landroid/view/View;

    .line 170
    .line 171
    if-eqz v13, :cond_3

    .line 172
    .line 173
    invoke-virtual {v6, v13}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-eqz v14, :cond_3

    .line 178
    .line 179
    invoke-virtual {v2, v12, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    check-cast v14, Landroidx/transition/c0;

    .line 184
    .line 185
    invoke-virtual {v3, v13, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    check-cast v15, Landroidx/transition/c0;

    .line 190
    .line 191
    if-eqz v14, :cond_3

    .line 192
    .line 193
    if-eqz v15, :cond_3

    .line 194
    .line 195
    iget-object v4, v6, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    iget-object v4, v6, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v12}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v13}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    iget-object v4, v0, Landroidx/transition/d0;->d:Ln/b;

    .line 215
    .line 216
    iget v7, v4, Ln/k;->c:I

    .line 217
    .line 218
    const/4 v8, 0x0

    .line 219
    :goto_3
    if-ge v8, v7, :cond_8

    .line 220
    .line 221
    invoke-virtual {v4, v8}, Ln/k;->j(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    check-cast v9, Landroid/view/View;

    .line 226
    .line 227
    if-eqz v9, :cond_5

    .line 228
    .line 229
    invoke-virtual {v6, v9}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    if-eqz v11, :cond_5

    .line 234
    .line 235
    invoke-virtual {v4, v8}, Ln/k;->h(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    iget-object v12, v1, Landroidx/transition/d0;->d:Ln/b;

    .line 240
    .line 241
    invoke-virtual {v12, v11, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    check-cast v11, Landroid/view/View;

    .line 246
    .line 247
    if-eqz v11, :cond_5

    .line 248
    .line 249
    invoke-virtual {v6, v11}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    if-eqz v12, :cond_5

    .line 254
    .line 255
    invoke-virtual {v2, v9, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    check-cast v12, Landroidx/transition/c0;

    .line 260
    .line 261
    invoke-virtual {v3, v11, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    check-cast v13, Landroidx/transition/c0;

    .line 266
    .line 267
    if-eqz v12, :cond_5

    .line 268
    .line 269
    if-eqz v13, :cond_5

    .line 270
    .line 271
    iget-object v14, v6, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    iget-object v12, v6, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v9}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v11}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_6
    iget v4, v2, Ln/k;->c:I

    .line 291
    .line 292
    sub-int/2addr v4, v9

    .line 293
    :goto_4
    if-ltz v4, :cond_8

    .line 294
    .line 295
    invoke-virtual {v2, v4}, Ln/k;->h(I)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    check-cast v7, Landroid/view/View;

    .line 300
    .line 301
    if-eqz v7, :cond_7

    .line 302
    .line 303
    invoke-virtual {v6, v7}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    if-eqz v8, :cond_7

    .line 308
    .line 309
    invoke-virtual {v3, v7}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    check-cast v7, Landroidx/transition/c0;

    .line 314
    .line 315
    if-eqz v7, :cond_7

    .line 316
    .line 317
    iget-object v8, v7, Landroidx/transition/c0;->b:Landroid/view/View;

    .line 318
    .line 319
    invoke-virtual {v6, v8}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    if-eqz v8, :cond_7

    .line 324
    .line 325
    invoke-virtual {v2, v4}, Ln/k;->i(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    check-cast v8, Landroidx/transition/c0;

    .line 330
    .line 331
    iget-object v9, v6, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    iget-object v8, v6, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 345
    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :cond_9
    const/4 v0, 0x0

    .line 349
    :goto_6
    iget v1, v2, Ln/k;->c:I

    .line 350
    .line 351
    if-ge v0, v1, :cond_b

    .line 352
    .line 353
    invoke-virtual {v2, v0}, Ln/k;->j(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    check-cast v1, Landroidx/transition/c0;

    .line 358
    .line 359
    iget-object v4, v1, Landroidx/transition/c0;->b:Landroid/view/View;

    .line 360
    .line 361
    invoke-virtual {v6, v4}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    if-eqz v4, :cond_a

    .line 366
    .line 367
    iget-object v4, v6, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    iget-object v1, v6, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 378
    .line 379
    goto :goto_6

    .line 380
    :cond_b
    const/4 v4, 0x0

    .line 381
    :goto_7
    iget v0, v3, Ln/k;->c:I

    .line 382
    .line 383
    if-ge v4, v0, :cond_d

    .line 384
    .line 385
    invoke-virtual {v3, v4}, Ln/k;->j(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    check-cast v0, Landroidx/transition/c0;

    .line 390
    .line 391
    iget-object v1, v0, Landroidx/transition/c0;->b:Landroid/view/View;

    .line 392
    .line 393
    invoke-virtual {v6, v1}, Landroidx/transition/u;->isValidTarget(Landroid/view/View;)Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-eqz v1, :cond_c

    .line 398
    .line 399
    iget-object v1, v6, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    iget-object v0, v6, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 410
    .line 411
    goto :goto_7

    .line 412
    :cond_d
    invoke-static {}, Landroidx/transition/u;->c()Ln/b;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    iget v1, v0, Ln/k;->c:I

    .line 417
    .line 418
    sget-object v2, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 419
    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    sub-int/2addr v1, v9

    .line 425
    :goto_8
    if-ltz v1, :cond_13

    .line 426
    .line 427
    invoke-virtual {v0, v1}, Ln/k;->h(I)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    check-cast v3, Landroid/animation/Animator;

    .line 432
    .line 433
    if-eqz v3, :cond_12

    .line 434
    .line 435
    invoke-virtual {v0, v3, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v4

    .line 439
    check-cast v4, Landroidx/transition/r;

    .line 440
    .line 441
    if-eqz v4, :cond_12

    .line 442
    .line 443
    iget-object v5, v4, Landroidx/transition/r;->a:Landroid/view/View;

    .line 444
    .line 445
    if-eqz v5, :cond_12

    .line 446
    .line 447
    iget-object v7, v4, Landroidx/transition/r;->d:Landroidx/transition/p0;

    .line 448
    .line 449
    instance-of v8, v7, Landroidx/transition/o0;

    .line 450
    .line 451
    if-eqz v8, :cond_12

    .line 452
    .line 453
    check-cast v7, Landroidx/transition/o0;

    .line 454
    .line 455
    iget-object v7, v7, Landroidx/transition/o0;->a:Landroid/view/WindowId;

    .line 456
    .line 457
    invoke-virtual {v7, v2}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v7

    .line 461
    if-eqz v7, :cond_12

    .line 462
    .line 463
    invoke-virtual {v6, v5, v9}, Landroidx/transition/u;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;

    .line 464
    .line 465
    .line 466
    move-result-object v7

    .line 467
    invoke-virtual {v6, v5, v9}, Landroidx/transition/u;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/c0;

    .line 468
    .line 469
    .line 470
    move-result-object v8

    .line 471
    if-nez v7, :cond_e

    .line 472
    .line 473
    if-nez v8, :cond_e

    .line 474
    .line 475
    iget-object v8, v6, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    .line 476
    .line 477
    iget-object v8, v8, Landroidx/transition/d0;->a:Ln/b;

    .line 478
    .line 479
    invoke-virtual {v8, v5, v10}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v5

    .line 483
    move-object v8, v5

    .line 484
    check-cast v8, Landroidx/transition/c0;

    .line 485
    .line 486
    :cond_e
    if-nez v7, :cond_f

    .line 487
    .line 488
    if-eqz v8, :cond_12

    .line 489
    .line 490
    :cond_f
    iget-object v5, v4, Landroidx/transition/r;->e:Landroidx/transition/u;

    .line 491
    .line 492
    iget-object v4, v4, Landroidx/transition/r;->c:Landroidx/transition/c0;

    .line 493
    .line 494
    invoke-virtual {v5, v4, v8}, Landroidx/transition/u;->isTransitionRequired(Landroidx/transition/c0;Landroidx/transition/c0;)Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    if-eqz v4, :cond_12

    .line 499
    .line 500
    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    if-nez v4, :cond_11

    .line 505
    .line 506
    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    if-eqz v4, :cond_10

    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_10
    invoke-virtual {v0, v3}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    goto :goto_a

    .line 517
    :cond_11
    :goto_9
    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 518
    .line 519
    .line 520
    :cond_12
    :goto_a
    add-int/lit8 v1, v1, -0x1

    .line 521
    .line 522
    goto :goto_8

    .line 523
    :cond_13
    iget-object v2, v6, Landroidx/transition/u;->mStartValues:Landroidx/transition/d0;

    .line 524
    .line 525
    iget-object v3, v6, Landroidx/transition/u;->mEndValues:Landroidx/transition/d0;

    .line 526
    .line 527
    iget-object v4, v6, Landroidx/transition/u;->mStartValuesList:Ljava/util/ArrayList;

    .line 528
    .line 529
    iget-object v5, v6, Landroidx/transition/u;->mEndValuesList:Ljava/util/ArrayList;

    .line 530
    .line 531
    move-object/from16 v0, p0

    .line 532
    .line 533
    move-object/from16 v1, p1

    .line 534
    .line 535
    invoke-virtual/range {v0 .. v5}, Landroidx/transition/u;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/d0;Landroidx/transition/d0;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/u;->runAnimators()V

    .line 539
    .line 540
    .line 541
    return-void
.end method

.method public removeListener(Landroidx/transition/t;)Landroidx/transition/u;
    .locals 1

    iget-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public removeTarget(I)Landroidx/transition/u;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/u;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroidx/transition/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/u;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Landroidx/transition/u;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroidx/transition/u;
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/transition/u;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/transition/u;->mPaused:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/transition/u;->mEnded:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-static {}, Landroidx/transition/u;->c()Ln/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v2, v0, Ln/k;->c:I

    .line 15
    .line 16
    sget-object v3, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v3, 0x1

    .line 23
    sub-int/2addr v2, v3

    .line 24
    :goto_0
    if-ltz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ln/k;->j(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroidx/transition/r;

    .line 31
    .line 32
    iget-object v5, v4, Landroidx/transition/r;->a:Landroid/view/View;

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    iget-object v4, v4, Landroidx/transition/r;->d:Landroidx/transition/p0;

    .line 37
    .line 38
    instance-of v5, v4, Landroidx/transition/o0;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    check-cast v4, Landroidx/transition/o0;

    .line 43
    .line 44
    iget-object v4, v4, Landroidx/transition/o0;->a:Landroid/view/WindowId;

    .line 45
    .line 46
    invoke-virtual {v4, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    move v4, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    move v4, v1

    .line 55
    :goto_1
    if-eqz v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ln/k;->h(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/animation/Animator;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/animation/Animator;->resume()V

    .line 64
    .line 65
    .line 66
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object p1, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-lez p1, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    move v2, v1

    .line 92
    :goto_2
    if-ge v2, v0, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Landroidx/transition/t;

    .line 99
    .line 100
    invoke-interface {v3, p0}, Landroidx/transition/t;->onTransitionResume(Landroidx/transition/u;)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iput-boolean v1, p0, Landroidx/transition/u;->mPaused:Z

    .line 107
    .line 108
    :cond_4
    return-void
.end method

.method public runAnimators()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/transition/u;->start()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/transition/u;->c()Ln/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Landroidx/transition/u;->mAnimators:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/Animator;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ln/k;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/transition/u;->start()V

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    new-instance v3, Landroidx/transition/q;

    .line 38
    .line 39
    invoke-direct {v3, p0, v0}, Landroidx/transition/q;-><init>(Landroidx/transition/u;Ln/b;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroidx/transition/u;->animate(Landroid/animation/Animator;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Landroidx/transition/u;->mAnimators:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/transition/u;->end()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public setCanRemoveViews(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/transition/u;->mCanRemoveViews:Z

    return-void
.end method

.method public setDuration(J)Landroidx/transition/u;
    .locals 0

    iput-wide p1, p0, Landroidx/transition/u;->mDuration:J

    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/s;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/u;->mEpicenterCallback:Landroidx/transition/s;

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/u;
    .locals 0

    iput-object p1, p0, Landroidx/transition/u;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 5

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_4

    .line 11
    .line 12
    aget v2, p1, v1

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-lt v2, v3, :cond_3

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    if-gt v2, v3, :cond_3

    .line 19
    .line 20
    move v3, v0

    .line 21
    :goto_1
    if-ge v3, v1, :cond_2

    .line 22
    .line 23
    aget v4, p1, v3

    .line 24
    .line 25
    if-eq v4, v2, :cond_1

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "matches contains a duplicate value"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "matches contains invalid value"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_4
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, [I

    .line 54
    .line 55
    iput-object p1, p0, Landroidx/transition/u;->mMatchOrder:[I

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_5
    :goto_2
    sget-object p1, Landroidx/transition/u;->DEFAULT_MATCH_ORDER:[I

    .line 59
    .line 60
    iput-object p1, p0, Landroidx/transition/u;->mMatchOrder:[I

    .line 61
    .line 62
    :goto_3
    return-void
.end method

.method public setPathMotion(Landroidx/transition/n;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Landroidx/transition/u;->STRAIGHT_PATH_MOTION:Landroidx/transition/n;

    :cond_0
    iput-object p1, p0, Landroidx/transition/u;->mPathMotion:Landroidx/transition/n;

    return-void
.end method

.method public setPropagation(Landroidx/transition/y;)V
    .locals 0

    return-void
.end method

.method public setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/u;
    .locals 0

    iput-object p1, p0, Landroidx/transition/u;->mSceneRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public setStartDelay(J)Landroidx/transition/u;
    .locals 0

    iput-wide p1, p0, Landroidx/transition/u;->mStartDelay:J

    return-object p0
.end method

.method public start()V
    .locals 5

    iget v0, p0, Landroidx/transition/u;->mNumInstances:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/transition/u;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/t;

    invoke-interface {v4, p0}, Landroidx/transition/t;->onTransitionStart(Landroidx/transition/u;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/transition/u;->mEnded:Z

    :cond_1
    iget v0, p0, Landroidx/transition/u;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/u;->mNumInstances:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/transition/u;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2
    invoke-static {p1}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Landroidx/transition/u;->mDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, ") "

    if-eqz v0, :cond_0

    const-string v0, "dur("

    .line 4
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v4, p0, Landroidx/transition/u;->mDuration:J

    .line 5
    invoke-static {p1, v4, v5, v1}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-wide v4, p0, Landroidx/transition/u;->mStartDelay:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    const-string v0, "dly("

    .line 6
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v2, p0, Landroidx/transition/u;->mStartDelay:J

    .line 7
    invoke-static {p1, v2, v3, v1}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Landroidx/transition/u;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    const-string v0, "interp("

    .line 8
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/u;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_3
    const-string v0, "tgts("

    .line 10
    invoke-static {p1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    .line 12
    invoke-static {p1, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_4
    invoke-static {p1}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Landroidx/transition/u;->mTargetIds:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    :goto_1
    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    .line 15
    invoke-static {p1, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_6
    invoke-static {p1}, Lo/i;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/u;->mTargets:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v0, ")"

    .line 18
    invoke-static {p1, v0}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method
