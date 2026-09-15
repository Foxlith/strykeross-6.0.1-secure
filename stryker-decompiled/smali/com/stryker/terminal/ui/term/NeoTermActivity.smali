.class public final Lcom/stryker/terminal/ui/term/NeoTermActivity;
.super Lf/q;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/ui/term/NeoTermActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stryker/terminal/ui/term/NeoTermActivity$Companion;

.field public static final EXTRA_NEW_SESSION:Ljava/lang/String; = "com.stryker.terminal.NEW_SESSION"

.field public static final KEY_NO_RESTORE:Ljava/lang/String; = "no_restore"

.field public static final REQUEST_SETUP:I = 0x5729


# instance fields
.field private addSessionListener:Landroid/view/View$OnClickListener;

.field private fullScreenHelper:Lcom/stryker/terminal/utils/FullScreenHelper;

.field public tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

.field private termService:Lcom/stryker/terminal/services/NeoTermService;

.field public toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/ui/term/NeoTermActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/ui/term/NeoTermActivity$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->Companion:Lcom/stryker/terminal/ui/term/NeoTermActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf/q;-><init>()V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createAddSessionListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addSessionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getTermService$p(Lcom/stryker/terminal/ui/term/NeoTermActivity;)Lcom/stryker/terminal/services/NeoTermService;
    .locals 0

    iget-object p0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    return-object p0
.end method

