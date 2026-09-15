.class public final synthetic Lw3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/j;
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/metasploit/Metasploit;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/metasploit/Metasploit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw3/i;->a:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/i;->a:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->z:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/zalexdev/stryker/metasploit/Metasploit;->z:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    .line 18
    .line 19
    new-instance v2, Lw3/j;

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-direct {v2, v0, v3}, Lw3/j;-><init>(Lcom/zalexdev/stryker/metasploit/Metasploit;I)V

    .line 23
    .line 24
    .line 25
    const-string v0, "msf-reload-pull"

    .line 26
    .line 27
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 2

    .line 1
    sget p1, Lcom/zalexdev/stryker/metasploit/Metasploit;->C:I

    .line 2
    .line 3
    iget-object p1, p0, Lw3/i;->a:Lcom/zalexdev/stryker/metasploit/Metasploit;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget-object v0, p1, Lcom/zalexdev/stryker/metasploit/Metasploit;->c:Ll4/l;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const-string v1, "msf_filter_chip"

    .line 31
    .line 32
    invoke-virtual {v0, p2, v1}, Ll4/l;->c0(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p1, Lcom/zalexdev/stryker/metasploit/Metasploit;->e:Lx3/b;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const v1, 0x7f0a03df

    .line 41
    .line 42
    .line 43
    if-ne p2, v1, :cond_3

    .line 44
    .line 45
    const/4 p2, 0x2

    .line 46
    :goto_0
    invoke-virtual {v0, p2}, Lx3/b;->b(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const v1, 0x7f0a03de

    .line 51
    .line 52
    .line 53
    if-ne p2, v1, :cond_4

    .line 54
    .line 55
    const/4 p2, 0x3

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    const/4 p2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    invoke-virtual {p1}, Lcom/zalexdev/stryker/metasploit/Metasploit;->g()V

    .line 60
    .line 61
    .line 62
    :goto_2
    return-void
.end method
