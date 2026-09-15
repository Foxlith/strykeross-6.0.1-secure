.class Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig;
.super Lcom/stryker/terminal/SettingsMenu$Menu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/SettingsMenuMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandlineConfig"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/stryker/terminal/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/stryker/terminal/MainActivity;)V
    .locals 5

    .line 1
    new-instance v0, Lf/m;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lf/m;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget v2, Lcom/stryker/terminal/xorg/R$string;->storage_commandline:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lf/m;->setTitle(Ljava/lang/CharSequence;)Lf/m;

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/widget/EditText;

    .line 20
    .line 21
    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    const-string v2, "SDL_app"

    .line 40
    .line 41
    sput-object v2, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 42
    .line 43
    :cond_0
    sget-object v2, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 44
    .line 45
    const-string v3, " "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v4, -0x1

    .line 52
    if-ne v2, v4, :cond_1

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    sget-object v4, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2, v4, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sput-object v2, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 66
    .line 67
    :cond_1
    sget-object v2, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v4, "\n"

    .line 78
    .line 79
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v4, "\t"

    .line 84
    .line 85
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    const v2, 0xa0001

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 96
    .line 97
    .line 98
    const/4 v2, 0x2

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinLines(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lf/m;->setView(Landroid/view/View;)Lf/m;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    sget v3, Lcom/stryker/terminal/xorg/R$string;->ok:I

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    new-instance v3, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$1;

    .line 116
    .line 117
    invoke-direct {v3, p0, v1, p1}, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$1;-><init>(Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig;Landroid/widget/EditText;Lcom/stryker/terminal/MainActivity;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2, v3}, Lf/m;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lf/m;

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$2;

    .line 124
    .line 125
    invoke-direct {v1, p0, p1}, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$2;-><init>(Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig;Lcom/stryker/terminal/MainActivity;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lf/m;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lf/m;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lf/m;->create()Lf/n;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 139
    .line 140
    .line 141
    return-void
.end method

.method public title(Lcom/stryker/terminal/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lf/q;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/stryker/terminal/xorg/R$string;->storage_commandline:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
