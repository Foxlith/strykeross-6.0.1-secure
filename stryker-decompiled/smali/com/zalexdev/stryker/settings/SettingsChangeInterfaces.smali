.class public Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ll4/l;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ld4/d;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Ld4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->b:Ll4/l;

    .line 4
    .line 5
    const-string v2, "wlan_wifi"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "\u2014"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    :cond_0
    move-object v1, v2

    .line 22
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->d:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->b:Ll4/l;

    .line 28
    .line 29
    const-string v3, "wlan_scan"

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    :cond_2
    move-object v1, v2

    .line 44
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->e:Landroid/widget/TextView;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->b:Ll4/l;

    .line 50
    .line 51
    const-string v3, "wlan_deauth"

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_5

    .line 64
    .line 65
    :cond_4
    move-object v1, v2

    .line 66
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->f:Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->b:Ll4/l;

    .line 72
    .line 73
    const-string v3, "wlan_wps"

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ll4/l;->K(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-eqz v1, :cond_7

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    move-object v2, v1

    .line 89
    :cond_7
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0d00fc

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->a:Landroid/content/Context;

    new-instance p3, Ll4/l;

    invoke-direct {p3, p2}, Ll4/l;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->b:Ll4/l;

    const p2, 0x7f0a0558

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const p3, 0x7f0a025b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0182

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a0761

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a0557

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->c:Landroid/widget/TextView;

    const v3, 0x7f0a025a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->d:Landroid/widget/TextView;

    const v3, 0x7f0a0181

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->e:Landroid/widget/TextView;

    const v3, 0x7f0a0760

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->f:Landroid/widget/TextView;

    new-instance v3, Lh4/a;

    invoke-direct {v3, p0, v0}, Lh4/a;-><init>(Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lh4/a;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lh4/a;-><init>(Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;I)V

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lh4/a;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lh4/a;-><init>(Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;I)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lh4/a;

    const/4 p3, 0x3

    invoke-direct {p2, p0, p3}, Lh4/a;-><init>(Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;I)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/zalexdev/stryker/settings/SettingsChangeInterfaces;->e()V

    return-object p1
.end method
