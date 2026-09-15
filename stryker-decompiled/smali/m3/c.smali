.class public final Lm3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final a:Lm3/b;

.field public final b:Landroid/os/Handler;

.field public final c:Landroidx/activity/b;

.field public final d:Landroidx/fragment/app/x0;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lm3/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lm3/c;->b:Landroid/os/Handler;

    new-instance v0, Landroidx/activity/b;

    const/16 v1, 0x16

    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lm3/c;->c:Landroidx/activity/b;

    new-instance v0, Landroidx/fragment/app/x0;

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    iput-object v0, p0, Lm3/c;->d:Landroidx/fragment/app/x0;

    const-string v0, ""

    iput-object v0, p0, Lm3/c;->e:Ljava/lang/String;

    iput-object p1, p0, Lm3/c;->a:Lm3/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lm3/c;->b:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lm3/c;->c:Landroidx/activity/b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm3/c;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    iget-object v3, p0, Lm3/c;->a:Lm3/b;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 24
    .line 25
    iput-boolean v2, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->D:Z

    .line 26
    .line 27
    iput v2, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->B:I

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->C:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v0, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 33
    .line 34
    const v1, 0x7f13021f

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 41
    .line 42
    const v1, 0x7f0800ae

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 49
    .line 50
    const v1, -0x109400

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    .line 57
    .line 58
    const/4 v1, -0x1

    .line 59
    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->setErrorLine(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->s()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    :try_start_0
    iget-object v1, p0, Lm3/c;->d:Landroidx/fragment/app/x0;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Landroidx/fragment/app/x0;->k(Ljava/lang/String;)Lg3/e;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    move-object v1, v3

    .line 76
    check-cast v1, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->j(Lg3/e;)V
    :try_end_0
    .catch Lg3/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;

    .line 88
    .line 89
    iput-boolean v2, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->D:Z

    .line 90
    .line 91
    iget v0, v0, Lg3/a;->a:I

    .line 92
    .line 93
    iput v0, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->B:I

    .line 94
    .line 95
    iput-object v1, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->C:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v1, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const v4, 0x7f130220

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 118
    .line 119
    const v2, 0x7f0800ac

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/m1;->setBackgroundResource(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->i:Lcom/google/android/material/textview/MaterialTextView;

    .line 126
    .line 127
    const v2, -0x39d7d8

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v3, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->x:Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/hid/ui/editor/LinedEditText;->setErrorLine(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/zalexdev/stryker/hid/ui/HidIdeActivity;->s()V

    .line 139
    .line 140
    .line 141
    :goto_0
    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lm3/c;->e:Ljava/lang/String;

    iget-object p1, p0, Lm3/c;->b:Landroid/os/Handler;

    iget-object v0, p0, Lm3/c;->c:Landroidx/activity/b;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
