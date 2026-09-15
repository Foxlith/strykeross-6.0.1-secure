.class public final synthetic Lcom/stryker/terminal/ui/other/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILs3/q;Ls3/t;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/stryker/terminal/ui/other/l;->a:I

    iput-object p3, p0, Lcom/stryker/terminal/ui/other/l;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/stryker/terminal/ui/other/l;->d:Ljava/lang/Object;

    iput p1, p0, Lcom/stryker/terminal/ui/other/l;->b:I

    iput-object p4, p0, Lcom/stryker/terminal/ui/other/l;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stryker/terminal/ui/other/SetupActivity;ILandroid/app/ProgressDialog;Landroid/widget/EditText;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/ui/other/l;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/l;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/stryker/terminal/ui/other/l;->b:I

    iput-object p3, p0, Lcom/stryker/terminal/ui/other/l;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/stryker/terminal/ui/other/l;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/stryker/terminal/ui/other/l;->a:I

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/l;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/stryker/terminal/ui/other/l;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/stryker/terminal/ui/other/l;->e:Ljava/lang/Object;

    iput p4, p0, Lcom/stryker/terminal/ui/other/l;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v2, p0, Lcom/stryker/terminal/ui/other/l;->b:I

    .line 2
    .line 3
    iget v0, p0, Lcom/stryker/terminal/ui/other/l;->a:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/l;->e:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/stryker/terminal/ui/other/l;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/stryker/terminal/ui/other/l;->c:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;

    .line 15
    .line 16
    check-cast v3, Ljava/io/File;

    .line 17
    .line 18
    check-cast v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-static {v4, v3, v1, v2}, Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;->c(Lcom/zalexdev/stryker/wpair/BluetoothAudioManager;Ljava/io/File;Ljava/io/File;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast v4, Ls3/t;

    .line 25
    .line 26
    check-cast v3, Ls3/q;

    .line 27
    .line 28
    move-object v6, v1

    .line 29
    check-cast v6, Ljava/util/concurrent/CountDownLatch;

    .line 30
    .line 31
    iget-object v5, v4, Ls3/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 34
    .line 35
    .line 36
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    :catchall_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :try_start_1
    iget-object v0, v3, Ls3/q;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Ls3/v;->b:[I

    .line 50
    .line 51
    const/16 v7, 0xfa0

    .line 52
    .line 53
    new-instance v8, Lv1/k;

    .line 54
    .line 55
    invoke-direct {v8, v4, v3}, Lv1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    move v3, v7

    .line 59
    move-object v4, v8

    .line 60
    invoke-static/range {v0 .. v5}, Ls3/v;->e(Ljava/util/List;[IIILs3/b0;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    return-void

    .line 65
    :pswitch_1
    check-cast v4, Lr3/t;

    .line 66
    .line 67
    check-cast v3, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 68
    .line 69
    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x4

    .line 75
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {v3, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v4, Lr3/t;->a:Landroid/content/Context;

    .line 93
    .line 94
    if-ne v2, v0, :cond_1

    .line 95
    .line 96
    const v0, 0x7f060302

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    filled-new-array {v0}, [I

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_1
    const/4 v0, 0x2

    .line 112
    if-ne v2, v0, :cond_2

    .line 113
    .line 114
    const v0, 0x7f060073

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    filled-new-array {v0}, [I

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    const/4 v0, 0x3

    .line 130
    if-ne v2, v0, :cond_3

    .line 131
    .line 132
    const v0, 0x7f060339

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    filled-new-array {v0}, [I

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v3, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    .line 144
    .line 145
    .line 146
    :cond_3
    :goto_2
    return-void

    .line 147
    :pswitch_2
    check-cast v4, Lcom/stryker/terminal/ui/other/SetupActivity;

    .line 148
    .line 149
    check-cast v3, Landroid/app/ProgressDialog;

    .line 150
    .line 151
    check-cast v1, Landroid/widget/EditText;

    .line 152
    .line 153
    invoke-static {v4, v2, v3, v1}, Lcom/stryker/terminal/ui/other/SetupActivity;->h(Lcom/stryker/terminal/ui/other/SetupActivity;ILandroid/app/ProgressDialog;Landroid/widget/EditText;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
