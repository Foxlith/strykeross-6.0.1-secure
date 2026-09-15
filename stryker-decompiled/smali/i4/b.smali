.class public final synthetic Li4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lt2/m;

.field public final synthetic b:Landroid/widget/AutoCompleteTextView;

.field public final synthetic c:Landroid/widget/AutoCompleteTextView;

.field public final synthetic d:Landroid/widget/AutoCompleteTextView;

.field public final synthetic e:Landroid/widget/AutoCompleteTextView;

.field public final synthetic f:I

.field public final synthetic g:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lt2/m;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView;ILandroid/app/Dialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li4/b;->a:Lt2/m;

    iput-object p2, p0, Li4/b;->b:Landroid/widget/AutoCompleteTextView;

    iput-object p3, p0, Li4/b;->c:Landroid/widget/AutoCompleteTextView;

    iput-object p4, p0, Li4/b;->d:Landroid/widget/AutoCompleteTextView;

    iput-object p5, p0, Li4/b;->e:Landroid/widget/AutoCompleteTextView;

    iput p6, p0, Li4/b;->f:I

    iput-object p7, p0, Li4/b;->g:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Li4/b;->a:Lt2/m;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li4/b;->b:Landroid/widget/AutoCompleteTextView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Li4/b;->c:Landroid/widget/AutoCompleteTextView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Li4/b;->d:Landroid/widget/AutoCompleteTextView;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-lez v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-lez v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-lez v3, :cond_1

    .line 53
    .line 54
    iget-object v3, p1, Lt2/m;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Ll4/l;

    .line 57
    .line 58
    iget-object v3, v3, Ll4/l;->e:Ll4/m;

    .line 59
    .line 60
    new-instance v4, Lcom/zalexdev/stryker/custom/UsbDev;

    .line 61
    .line 62
    iget-object v5, p0, Li4/b;->e:Landroid/widget/AutoCompleteTextView;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-direct {v4, v0, v5, v1, v2}, Lcom/zalexdev/stryker/custom/UsbDev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/UsbDev;->getIfc()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, "---"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/UsbDev;->getPid()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/UsbDev;->getCommandMon()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/zalexdev/stryker/custom/UsbDev;->getCommandDis()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v1, v3, Ll4/m;->b:Ll4/l;

    .line 127
    .line 128
    const-string v2, "devices"

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ll4/l;->F(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-nez v4, :cond_0

    .line 139
    .line 140
    iget v4, p0, Li4/b;->f:I

    .line 141
    .line 142
    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3, v2}, Ll4/l;->d0(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_0
    iget-object v0, p1, Lt2/m;->e:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v0, Ll4/l;

    .line 151
    .line 152
    iget-object v0, v0, Ll4/l;->e:Ll4/m;

    .line 153
    .line 154
    invoke-virtual {v0}, Ll4/m;->g()Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p1, Lt2/m;->b:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Li4/b;->g:Landroid/app/Dialog;

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p1, Lt2/m;->e:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Ll4/l;

    .line 172
    .line 173
    iget-object p1, p1, Lt2/m;->c:Landroid/content/Context;

    .line 174
    .line 175
    const v1, 0x7f130110

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v0, p1}, Ll4/l;->r0(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_0
    return-void
.end method
