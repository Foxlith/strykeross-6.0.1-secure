.class public final synthetic Ln3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/material/textfield/TextInputLayout;

.field public final synthetic c:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic d:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/b;->a:[Ljava/lang/String;

    iput-object p2, p0, Ln3/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p3, p0, Ln3/b;->c:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p4, p0, Ln3/b;->d:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object v0, p0, Ln3/b;->a:[Ljava/lang/String;

    .line 21
    .line 22
    const v1, 0x7f0a0282

    .line 23
    .line 24
    .line 25
    const/16 v2, 0x8

    .line 26
    .line 27
    if-ne p2, v1, :cond_1

    .line 28
    .line 29
    const-string p2, "ssh"

    .line 30
    .line 31
    aput-object p2, v0, p1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const v1, 0x7f0a027d

    .line 35
    .line 36
    .line 37
    if-ne p2, v1, :cond_2

    .line 38
    .line 39
    const-string p2, "ftp"

    .line 40
    .line 41
    aput-object p2, v0, p1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const v1, 0x7f0a0281

    .line 45
    .line 46
    .line 47
    if-ne p2, v1, :cond_3

    .line 48
    .line 49
    const-string p2, "smb"

    .line 50
    .line 51
    aput-object p2, v0, p1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const v1, 0x7f0a0280

    .line 55
    .line 56
    .line 57
    if-ne p2, v1, :cond_4

    .line 58
    .line 59
    const-string p2, "rdp"

    .line 60
    .line 61
    aput-object p2, v0, p1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const v1, 0x7f0a027e

    .line 65
    .line 66
    .line 67
    if-ne p2, v1, :cond_5

    .line 68
    .line 69
    const-string p2, "mysql"

    .line 70
    .line 71
    aput-object p2, v0, p1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const v1, 0x7f0a027f

    .line 75
    .line 76
    .line 77
    if-ne p2, v1, :cond_6

    .line 78
    .line 79
    const-string p2, "postgres"

    .line 80
    .line 81
    aput-object p2, v0, p1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    const v1, 0x7f0a0283

    .line 85
    .line 86
    .line 87
    if-ne p2, v1, :cond_7

    .line 88
    .line 89
    const-string p2, "telnet"

    .line 90
    .line 91
    aput-object p2, v0, p1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    const v1, 0x7f0a0285

    .line 95
    .line 96
    .line 97
    if-ne p2, v1, :cond_8

    .line 98
    .line 99
    const-string p2, "vnc"

    .line 100
    .line 101
    aput-object p2, v0, p1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_8
    const v1, 0x7f0a027b

    .line 105
    .line 106
    .line 107
    if-ne p2, v1, :cond_9

    .line 108
    .line 109
    const-string p2, ""

    .line 110
    .line 111
    aput-object p2, v0, p1

    .line 112
    .line 113
    move p2, p1

    .line 114
    goto :goto_1

    .line 115
    :cond_9
    :goto_0
    move p2, v2

    .line 116
    :goto_1
    iget-object v1, p0, Ln3/b;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 117
    .line 118
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    sget-object p2, Ln3/h;->b:Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    aget-object v1, v0, p1

    .line 124
    .line 125
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Ljava/lang/String;

    .line 130
    .line 131
    if-eqz p2, :cond_a

    .line 132
    .line 133
    iget-object v1, p0, Ln3/b;->c:Lcom/google/android/material/textfield/TextInputEditText;

    .line 134
    .line 135
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    :cond_a
    aget-object p2, v0, p1

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v1, " "

    .line 143
    .line 144
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    const-string v0, " redis adam6500 cisco oracle-listener s7-300 snmp vnc rsh rpcap "

    .line 158
    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    xor-int/lit8 p2, p2, 0x1

    .line 164
    .line 165
    if-eqz p2, :cond_b

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_b
    move p1, v2

    .line 169
    :goto_2
    iget-object p2, p0, Ln3/b;->d:Lcom/google/android/material/textfield/TextInputLayout;

    .line 170
    .line 171
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    :goto_3
    return-void
.end method
