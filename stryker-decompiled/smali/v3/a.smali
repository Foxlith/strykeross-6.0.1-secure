.class public final synthetic Lv3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lv3/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lv3/a;->b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lv3/a;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lv3/a;->b:Lcom/zalexdev/stryker/macchanger/MACChangerFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->p:Landroid/widget/AutoCompleteTextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v1, v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->t:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object p1, v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->p:Landroid/widget/AutoCompleteTextView;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v1, v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v1, v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroidx/appcompat/widget/c0;->getText()Landroid/text/Editable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_1
    iget-object p1, v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->t:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->f(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_2
    iget-object p1, v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->g:Lcom/google/android/material/textview/MaterialTextView;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/appcompat/widget/m1;->getText()Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->f(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_3
    sget-object p1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->h()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v1, v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    iget-object v0, v0, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->q:Lcom/google/android/material/textfield/TextInputEditText;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void

    .line 105
    :pswitch_4
    sget-object p1, Lcom/zalexdev/stryker/macchanger/MACChangerFragment;->w:Ljava/util/regex/Pattern;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance p1, Ljava/lang/Thread;

    .line 111
    .line 112
    new-instance v1, Lv3/b;

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-direct {v1, v0, v2}, Lv3/b;-><init>(Lcom/zalexdev/stryker/macchanger/MACChangerFragment;I)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