.method public static final synthetic access$toggleToolbar(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toggleToolbar(Landroidx/appcompat/widget/Toolbar;Z)V

    return-void
.end method

.method private final addNewAndroidSession(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    new-instance v0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    invoke-direct {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;-><init>()V

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/stryker/terminal/component/session/ShellParameter;

    invoke-direct {v2}, Lcom/stryker/terminal/component/session/ShellParameter;-><init>()V

    invoke-virtual {v2, v0}, Lcom/stryker/terminal/component/session/ShellParameter;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v2

    const-string v3, "/data/data/com.zalexdev.stryker/files/usr/bin/bash"

    invoke-virtual {v2, v3}, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell(Z)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v2

    iget-object v3, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v3}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/stryker/terminal/services/NeoTermService;->createTermSession(Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v2

    if-nez p1, :cond_0

    const-string p1, "Android"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->generateSessionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, v2, Lcom/stryker/terminal/backend/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createTab(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type com.stryker.terminal.ui.term.TermTab"

    invoke-static {p1, v3}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->initializeSessionWith(Lcom/stryker/terminal/backend/TerminalSession;Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    return-void
.end method

.method private final addNewRootSession(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    new-instance v0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    invoke-direct {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;-><init>()V

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/stryker/terminal/component/session/ShellParameter;

    invoke-direct {v2}, Lcom/stryker/terminal/component/session/ShellParameter;-><init>()V

    invoke-virtual {v2, v0}, Lcom/stryker/terminal/component/session/ShellParameter;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v2

    const-string v3, "/data/data/com.zalexdev.stryker/files/usr/bin/android-su"

    invoke-virtual {v2, v3}, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell(Z)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v2

    const-string v3, "clear"

    invoke-virtual {v2, v3}, Lcom/stryker/terminal/component/session/ShellParameter;->initialCommand(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v2

    iget-object v3, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v3}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/stryker/terminal/services/NeoTermService;->createTermSession(Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {p0, v3}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->generateSessionName(Ljava/lang/String;)Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "ANDROID SU"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->generateSessionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, v2, Lcom/stryker/terminal/backend/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createTab(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type com.stryker.terminal.ui.term.TermTab"

    invoke-static {p1, v3}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->initializeSessionWith(Lcom/stryker/terminal/backend/TerminalSession;Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    return-void
.end method

.method private final addNewSession()V
    .locals 1

    .line 1
    const-string v0, "Stryker"

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewStrykerSession(Ljava/lang/String;)V

    return-void
.end method

.method private final addNewSession(Ljava/lang/String;ZLde/mrapp/android/tabswitcher/Animation;)V
    .locals 0

    .line 2
    const-string p1, "Stryker"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewStrykerSession(Ljava/lang/String;)V

    return-void
.end method

.method private final addNewSessionFromExisting(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Ln5/c;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    sub-int/2addr v0, v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v3, v0, v2}, Ln5/a;-><init>(III)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {v1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ln5/a;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    move-object v2, v1

    .line 34
    check-cast v2, Ln5/b;

    .line 35
    .line 36
    iget-boolean v2, v2, Ln5/b;->c:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    move-object v2, v1

    .line 41
    check-cast v2, Ln5/b;

    .line 42
    .line 43
    invoke-virtual {v2}, Ln5/b;->b()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3, v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    move-object v3, v2

    .line 79
    check-cast v3, Lde/mrapp/android/tabswitcher/Tab;

    .line 80
    .line 81
    instance-of v4, v3, Lcom/stryker/terminal/ui/term/TermTab;

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    check-cast v3, Lcom/stryker/terminal/ui/term/TermTab;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v3, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lde/mrapp/android/tabswitcher/Tab;

    .line 120
    .line 121
    return-void

    .line 122
    :cond_4
    invoke-virtual {p1}, Lcom/stryker/terminal/backend/TerminalSession;->getSessionChangedCallback()Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "null cannot be cast to non-null type com.stryker.terminal.frontend.session.terminal.TermSessionCallback"

    .line 127
    .line 128
    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    check-cast v0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    .line 132
    .line 133
    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    .line 134
    .line 135
    invoke-direct {v1, p0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/stryker/terminal/backend/TerminalSession;->getTitle()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-direct {p0, v2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createTab(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/Tab;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string v3, "null cannot be cast to non-null type com.stryker.terminal.ui.term.TermTab"

    .line 147
    .line 148
    invoke-static {v2, v3}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    check-cast v2, Lcom/stryker/terminal/ui/term/TermTab;

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3, p1, v0, v1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->initializeSessionWith(Lcom/stryker/terminal/backend/TerminalSession;Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, v2, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0, v2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private final addNewSessionWithProfile(Lcom/stryker/terminal/component/session/ShellProfile;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toggleSwitcher(ZZ)V

    :cond_0
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getSystemShellMode()Z

    move-result v0

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewSessionWithProfile(Ljava/lang/String;ZLde/mrapp/android/tabswitcher/Animation;Lcom/stryker/terminal/component/session/ShellProfile;)V

    return-void
.end method

.method private final addNewSessionWithProfile(Ljava/lang/String;ZLde/mrapp/android/tabswitcher/Animation;Lcom/stryker/terminal/component/session/ShellProfile;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    invoke-direct {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;-><init>()V

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/stryker/terminal/component/session/ShellParameter;

    invoke-direct {v2}, Lcom/stryker/terminal/component/session/ShellParameter;-><init>()V

    invoke-virtual {v2, v0}, Lcom/stryker/terminal/component/session/ShellParameter;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/stryker/terminal/component/session/ShellParameter;->systemShell(Z)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/stryker/terminal/component/session/ShellParameter;->profile(Lcom/stryker/terminal/component/session/ShellProfile;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object p2

    iget-object p4, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {p4}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {p4, p2}, Lcom/stryker/terminal/services/NeoTermService;->createTermSession(Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p2

    if-nez p1, :cond_0

    const-string p1, "Stryker"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->generateSessionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p2, Lcom/stryker/terminal/backend/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createTab(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    const-string p4, "null cannot be cast to non-null type com.stryker.terminal.ui.term.TermTab"

    invoke-static {p1, p4}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object p4

    invoke-virtual {p4, p2, v0, v1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->initializeSessionWith(Lcom/stryker/terminal/backend/TerminalSession;Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;)V

    invoke-direct {p0, p1, p3}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    return-void
.end method

.method private final addNewStrykerSession(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;

    invoke-direct {v0}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;-><init>()V

    new-instance v1, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;

    invoke-direct {v1, p0}, Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "rootless/.active"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    new-instance v3, Lcom/stryker/terminal/component/session/ShellParameter;

    invoke-direct {v3}, Lcom/stryker/terminal/component/session/ShellParameter;-><init>()V

    invoke-virtual {v3, v0}, Lcom/stryker/terminal/component/session/ShellParameter;->callback(Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string v2, "pty:127.0.0.1:1051"

    invoke-virtual {v3, v2}, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    goto :goto_0

    :cond_0
    const-string v2, "/data/data/com.zalexdev.stryker/files/usr/bin/stryker-ch"

    invoke-virtual {v3, v2}, Lcom/stryker/terminal/component/session/ShellParameter;->executablePath(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    move-result-object v2

    const-string v4, "clear"

    invoke-virtual {v2, v4}, Lcom/stryker/terminal/component/session/ShellParameter;->initialCommand(Ljava/lang/String;)Lcom/stryker/terminal/component/session/ShellParameter;

    :goto_0
    iget-object v2, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v2}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/stryker/terminal/services/NeoTermService;->createTermSession(Lcom/stryker/terminal/component/session/ShellParameter;)Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v2

    if-nez p1, :cond_1

    const-string p1, "Stryker"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->generateSessionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, v2, Lcom/stryker/terminal/backend/TerminalSession;->mSessionName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createTab(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type com.stryker.terminal.ui.term.TermTab"

    invoke-static {p1, v3}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->initializeSessionWith(Lcom/stryker/terminal/backend/TerminalSession;Lcom/stryker/terminal/frontend/session/terminal/TermSessionCallback;Lcom/stryker/terminal/frontend/session/terminal/TermViewClient;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    return-void
.end method

.method private final addNewTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V
    .locals 2

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->addTab(Lde/mrapp/android/tabswitcher/Tab;ILde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method private final addXSession(Lcom/stryker/terminal/component/session/XSession;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Ln5/c;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    sub-int/2addr v0, v2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v3, v0, v2}, Ln5/a;-><init>(III)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {v1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ln5/a;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    move-object v2, v1

    .line 34
    check-cast v2, Ln5/b;

    .line 35
    .line 36
    iget-boolean v2, v2, Ln5/b;->c:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    move-object v2, v1

    .line 41
    check-cast v2, Ln5/b;

    .line 42
    .line 43
    invoke-virtual {v2}, Ln5/b;->b()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3, v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    move-object v3, v2

    .line 79
    check-cast v3, Lde/mrapp/android/tabswitcher/Tab;

    .line 80
    .line 81
    instance-of v4, v3, Lcom/stryker/terminal/ui/term/XSessionTab;

    .line 82
    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    check-cast v3, Lcom/stryker/terminal/ui/term/XSessionTab;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/stryker/terminal/ui/term/XSessionTab;->getSession()Lcom/stryker/terminal/component/session/XSession;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v3, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_2

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Lde/mrapp/android/tabswitcher/Tab;

    .line 116
    .line 117
    return-void

    .line 118
    :cond_4
    invoke-virtual {p1}, Lcom/stryker/terminal/component/session/XSession;->getMSessionName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createXTab(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/Tab;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v0, "null cannot be cast to non-null type com.stryker.terminal.ui.term.XSessionTab"

    .line 127
    .line 128
    invoke-static {p1, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    check-cast p1, Lcom/stryker/terminal/ui/term/XSessionTab;

    .line 132
    .line 133
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewTab(Lde/mrapp/android/tabswitcher/Tab;Lde/mrapp/android/tabswitcher/Animation;)V

    .line 138
    .line 139
    .line 140
    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method private final createAddSessionListener()Landroid/view/View$OnClickListener;
    .locals 2

    new-instance v0, Lcom/stryker/terminal/ui/term/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/stryker/terminal/ui/term/d;-><init>(Lcom/stryker/terminal/ui/term/NeoTermActivity;I)V

    return-object v0
.end method

.method private static final createAddSessionListener$lambda$13(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewSession()V

    return-void
.end method

.method private final createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;
    .locals 5

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getNavigationMenuItem()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    :goto_0
    new-instance v1, Lde/mrapp/android/tabswitcher/RevealAnimation$Builder;

    invoke-direct {v1}, Lde/mrapp/android/tabswitcher/RevealAnimation$Builder;-><init>()V

    invoke-virtual {v1, v3}, Lde/mrapp/android/tabswitcher/RevealAnimation$Builder;->setX(F)Lde/mrapp/android/tabswitcher/RevealAnimation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/mrapp/android/tabswitcher/RevealAnimation$Builder;->setY(F)Lde/mrapp/android/tabswitcher/RevealAnimation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/RevealAnimation$Builder;->create()Lde/mrapp/android/tabswitcher/RevealAnimation;

    move-result-object v0

    const-string v1, "Builder().setX(x).setY(y).create()"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final createTab(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/Tab;
    .locals 1

    new-instance v0, Lcom/stryker/terminal/ui/term/TermTab;

    if-nez p1, :cond_0

    const-string p1, "Android"

    :cond_0
    invoke-direct {v0, p1}, Lcom/stryker/terminal/ui/term/TermTab;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->postTabCreated(Lcom/stryker/terminal/ui/term/NeoTab;)Lcom/stryker/terminal/ui/term/NeoTab;

    move-result-object p1

    return-object p1
.end method

.method private final createWindowInsetsListener()Landroidx/core/view/a0;
    .locals 2

    new-instance v0, Lv/f;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lv/f;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static final createWindowInsetsListener$lambda$16(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/core/view/q2;->b()I

    move-result p1

    invoke-virtual {p2}, Landroidx/core/view/q2;->d()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/view/q2;->c()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/q2;->a()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->setPadding(IIII)V

    return-object p2
.end method

.method private final createXTab(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/Tab;
    .locals 1

    new-instance v0, Lcom/stryker/terminal/ui/term/XSessionTab;

    if-nez p1, :cond_0

    const-string p1, "Stryker"

    :cond_0
    invoke-direct {v0, p1}, Lcom/stryker/terminal/ui/term/XSessionTab;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->postTabCreated(Lcom/stryker/terminal/ui/term/NeoTab;)Lcom/stryker/terminal/ui/term/NeoTab;

    move-result-object p1

    return-object p1
.end method

.method private final enterMain()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->setSystemShellMode(Z)V

    iget-object v1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/stryker/terminal/services/NeoTermService;->getSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getStoredCurrentSessionOrLast()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v1

    iget-object v3, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v3}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/stryker/terminal/services/NeoTermService;->getSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stryker/terminal/backend/TerminalSession;

    invoke-direct {p0, v4}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewSessionFromExisting(Lcom/stryker/terminal/backend/TerminalSession;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v3}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/stryker/terminal/services/NeoTermService;->getXSessions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stryker/terminal/component/session/XSession;

    invoke-direct {p0, v4}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addXSession(Lcom/stryker/terminal/component/session/XSession;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    const-string v4, "android.intent.action.RUN"

    invoke-static {v3, v4}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->wantsFreshSession()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, v1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lcom/stryker/terminal/backend/TerminalSession;)V

    goto :goto_4

    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewSession(Ljava/lang/String;ZLde/mrapp/android/tabswitcher/Animation;)V

    goto :goto_4

    :cond_5
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toggleSwitcher(ZZ)V

    goto :goto_3

    :goto_4
    return-void
.end method

.method public static synthetic f(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->onCreateOptionsMenu$lambda$1(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;)V

    return-void
.end method

.method private final forEachTab(Lj5/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj5/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0, p1}, Li5/a;->i1(II)Ln5/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-static {p1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ln5/a;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :goto_0
    move-object v1, p1

    .line 28
    check-cast v1, Ln5/b;

    .line 29
    .line 30
    iget-boolean v1, v1, Ln5/b;->c:Z

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    move-object v1, p1

    .line 35
    check-cast v1, Ln5/b;

    .line 36
    .line 37
    invoke-virtual {v1}, Ln5/b;->b()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 54
    .line 55
    const-string v0, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method private final forceAddSystemSession()V
    .locals 3

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toggleSwitcher(ZZ)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewSession(Ljava/lang/String;ZLde/mrapp/android/tabswitcher/Animation;)V

    return-void
.end method

.method public static synthetic g(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toggleToolbar$lambda$0(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method private final generateSessionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, " #"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    .line 8
    .line 9
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/stryker/terminal/services/NeoTermService;->getSessions()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method private final generateXSessionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, " #"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    .line 8
    .line 9
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/stryker/terminal/services/NeoTermService;->getXSessions()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method private final getNavigationMenuItem()Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getToolbars()[Landroidx/appcompat/widget/Toolbar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-le v1, v3, :cond_0

    .line 15
    .line 16
    aget-object v0, v0, v3

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    aget-object v0, v0, v2

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v2, v1}, Li5/a;->i1(II)Ln5/c;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-static {v1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ln5/a;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_1
    move-object v3, v1

    .line 43
    check-cast v3, Ln5/b;

    .line 44
    .line 45
    iget-boolean v3, v3, Ln5/b;->c:Z

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    move-object v3, v1

    .line 50
    check-cast v3, Ln5/b;

    .line 51
    .line 52
    invoke-virtual {v3}, Ln5/b;->b()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const-class v0, Landroid/widget/ImageButton;

    .line 65
    .line 66
    invoke-static {v2, v0}, Lx4/m;->w0(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/widget/ImageButton;

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_2
    const/4 v0, 0x0

    .line 88
    return-object v0
.end method

.method private final getStoredCurrentSessionOrLast()Lcom/stryker/terminal/backend/TerminalSession;
    .locals 2

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    iget-object v1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/config/NeoPreference;->getCurrentSession(Lcom/stryker/terminal/services/NeoTermService;)Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/stryker/terminal/services/NeoTermService;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    invoke-static {v1}, Li5/a;->m(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/stryker/terminal/services/NeoTermService;->getSessions()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/backend/TerminalSession;

    return-object v0
.end method

.method private final getSystemShellMode()Z
    .locals 3

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    const-string v1, "neoterm_core_system_shell"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic h(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createAddSessionListener$lambda$13(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->showProfileDialog$lambda$6(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final isRecreating()Z
    .locals 4

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->peekRecreating()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "no_restore"

    invoke-virtual {v1, v3, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->store(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public static synthetic j(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->update_colors$lambda$18(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V

    return-void
.end method

.method public static synthetic k(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createWindowInsetsListener$lambda$16(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreateOptionsMenu$lambda$1(Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    instance-of p1, p1, Lcom/stryker/terminal/ui/term/TermTab;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.stryker.terminal.ui.term.TermTab"

    invoke-static {p1, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/TermTab;->requireHideIme()V

    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toggleSwitcher(ZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toggleSwitcher(ZZ)V

    :goto_0
    return-void
.end method

.method private final peekRecreating()Z
    .locals 3

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    const-string v1, "no_restore"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final postTabCreated(Lcom/stryker/terminal/ui/term/NeoTab;)Lcom/stryker/terminal/ui/term/NeoTab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/stryker/terminal/ui/term/NeoTab;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/Tab;->setParameters(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/stryker/terminal/R$color;->tab_background_color:I

    .line 10
    .line 11
    sget-object v1, Lx/g;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p0, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/Tab;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/stryker/terminal/R$color;->tab_title_text_color:I

    .line 21
    .line 22
    invoke-static {p0, v0}, Lx/d;->a(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/Tab;->setTitleTextColor(I)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method private final saveCurrentStatus()V
    .locals 1

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getSystemShellMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->setSystemShellMode(Z)V

    return-void
.end method

.method private final setFullScreenMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->fullScreenHelper:Lcom/stryker/terminal/utils/FullScreenHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/utils/FullScreenHelper;->setFullScreen(Z)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    instance-of v0, v0, Lcom/stryker/terminal/ui/term/TermTab;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.stryker.terminal.ui.term.TermTab"

    invoke-static {v0, v1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {v0}, Lcom/stryker/terminal/ui/term/TermTab;->requireHideIme()V

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/ui/term/TermTab;->onFullScreenModeChanged(Z)V

    :cond_0
    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    sget v1, Lcom/stryker/terminal/R$string;->key_ui_fullscreen:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->store(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->recreate()V

    return-void

    :cond_1
    const-string p1, "fullScreenHelper"

    invoke-static {p1}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final setSystemShellMode(Z)V
    .locals 2

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    const-string v1, "neoterm_core_system_shell"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/stryker/terminal/component/config/NeoPreference;->store(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final showProfileDialog()V
    .locals 7

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const-class v1, Lcom/stryker/terminal/component/profile/ProfileComponent;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/profile/ProfileComponent;

    const-string v1, "profile-shell"

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/profile/ProfileComponent;->getProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/stryker/terminal/component/session/ShellProfile;

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/stryker/terminal/R$string;->error:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$string;->no_profile_available:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x1040013

    :goto_1
    invoke-virtual {v0, v1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lf/m;->show()Lf/n;

    return-void

    :cond_2
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v3, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget v5, Lcom/stryker/terminal/R$string;->new_session_with_profile:I

    invoke-virtual {v3, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stryker/terminal/component/profile/NeoProfile;

    invoke-virtual {v6}, Lcom/stryker/terminal/component/profile/NeoProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/stryker/terminal/ui/customize/a;

    const/4 v5, 0x5

    invoke-direct {v2, v1, p0, v5}, Lcom/stryker/terminal/ui/customize/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x1040009

    goto :goto_1
.end method

.method private static final showProfileDialog$lambda$6(Ljava/util/List;Lcom/stryker/terminal/ui/term/NeoTermActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "$profilesShell"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stryker/terminal/component/session/ShellProfile;

    invoke-direct {p1, p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewSessionWithProfile(Lcom/stryker/terminal/component/session/ShellProfile;)V

    return-void
.end method

.method private final switchToSession(Lcom/stryker/terminal/backend/TerminalSession;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v2

    const-string v3, "tabSwitcher.getTab(i)"

    invoke-static {v2, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v2, Lcom/stryker/terminal/ui/term/TermTab;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {v3}, Lcom/stryker/terminal/ui/term/TermTab;->getTermData()Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stryker/terminal/frontend/session/terminal/TermSessionData;->getTermSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v3

    invoke-static {v3, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private final switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V
    .locals 1

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->selectTab(Lde/mrapp/android/tabswitcher/Tab;)V

    return-void
.end method

.method private final toggleSwitcher(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    sget-object p1, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    invoke-virtual {p1}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    move-result-object p1

    const-string p2, "Stop! You don\'t know what you are doing!"

    invoke-virtual {p1, p0, p2}, Lcom/stryker/terminal/App;->easterEgg(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->showSwitcher()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->hideSwitcher()V

    :goto_0
    return-void
.end method

.method private final toggleToolbar(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->isFullScreenEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/component/config/NeoPreference;->isHideToolbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    neg-float v0, v0

    :goto_0
    if-eqz p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/widget/i4;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/i4;-><init>(Landroidx/appcompat/widget/Toolbar;I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private static final toggleToolbar$lambda$0(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final update_colors$lambda$18(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p0

    invoke-virtual {p0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p0

    instance-of v0, p0, Lcom/stryker/terminal/ui/term/TermTab;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/TermTab;->updateColorScheme()V

    :cond_0
    return-void
.end method

.method private final wantsFreshSession()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "com.stryker.terminal.NEW_SESSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final getAddSessionListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addSessionListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tabSwitcher"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "toolbar"

    invoke-static {v0}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x5729

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->setSystemShellMode(Z)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->forceAddSystemSession()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->enterMain()V

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/a0;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lf/q;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v1, v0}, Li5/a;->i1(II)Ln5/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-static {v0}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ln5/a;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    move-object v2, v0

    .line 36
    check-cast v2, Ln5/b;

    .line 37
    .line 38
    iget-boolean v2, v2, Ln5/b;->c:Z

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    move-object v2, v0

    .line 43
    check-cast v2, Ln5/b;

    .line 44
    .line 45
    invoke-virtual {v2}, Ln5/b;->b()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3, v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-class v0, Lcom/stryker/terminal/ui/term/NeoTab;

    .line 62
    .line 63
    invoke-static {v1, v0}, Lx4/m;->w0(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/stryker/terminal/ui/term/NeoTab;

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Lcom/stryker/terminal/ui/term/NeoTab;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 84
    .line 85
    .line 86
    instance-of v2, v1, Lcom/stryker/terminal/ui/term/TermTab;

    .line 87
    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    check-cast v1, Lcom/stryker/terminal/ui/term/TermTab;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/stryker/terminal/ui/term/TermTab;->resetStatus()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/stryker/terminal/App;->Companion:Lcom/stryker/terminal/App$Companion;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/stryker/terminal/App$Companion;->get()Lcom/stryker/terminal/App;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/stryker/terminal/App;->ensureInitialized()V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/stryker/terminal/component/config/NeoPreference;->isFullScreenEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x400

    .line 26
    .line 27
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget v0, Lcom/stryker/terminal/R$layout;->ui_main:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lf/q;->setContentView(I)V

    .line 33
    .line 34
    .line 35
    sget v0, Lcom/stryker/terminal/R$id;->terminal_toolbar:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "findViewById(R.id.terminal_toolbar)"

    .line 42
    .line 43
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->setToolbar(Landroidx/appcompat/widget/Toolbar;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Lf/q;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/stryker/terminal/utils/FullScreenHelper;->Companion:Lcom/stryker/terminal/utils/FullScreenHelper$Companion;

    .line 59
    .line 60
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->peekRecreating()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, p0, p1, v1}, Lcom/stryker/terminal/utils/FullScreenHelper$Companion;->injectActivity(Lf/q;ZZ)Lcom/stryker/terminal/utils/FullScreenHelper;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->fullScreenHelper:Lcom/stryker/terminal/utils/FullScreenHelper;

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    new-instance v0, Lcom/stryker/terminal/ui/term/NeoTermActivity$onCreate$1;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity$onCreate$1;-><init>(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/stryker/terminal/utils/FullScreenHelper;->setKeyBoardListener(Lcom/stryker/terminal/utils/FullScreenHelper$KeyBoardListener;)V

    .line 78
    .line 79
    .line 80
    sget p1, Lcom/stryker/terminal/R$id;->tab_switcher:I

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lf/q;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v0, "findViewById(R.id.tab_switcher)"

    .line 87
    .line 88
    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    check-cast p1, Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->setTabSwitcher(Lde/mrapp/android/tabswitcher/TabSwitcher;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    new-instance v0, Lcom/stryker/terminal/ui/term/NeoTabDecorator;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;-><init>(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->setDecorator(Lde/mrapp/android/tabswitcher/TabSwitcherDecorator;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createWindowInsetsListener()Landroidx/core/view/a0;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v1, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 117
    .line 118
    invoke-static {p1, v0}, Landroidx/core/view/q0;->u(Landroid/view/View;Landroidx/core/view/a0;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1, v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->showToolbars(Z)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroid/content/Intent;

    .line 130
    .line 131
    const-class v1, Lcom/stryker/terminal/services/NeoTermService;

    .line 132
    .line 133
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_1
    const-string p1, "fullScreenHelper"

    .line 144
    .line 145
    invoke-static {p1}, Li5/a;->g1(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/4 p1, 0x0

    .line 149
    throw p1
.end method

.method public final onCreateNewSessionEvent(Lcom/stryker/terminal/frontend/session/terminal/CreateNewSessionEvent;)V
    .locals 1
    .annotation runtime Lw5/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "createNewSessionEvent"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewSession()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Lf/q;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/stryker/terminal/R$menu;->menu_main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    new-instance v1, Lcom/stryker/terminal/ui/term/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/term/d;-><init>(Lcom/stryker/terminal/ui/term/NeoTermActivity;I)V

    invoke-static {p1, v0, v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->setupWithMenu(Lde/mrapp/android/tabswitcher/TabSwitcher;Landroid/view/Menu;Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lf/q;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/stryker/terminal/ui/term/NeoTab;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/stryker/terminal/ui/term/NeoTab;->onDestroy()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Ld1/h;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/stryker/terminal/services/NeoTermService;->getSessions()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    .line 49
    .line 50
    invoke-static {v0}, Li5/a;->m(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 54
    .line 55
    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->hideOverflowMenu()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    :goto_0
    return v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toggleSwitcher(ZZ)V

    return v1

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lf/q;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/a0;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_1

    const-string v0, "com.stryker.terminal.NEW_SESSION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->createRevealAnimation()Lde/mrapp/android/tabswitcher/Animation;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewSession(Ljava/lang/String;ZLde/mrapp/android/tabswitcher/Animation;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/stryker/terminal/R$id;->menu_item_settings:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/stryker/terminal/ui/other/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/stryker/terminal/R$id;->menu_item_new_session:I

    if-ne v0, v1, :cond_1

    const-string p1, "Stryker"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewStrykerSession(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/stryker/terminal/R$id;->menu_item_new_root_session:I

    if-ne v0, v1, :cond_2

    const-string p1, "Android SU"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addNewRootSession(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/stryker/terminal/R$id;->get_interfaces:I

    if-ne v0, v1, :cond_3

    sget-object p1, Lcom/stryker/terminal/ui/other/WirelessDialogs;->INSTANCE:Lcom/stryker/terminal/ui/other/WirelessDialogs;

    invoke-virtual {p1, p0}, Lcom/stryker/terminal/ui/other/WirelessDialogs;->showInterfaces(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/stryker/terminal/R$id;->get_usb_devices:I

    if-ne v0, v1, :cond_4

    sget-object p1, Lcom/stryker/terminal/ui/other/WirelessDialogs;->INSTANCE:Lcom/stryker/terminal/ui/other/WirelessDialogs;

    invoke-virtual {p1, p0}, Lcom/stryker/terminal/ui/other/WirelessDialogs;->showUsbDevices(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/a0;->onPause()V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/ui/term/NeoTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/ui/term/NeoTab;->onStart()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/a0;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Ld1/h;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity$onResume$1;-><init>(Lcom/stryker/terminal/ui/term/NeoTermActivity;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->addListener(Lde/mrapp/android/tabswitcher/TabSwitcherListener;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/stryker/terminal/ui/term/NeoTab;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/stryker/terminal/ui/term/NeoTab;->onResume()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "null cannot be cast to non-null type com.stryker.terminal.services.NeoTermService.NeoTermBinder"

    invoke-static {p2, p1}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;

    invoke-virtual {p2}, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;->getService()Lcom/stryker/terminal/services/NeoTermService;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->isRecreating()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->enterMain()V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->update_colors()V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->termService:Lcom/stryker/terminal/services/NeoTermService;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    sget p1, Lcom/stryker/terminal/R$string;->key_ui_fullscreen:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {p1}, Lcom/stryker/terminal/component/config/NeoPreference;->isFullScreenEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->setFullScreenMode(Z)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/stryker/terminal/R$string;->key_customization_color_scheme:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    instance-of p2, p1, Lcom/stryker/terminal/ui/term/TermTab;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/stryker/terminal/ui/term/TermTab;

    invoke-virtual {p1}, Lcom/stryker/terminal/ui/term/TermTab;->updateColorScheme()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 18

    .line 1
    invoke-super/range {p0 .. p0}, Lf/q;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lw5/e;->b()Lw5/e;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/stryker/terminal/ui/term/NeoTermActivity;

    .line 12
    .line 13
    iget-object v2, v1, Lw5/e;->h:Lw5/n;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-object v2, Lw5/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/util/List;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    goto/16 :goto_b

    .line 29
    .line 30
    :cond_0
    sget-object v3, Lw5/n;->b:[Lw5/m;

    .line 31
    .line 32
    monitor-enter v3

    .line 33
    const/4 v4, 0x0

    .line 34
    move v5, v4

    .line 35
    :goto_0
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    if-ge v5, v6, :cond_2

    .line 38
    .line 39
    :try_start_0
    sget-object v8, Lw5/n;->b:[Lw5/m;

    .line 40
    .line 41
    aget-object v9, v8, v5

    .line 42
    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    aput-object v7, v8, v5

    .line 46
    .line 47
    monitor-exit v3

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object/from16 v4, p0

    .line 51
    .line 52
    goto/16 :goto_f

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    new-instance v9, Lw5/m;

    .line 59
    .line 60
    invoke-direct {v9}, Lw5/m;-><init>()V

    .line 61
    .line 62
    .line 63
    :goto_1
    iput-object v0, v9, Lw5/m;->e:Ljava/lang/Class;

    .line 64
    .line 65
    iput-boolean v4, v9, Lw5/m;->f:Z

    .line 66
    .line 67
    :goto_2
    iget-object v3, v9, Lw5/m;->e:Ljava/lang/Class;

    .line 68
    .line 69
    if-eqz v3, :cond_b

    .line 70
    .line 71
    const/4 v5, 0x1

    .line 72
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    goto :goto_3

    .line 77
    :catchall_1
    iget-object v3, v9, Lw5/m;->e:Ljava/lang/Class;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iput-boolean v5, v9, Lw5/m;->f:Z

    .line 84
    .line 85
    :goto_3
    array-length v8, v3

    .line 86
    move v10, v4

    .line 87
    :goto_4
    if-ge v10, v8, :cond_7

    .line 88
    .line 89
    aget-object v12, v3, v10

    .line 90
    .line 91
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    and-int/lit8 v13, v11, 0x1

    .line 96
    .line 97
    if-eqz v13, :cond_6

    .line 98
    .line 99
    and-int/lit16 v11, v11, 0x1448

    .line 100
    .line 101
    if-nez v11, :cond_6

    .line 102
    .line 103
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    array-length v13, v11

    .line 108
    if-ne v13, v5, :cond_6

    .line 109
    .line 110
    const-class v13, Lw5/j;

    .line 111
    .line 112
    invoke-virtual {v12, v13}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    check-cast v13, Lw5/j;

    .line 117
    .line 118
    if-eqz v13, :cond_6

    .line 119
    .line 120
    aget-object v14, v11, v4

    .line 121
    .line 122
    iget-object v11, v9, Lw5/m;->b:Ljava/util/HashMap;

    .line 123
    .line 124
    invoke-virtual {v11, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    if-nez v15, :cond_3

    .line 129
    .line 130
    goto :goto_6

    .line 131
    :cond_3
    instance-of v5, v15, Ljava/lang/reflect/Method;

    .line 132
    .line 133
    if-eqz v5, :cond_5

    .line 134
    .line 135
    check-cast v15, Ljava/lang/reflect/Method;

    .line 136
    .line 137
    invoke-virtual {v9, v15, v14}, Lw5/m;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_4

    .line 142
    .line 143
    invoke-virtual {v11, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_5
    :goto_5
    invoke-virtual {v9, v12, v14}, Lw5/m;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_6

    .line 158
    .line 159
    :goto_6
    invoke-interface {v13}, Lw5/j;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    iget-object v15, v9, Lw5/m;->a:Ljava/util/ArrayList;

    .line 164
    .line 165
    new-instance v11, Lw5/l;

    .line 166
    .line 167
    invoke-interface {v13}, Lw5/j;->priority()I

    .line 168
    .line 169
    .line 170
    move-result v16

    .line 171
    invoke-interface {v13}, Lw5/j;->sticky()Z

    .line 172
    .line 173
    .line 174
    move-result v17

    .line 175
    move-object v13, v11

    .line 176
    move-object v6, v13

    .line 177
    move-object v13, v14

    .line 178
    move-object v14, v5

    .line 179
    move-object v5, v15

    .line 180
    move/from16 v15, v16

    .line 181
    .line 182
    move/from16 v16, v17

    .line 183
    .line 184
    invoke-direct/range {v11 .. v16}, Lw5/l;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 191
    .line 192
    const/4 v5, 0x1

    .line 193
    const/4 v6, 0x4

    .line 194
    goto :goto_4

    .line 195
    :cond_7
    iget-boolean v3, v9, Lw5/m;->f:Z

    .line 196
    .line 197
    if-eqz v3, :cond_9

    .line 198
    .line 199
    :cond_8
    :goto_7
    iput-object v7, v9, Lw5/m;->e:Ljava/lang/Class;

    .line 200
    .line 201
    goto :goto_8

    .line 202
    :cond_9
    iget-object v3, v9, Lw5/m;->e:Ljava/lang/Class;

    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    iput-object v3, v9, Lw5/m;->e:Ljava/lang/Class;

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    const-string v5, "java."

    .line 215
    .line 216
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-nez v5, :cond_8

    .line 221
    .line 222
    const-string v5, "javax."

    .line 223
    .line 224
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-nez v5, :cond_8

    .line 229
    .line 230
    const-string v5, "android."

    .line 231
    .line 232
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_a

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_a
    :goto_8
    const/4 v6, 0x4

    .line 240
    goto/16 :goto_2

    .line 241
    .line 242
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 243
    .line 244
    iget-object v5, v9, Lw5/m;->a:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 247
    .line 248
    .line 249
    iget-object v5, v9, Lw5/m;->a:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 252
    .line 253
    .line 254
    iget-object v5, v9, Lw5/m;->b:Ljava/util/HashMap;

    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 257
    .line 258
    .line 259
    iget-object v5, v9, Lw5/m;->c:Ljava/util/HashMap;

    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 262
    .line 263
    .line 264
    iget-object v5, v9, Lw5/m;->d:Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 267
    .line 268
    .line 269
    iput-object v7, v9, Lw5/m;->e:Ljava/lang/Class;

    .line 270
    .line 271
    iput-boolean v4, v9, Lw5/m;->f:Z

    .line 272
    .line 273
    sget-object v5, Lw5/n;->b:[Lw5/m;

    .line 274
    .line 275
    monitor-enter v5

    .line 276
    const/4 v6, 0x4

    .line 277
    :goto_9
    if-ge v4, v6, :cond_d

    .line 278
    .line 279
    :try_start_2
    sget-object v7, Lw5/n;->b:[Lw5/m;

    .line 280
    .line 281
    aget-object v8, v7, v4

    .line 282
    .line 283
    if-nez v8, :cond_c

    .line 284
    .line 285
    aput-object v9, v7, v4

    .line 286
    .line 287
    goto :goto_a

    .line 288
    :catchall_2
    move-exception v0

    .line 289
    move-object/from16 v4, p0

    .line 290
    .line 291
    goto :goto_e

    .line 292
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 293
    .line 294
    goto :goto_9

    .line 295
    :cond_d
    :goto_a
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 296
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v4

    .line 300
    if-nez v4, :cond_10

    .line 301
    .line 302
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    :goto_b
    monitor-enter v1

    .line 306
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_e

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Lw5/l;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 321
    .line 322
    move-object/from16 v4, p0

    .line 323
    .line 324
    :try_start_4
    invoke-virtual {v1, v4, v2}, Lw5/e;->i(Ljava/lang/Object;Lw5/l;)V

    .line 325
    .line 326
    .line 327
    goto :goto_c

    .line 328
    :catchall_3
    move-exception v0

    .line 329
    goto :goto_d

    .line 330
    :catchall_4
    move-exception v0

    .line 331
    move-object/from16 v4, p0

    .line 332
    .line 333
    goto :goto_d

    .line 334
    :cond_e
    move-object/from16 v4, p0

    .line 335
    .line 336
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Lcom/stryker/terminal/ui/term/NeoTab;

    .line 346
    .line 347
    if-eqz v0, :cond_f

    .line 348
    .line 349
    invoke-virtual {v0}, Lcom/stryker/terminal/ui/term/NeoTab;->onStart()V

    .line 350
    .line 351
    .line 352
    :cond_f
    return-void

    .line 353
    :goto_d
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 354
    throw v0

    .line 355
    :cond_10
    move-object/from16 v4, p0

    .line 356
    .line 357
    new-instance v1, Landroidx/fragment/app/u;

    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v3, "Subscriber "

    .line 362
    .line 363
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v0, " and its super classes have no public methods with the @Subscribe annotation"

    .line 370
    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw v1

    .line 382
    :goto_e
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 383
    throw v0

    .line 384
    :catchall_5
    move-exception v0

    .line 385
    goto :goto_e

    .line 386
    :goto_f
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 387
    throw v0

    .line 388
    :catchall_6
    move-exception v0

    .line 389
    goto :goto_f
.end method

.method public onStop()V
    .locals 4

    .line 1
    invoke-super {p0}, Lf/q;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1, v0}, Li5/a;->i1(II)Ln5/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {v0}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ln5/a;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    move-object v2, v0

    .line 31
    check-cast v2, Ln5/b;

    .line 32
    .line 33
    iget-boolean v2, v2, Ln5/b;->c:Z

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    move-object v2, v0

    .line 38
    check-cast v2, Ln5/b;

    .line 39
    .line 40
    invoke-virtual {v2}, Ln5/b;->b()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3, v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-class v0, Lcom/stryker/terminal/ui/term/TermTab;

    .line 57
    .line 58
    invoke-static {v1, v0}, Lx4/m;->w0(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/stryker/terminal/ui/term/TermTab;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/stryker/terminal/ui/term/TermTab;->resetAutoCompleteStatus()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/stryker/terminal/ui/term/NeoTab;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/stryker/terminal/ui/term/NeoTab;->onStop()V

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-static {}, Lw5/e;->b()Lw5/e;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Lw5/e;->j(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final onSwitchIndexedSessionEvent(Lcom/stryker/terminal/frontend/session/terminal/SwitchIndexedSessionEvent;)V
    .locals 1
    .annotation runtime Lw5/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "switchIndexedSessionEvent"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/terminal/SwitchIndexedSessionEvent;->getIndex()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTabIndex()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_0
    return-void
.end method

.method public final onSwitchSessionEvent(Lcom/stryker/terminal/frontend/session/terminal/SwitchSessionEvent;)V
    .locals 4
    .annotation runtime Lw5/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "switchSessionEvent"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/stryker/terminal/utils/RangedInt;

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTabIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Li5/a;->i1(II)Ln5/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/stryker/terminal/utils/RangedInt;-><init>(ILn5/c;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/terminal/SwitchSessionEvent;->getToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/utils/RangedInt;->inc()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/stryker/terminal/utils/RangedInt;->dec()I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->showSwitcher()V

    :cond_2
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    return-void
.end method

.method public final onTabCloseEvent(Lcom/stryker/terminal/frontend/session/terminal/TabCloseEvent;)V
    .locals 3
    .annotation runtime Lw5/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "tabCloseEvent"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/terminal/TabCloseEvent;->getTermTab()Lcom/stryker/terminal/ui/term/TermTab;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toggleSwitcher(ZZ)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->removeTab(Lde/mrapp/android/tabswitcher/Tab;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v2

    if-le v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->indexOf(Lde/mrapp/android/tabswitcher/Tab;)I

    move-result p1

    sget-object v2, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v2}, Lcom/stryker/terminal/component/config/NeoPreference;->isNextTabEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, p1, -0x1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getTab(I)Lde/mrapp/android/tabswitcher/Tab;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->switchToSession(Lde/mrapp/android/tabswitcher/Tab;)V

    :cond_3
    return-void
.end method

.method public final onTitleChangedEvent(Lcom/stryker/terminal/frontend/session/terminal/TitleChangedEvent;)V
    .locals 1
    .annotation runtime Lw5/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "titleChangedEvent"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/terminal/TitleChangedEvent;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final onToggleFullScreenEvent(Lcom/stryker/terminal/frontend/session/terminal/ToggleFullScreenEvent;)V
    .locals 1
    .annotation runtime Lw5/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "toggleFullScreenEvent"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->fullScreenHelper:Lcom/stryker/terminal/utils/FullScreenHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stryker/terminal/utils/FullScreenHelper;->getFullScreen()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->setFullScreenMode(Z)V

    return-void

    :cond_0
    const-string p1, "fullScreenHelper"

    invoke-static {p1}, Li5/a;->g1(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onToggleImeEvent(Lcom/stryker/terminal/frontend/session/terminal/ToggleImeEvent;)V
    .locals 2
    .annotation runtime Lw5/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "toggleImeEvent"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Lde/mrapp/android/tabswitcher/TabSwitcher;->isSwitcherShown()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v0}, Li5/a;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->getTabSwitcher()Lde/mrapp/android/tabswitcher/TabSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lde/mrapp/android/tabswitcher/TabSwitcher;->getSelectedTab()Lde/mrapp/android/tabswitcher/Tab;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/ui/term/NeoTab;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/ui/term/NeoTab;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public recreate()V
    .locals 3

    sget-object v0, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    const-string v1, "no_restore"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/stryker/terminal/component/config/NeoPreference;->store(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/stryker/terminal/ui/term/NeoTermActivity;->saveCurrentStatus()V

    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public final setAddSessionListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->addSessionListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final setTabSwitcher(Lde/mrapp/android/tabswitcher/TabSwitcher;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->tabSwitcher:Lde/mrapp/android/tabswitcher/TabSwitcher;

    return-void
.end method

.method public final setToolbar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/NeoTermActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public final update_colors()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/stryker/terminal/ui/term/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stryker/terminal/ui/term/e;-><init>(Lcom/stryker/terminal/ui/term/NeoTermActivity;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
