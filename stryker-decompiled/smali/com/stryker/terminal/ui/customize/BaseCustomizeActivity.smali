.class public Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;
.super Lf/q;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# instance fields
.field public extraKeysView:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

.field public session:Lcom/stryker/terminal/backend/TerminalSession;

.field public sessionCallback:Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;

.field public terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

.field public viewClient:Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->extraKeysView:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "extraKeysView"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSession()Lcom/stryker/terminal/backend/TerminalSession;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->session:Lcom/stryker/terminal/backend/TerminalSession;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "session"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSessionCallback()Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->sessionCallback:Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sessionCallback"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "terminalView"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getViewClient()Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->viewClient:Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewClient"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final initCustomizationComponent(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lf/q;->setContentView(I)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/stryker/terminal/R$id;->custom_toolbar:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lf/q;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lf/q;->getSupportActionBar()Lf/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Lf/b;->m(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget p1, Lcom/stryker/terminal/R$id;->terminal_view:I

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "findViewById(R.id.terminal_view)"

    .line 32
    .line 33
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->setTerminalView(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    .line 39
    .line 40
    .line 41
    sget p1, Lcom/stryker/terminal/R$id;->custom_extra_keys:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "findViewById(R.id.custom_extra_keys)"

    .line 48
    .line 49
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast p1, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->setExtraKeysView(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p1, v0}, Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->setViewClient(Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;-><init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->setSessionCallback(Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lcom/stryker/terminal/utils/Terminals;->INSTANCE:Lcom/stryker/terminal/utils/Terminals;

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getViewClient()Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p1, v0, v1}, Lcom/stryker/terminal/utils/Terminals;->setupTerminalView(Lcom/stryker/terminal/frontend/session/view/TerminalView;Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getExtraKeysView()Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Lcom/stryker/terminal/utils/Terminals;->setupExtraKeysView(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lf/q;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sget v1, Lcom/stryker/terminal/R$array;->custom_preview_script_colors:I

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "resources.getStringArray\u2026om_preview_script_colors)"

    .line 112
    .line 113
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v1, Lcom/stryker/terminal/component/session/ShellParameter;

    .line 117
    .line 118
    invoke-direct {v1}, Lcom/stryker/terminal/component/session/ShellParameter;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v2, "/system/bin/echo"

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    new-instance v2, Lg3/b;

    .line 128
    .line 129
    const/4 v3, 0x3

    .line 130
    invoke-direct {v2, v3}, Lg3/b;-><init>(I)V

    .line 131
    .line 132
    .line 133
    iget-object v3, v2, Lg3/b;->b:Ljava/lang/Object;

    .line 134
    .line 135
    move-object v4, v3

    .line 136
    check-cast v4, Ljava/util/ArrayList;

    .line 137
    .line 138
    const-string v5, "echo"

    .line 139
    .line 140
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-object v4, v3

    .line 144
    check-cast v4, Ljava/util/ArrayList;

    .line 145
    .line 146
    const-string v5, "-e"

    .line 147
    .line 148
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v0}, Lg3/b;->c(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    move-object v0, v3

    .line 155
    check-cast v0, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    new-array v0, v0, [Ljava/lang/String;

    .line 162
    .line 163
    check-cast v3, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, [Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Lcom/stryker/terminal/component/session/ShellParameter;->arguments([Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getSessionCallback()Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/ShellParameter;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell(Z)Lcom/stryker/terminal/component/session/ShellParameter;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1, p0, v0}, Lcom/stryker/terminal/utils/Terminals;->createSession(Landroid/content/Context;Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->setSession(Lcom/stryker/terminal/backend/TerminalSession;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->getSession()Lcom/stryker/terminal/backend/TerminalSession;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->attachSession(Lcom/stryker/terminal/backend/TerminalSession;)Z

    .line 204
    .line 205
    .line 206
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final setExtraKeysView(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->extraKeysView:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    return-void
.end method

.method public final setSession(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->session:Lcom/stryker/terminal/backend/TerminalSession;

    return-void
.end method

.method public final setSessionCallback(Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->sessionCallback:Lcom/stryker/terminal/frontend/session/terminal/BasicSessionCallback;

    return-void
.end method

.method public final setTerminalView(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-void
.end method

.method public final setViewClient(Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/customize/BaseCustomizeActivity;->viewClient:Lcom/stryker/terminal/frontend/session/terminal/BasicViewClient;

    return-void
.end method
