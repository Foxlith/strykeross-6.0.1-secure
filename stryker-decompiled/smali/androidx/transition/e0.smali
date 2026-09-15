.class public abstract Landroidx/transition/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/transition/i0;

.field public static final b:Landroidx/transition/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/transition/j0;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/transition/f0;-><init>()V

    .line 10
    .line 11
    .line 12
    :goto_0
    sput-object v0, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v0, Landroidx/transition/i0;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/transition/f0;-><init>()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :goto_1
    new-instance v0, Landroidx/transition/c;

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    const-class v2, Ljava/lang/Float;

    .line 25
    .line 26
    const-string v3, "translationAlpha"

    .line 27
    .line 28
    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Landroidx/transition/e0;->b:Landroidx/transition/c;

    .line 32
    .line 33
    new-instance v0, Landroidx/transition/c;

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    const-class v2, Landroid/graphics/Rect;

    .line 37
    .line 38
    const-string v3, "clipBounds"

    .line 39
    .line 40
    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/c;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/transition/e0;->a:Landroidx/transition/i0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/h0;->v(Landroid/view/View;IIII)V

    return-void
.end method
