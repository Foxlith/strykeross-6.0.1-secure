.class public final Lw3/m;
.super Ll4/c;
.source "SourceFile"


# instance fields
.field public final synthetic s:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field public final synthetic t:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final synthetic u:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic v:Landroid/widget/TextView;

.field public final synthetic w:Landroid/widget/TextView;

.field public final synthetic x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/facebook/shimmer/ShimmerFrameLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lw3/m;->s:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object p5, p0, Lw3/m;->t:Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p6, p0, Lw3/m;->u:Lcom/google/android/material/button/MaterialButton;

    iput-object p7, p0, Lw3/m;->v:Landroid/widget/TextView;

    iput-object p8, p0, Lw3/m;->w:Landroid/widget/TextView;

    iput-object p9, p0, Lw3/m;->x:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Ll4/c;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lw3/m;->s:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iget-object v2, p0, Lw3/m;->t:Lcom/facebook/shimmer/ShimmerFrameLayout;

    iget-object v3, p0, Lw3/m;->u:Lcom/google/android/material/button/MaterialButton;

    iget-object v5, p0, Lw3/m;->v:Landroid/widget/TextView;

    new-instance v7, Ln1/b0;

    const/4 v6, 0x4

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Ln1/b0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, Ll4/c;->a:Landroid/app/Activity;

    invoke-virtual {p1, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lr3/d;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iget-object v2, p0, Lw3/m;->w:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-direct {v0, v2, p1, v1}, Lr3/d;-><init>(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Ll4/c;->a:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "created:"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string v0, "\u001b\\[[0-9;]*[a-zA-Z]"

    .line 26
    .line 27
    const-string v1, ""

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "\\[[0-9;]*m"

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "created:\\s*\'([^\']+)\'"

    .line 40
    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    .line 57
    .line 58
    new-instance v1, Lv3/g;

    .line 59
    .line 60
    const/4 v2, 0x6

    .line 61
    iget-object v3, p0, Lw3/m;->x:Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {v1, p0, p1, v3, v2}, Lv3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method
