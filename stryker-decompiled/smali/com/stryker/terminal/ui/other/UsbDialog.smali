.class final Lcom/stryker/terminal/ui/other/UsbDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final body:Landroid/widget/LinearLayout;

.field private busy:Z

.field private final dialog:Lf/n;

.field private final empty:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private final progress:Landroid/widget/ProgressBar;

.field private final root:Landroid/view/View;

.field private final subtitle:Landroid/widget/TextView;

.field private final watchdog:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$layout;->dialog_tools_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(activity).inflate(R\u2026.dialog_tools_list, null)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->root:Landroid/view/View;

    sget v1, Lcom/stryker/terminal/R$id;->dialog_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->subtitle:Landroid/widget/TextView;

    sget v1, Lcom/stryker/terminal/R$id;->dialog_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->progress:Landroid/widget/ProgressBar;

    sget v1, Lcom/stryker/terminal/R$id;->dialog_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->empty:Landroid/widget/TextView;

    sget v1, Lcom/stryker/terminal/R$id;->dialog_body:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->body:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/stryker/terminal/R$string;->term_usb_dialog_title:I

    invoke-virtual {v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v1, Lcom/stryker/terminal/R$drawable;->ic_usb_device:I

    invoke-virtual {p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$string;->term_dialog_refresh:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/R$string;->term_dialog_close:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Lf/n;

    move-result-object p1

    const-string v0, "MaterialAlertDialogBuild\u2026, null)\n        .create()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->dialog:Lf/n;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/stryker/terminal/ui/other/g;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/stryker/terminal/ui/other/g;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->watchdog:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/ui/other/UsbDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/other/UsbDialog;->show$lambda$3(Lcom/stryker/terminal/ui/other/UsbDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final alive()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->dialog:Lf/n;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final arm()V
    .locals 4

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->watchdog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->watchdog:Ljava/lang/Runnable;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic b(Lcom/stryker/terminal/ui/other/UsbDialog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/other/UsbDialog;->watchdog$lambda$0(Lcom/stryker/terminal/ui/other/UsbDialog;)V

    return-void
.end method

.method public static synthetic c(Lcom/stryker/terminal/ui/other/UsbDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/other/UsbDialog;->refresh$lambda$4(Lcom/stryker/terminal/ui/other/UsbDialog;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic d(Lcom/stryker/terminal/ui/other/UsbDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/other/UsbDialog;->show$lambda$2(Lcom/stryker/terminal/ui/other/UsbDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lcom/stryker/terminal/ui/other/UsbDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/other/UsbDialog;->show$lambda$2$lambda$1(Lcom/stryker/terminal/ui/other/UsbDialog;Landroid/view/View;)V

    return-void
.end method

.method private final onTimeout()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->busy:Z

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/UsbDialog;->alive()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->progress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->empty:Landroid/widget/TextView;

    sget v2, Lcom/stryker/terminal/R$string;->term_op_timeout:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->empty:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final refresh()V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->busy:Z

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->empty:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->progress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->subtitle:Landroid/widget/TextView;

    sget v2, Lcom/stryker/terminal/R$string;->term_usb_scanning:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/UsbDialog;->arm()V

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/stryker/terminal/ui/other/f;

    invoke-direct {v2, p0, v0}, Lcom/stryker/terminal/ui/other/f;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v2}, Lcom/stryker/terminal/ui/other/SuUtils;->getUsbDevicesDetailed(Landroid/app/Activity;Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final refresh$lambda$4(Lcom/stryker/terminal/ui/other/UsbDialog;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/other/UsbDialog;->render(Ljava/util/ArrayList;)V

    return-void
.end method

.method private final render(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->watchdog:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->busy:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/UsbDialog;->alive()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->progress:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    const/16 v2, 0x8

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->body:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->subtitle:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->activity:Landroid/app/Activity;

    .line 33
    .line 34
    sget v4, Lcom/stryker/terminal/R$string;->term_usb_count:I

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->empty:Landroid/widget/TextView;

    .line 62
    .line 63
    sget v1, Lcom/stryker/terminal/R$string;->term_usb_empty:I

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->empty:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->empty:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->activity:Landroid/app/Activity;

    .line 80
    .line 81
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->activity:Landroid/app/Activity;

    .line 86
    .line 87
    sget v3, Lcom/stryker/terminal/R$color;->term_accent_bright:I

    .line 88
    .line 89
    sget-object v4, Lx/g;->a:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static {v2, v3}, Lx/d;->a(Landroid/content/Context;I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;

    .line 110
    .line 111
    sget v4, Lcom/stryker/terminal/R$layout;->dialog_usb_row:I

    .line 112
    .line 113
    iget-object v5, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->body:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    invoke-virtual {v1, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    sget v5, Lcom/stryker/terminal/R$id;->usb_desc:I

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    check-cast v5, Landroid/widget/TextView;

    .line 126
    .line 127
    sget v6, Lcom/stryker/terminal/R$id;->usb_location:I

    .line 128
    .line 129
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v6, Landroid/widget/TextView;

    .line 134
    .line 135
    sget v7, Lcom/stryker/terminal/R$id;->usb_id:I

    .line 136
    .line 137
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    check-cast v7, Landroid/widget/TextView;

    .line 142
    .line 143
    iget-object v8, v3, Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;->description:Ljava/lang/String;

    .line 144
    .line 145
    const-string v9, "dev.description"

    .line 146
    .line 147
    invoke-static {v8, v9}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-nez v8, :cond_2

    .line 155
    .line 156
    iget-object v8, v3, Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;->id:Ljava/lang/String;

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    iget-object v8, v3, Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;->description:Ljava/lang/String;

    .line 160
    .line 161
    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iget-object v5, v3, Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;->location:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v3, v3, Lcom/stryker/terminal/ui/other/SuUtils$UsbInfo;->id:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v2}, Lcom/stryker/terminal/ui/other/WirelessDialogsKt;->access$tintLow(I)Landroid/content/res/ColorStateList;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 179
    .line 180
    .line 181
    iget-object v3, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->body:Landroid/widget/LinearLayout;

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_3
    return-void
.end method

.method private static final show$lambda$2(Lcom/stryker/terminal/ui/other/UsbDialog;Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->dialog:Lf/n;

    .line 7
    .line 8
    iget-object p1, p1, Lf/n;->a:Lf/l;

    .line 9
    .line 10
    iget-object p1, p1, Lf/l;->w:Landroid/widget/Button;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/stryker/terminal/ui/other/c;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/stryker/terminal/ui/other/c;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/UsbDialog;->refresh()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final show$lambda$2$lambda$1(Lcom/stryker/terminal/ui/other/UsbDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->busy:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/UsbDialog;->refresh()V

    :cond_0
    return-void
.end method

.method private static final show$lambda$3(Lcom/stryker/terminal/ui/other/UsbDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->watchdog:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final watchdog$lambda$0(Lcom/stryker/terminal/ui/other/UsbDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/other/UsbDialog;->onTimeout()V

    return-void
.end method


# virtual methods
.method public final show()V
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->dialog:Lf/n;

    new-instance v1, Lcom/stryker/terminal/ui/other/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/other/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->dialog:Lf/n;

    new-instance v1, Lcom/stryker/terminal/ui/other/e;

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/other/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/UsbDialog;->dialog:Lf/n;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
