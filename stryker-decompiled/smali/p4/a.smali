.class public final Lp4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lf/n;

.field public final synthetic b:Les/dmoral/coloromatic/ColorOMaticDialog;


# direct methods
.method public constructor <init>(Les/dmoral/coloromatic/ColorOMaticDialog;Lf/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/a;->b:Les/dmoral/coloromatic/ColorOMaticDialog;

    iput-object p2, p0, Lp4/a;->a:Lf/n;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lp4/a;->b:Les/dmoral/coloromatic/ColorOMaticDialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const v2, 0x7f050009

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 36
    .line 37
    :goto_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/a0;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 66
    .line 67
    if-ne v4, v1, :cond_2

    .line 68
    .line 69
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 70
    .line 71
    int-to-double v0, v0

    .line 72
    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    mul-double/2addr v0, v4

    .line 78
    double-to-int v0, v0

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/4 v0, -0x2

    .line 81
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const v1, 0x7f070058

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    int-to-double v4, p1

    .line 93
    mul-double/2addr v4, v2

    .line 94
    double-to-int p1, v4

    .line 95
    iget-object v1, p0, Lp4/a;->a:Lf/n;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, p1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
