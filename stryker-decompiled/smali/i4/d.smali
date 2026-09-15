.class public final synthetic Li4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;

.field public final synthetic b:Landroid/widget/AutoCompleteTextView;

.field public final synthetic c:Landroid/widget/AutoCompleteTextView;

.field public final synthetic d:Landroid/widget/AutoCompleteTextView;

.field public final synthetic e:Landroid/widget/AutoCompleteTextView;

.field public final synthetic f:Lt2/m;

.field public final synthetic g:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Lt2/m;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/d;->a:Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;

    iput-object p2, p0, Li4/d;->b:Landroid/widget/AutoCompleteTextView;

    iput-object p3, p0, Li4/d;->c:Landroid/widget/AutoCompleteTextView;

    iput-object p4, p0, Li4/d;->d:Landroid/widget/AutoCompleteTextView;

    iput-object p5, p0, Li4/d;->e:Landroid/widget/AutoCompleteTextView;

    iput-object p6, p0, Li4/d;->f:Lt2/m;

    iput-object p7, p0, Li4/d;->g:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget p1, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->f:I

    .line 2
    .line 3
    iget-object p1, p0, Li4/d;->a:Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Li4/d;->b:Landroid/widget/AutoCompleteTextView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Li4/d;->c:Landroid/widget/AutoCompleteTextView;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Li4/d;->d:Landroid/widget/AutoCompleteTextView;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const-string v5, "wlan0"

    .line 43
    .line 44
    if-lez v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-lez v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-lez v4, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_0

    .line 63
    .line 64
    iget-object v0, p1, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->a:Ll4/l;

    .line 65
    .line 66
    iget-object v0, v0, Ll4/l;->e:Ll4/m;

    .line 67
    .line 68
    new-instance v4, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 69
    .line 70
    iget-object v5, p0, Li4/d;->e:Landroid/widget/AutoCompleteTextView;

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-direct {v4, v1, v5, v2, v3}, Lcom/zalexdev/stryker/custom/UsbDev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v4}, Ll4/m;->a(Lcom/zalexdev/stryker/custom/UsbDev;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p1, Lcom/zalexdev/stryker/settings/commands/CustomCommandsWifi;->a:Ll4/l;

    .line 87
    .line 88
    iget-object p1, p1, Ll4/l;->e:Ll4/m;

    .line 89
    .line 90
    invoke-virtual {p1}, Ll4/m;->g()Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Li4/d;->f:Lt2/m;

    .line 95
    .line 96
    iput-object p1, v0, Lt2/m;->b:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Li4/d;->g:Landroid/app/Dialog;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_1

    .line 112
    .line 113
    const v1, 0x7f130111

    .line 114
    .line 115
    .line 116
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    const v1, 0x7f130110

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :goto_1
    return-void
.end method
