.class public final Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/completion/OnAutoCompleteListener;
.implements Lcom/stryker/terminal/component/completion/OnCandidateSelectedListener;


# instance fields
.field private final inputStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private lastCompletedIndex:I

.field private popupWindow:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

.field private terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->inputStack:Ljava/util/Stack;

    return-void
.end method

.method private final clearChars()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->inputStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->lastCompletedIndex:I

    return-void
.end method

.method private final fixLastCompletedIndex()V
    .locals 2

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->getCurrentEditingText()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->lastCompletedIndex:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->lastCompletedIndex:I

    return-void
.end method

.method private final getCurrentEditingText()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->inputStack:Ljava/util/Stack;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->inputStack:Ljava/util/Stack;

    .line 13
    .line 14
    const/16 v3, 0x20

    .line 15
    .line 16
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v2, v4}, Ljava/util/AbstractList;->lastIndexOf(Ljava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-gez v2, :cond_0

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    :cond_0
    new-instance v4, Ln5/c;

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    add-int/2addr v2, v5

    .line 31
    sub-int/2addr v1, v5

    .line 32
    invoke-direct {v4, v2, v1, v5}, Ln5/a;-><init>(III)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-static {v4}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ln5/a;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :goto_0
    move-object v4, v2

    .line 49
    check-cast v4, Ln5/b;

    .line 50
    .line 51
    iget-boolean v4, v4, Ln5/b;->c:Z

    .line 52
    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    move-object v4, v2

    .line 56
    check-cast v4, Ln5/b;

    .line 57
    .line 58
    invoke-virtual {v4}, Ln5/b;->b()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iget-object v5, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->inputStack:Ljava/util/Stack;

    .line 63
    .line 64
    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/Character;

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    move-object v5, v4

    .line 94
    check-cast v5, Ljava/lang/Character;

    .line 95
    .line 96
    if-nez v5, :cond_2

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    :goto_2
    if-nez v5, :cond_3

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eq v5, v3, :cond_4

    .line 113
    .line 114
    :goto_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_5

    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/lang/Character;

    .line 133
    .line 134
    const-string v3, "it"

    .line 135
    .line 136
    invoke-static {v2, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, "builder.toString()"

    .line 152
    .line 153
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-object v0
.end method

.method private final popChar()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->inputStack:Ljava/util/Stack;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->inputStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final pushChar(C)V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->inputStack:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final pushString(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v0, "this as java.lang.String).toCharArray()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    invoke-direct {p0, v2}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->pushChar(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final showAutoCompleteCandidates(Lcom/stryker/terminal/component/completion/CompletionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->popupWindow:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "termView.context"

    invoke-static {v2, v3}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->setOnCandidateSelectedListener(Lcom/stryker/terminal/component/completion/OnCandidateSelectedListener;)V

    iput-object v1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->popupWindow:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

    :cond_1
    invoke-virtual {p1}, Lcom/stryker/terminal/component/completion/CompletionResult;->getCandidates()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->setCandidates(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->show(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V

    return-void
.end method

.method private final triggerCompletion()V
    .locals 2

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->getCurrentEditingText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/stryker/terminal/component/completion/CompletionManager;->INSTANCE:Lcom/stryker/terminal/component/completion/CompletionManager;

    invoke-virtual {v1, v0}, Lcom/stryker/terminal/component/completion/CompletionManager;->tryCompleteFor(Ljava/lang/String;)Lcom/stryker/terminal/component/completion/CompletionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stryker/terminal/component/completion/CompletionResult;->hasResult()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/completion/CompletionResult;->markScore(I)V

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->onFinishCompletion()Z

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->showAutoCompleteCandidates(Lcom/stryker/terminal/component/completion/CompletionResult;)V

    return-void
.end method


# virtual methods
.method public final getTerminalView()Lcom/stryker/terminal/frontend/session/view/TerminalView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-object v0
.end method

.method public onCandidateSelected(Lcom/stryker/terminal/component/completion/CompletionCandidate;)V
    .locals 4

    const-string v0, "candidate"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->getCurrentSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->getCurrentEditingText()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->lastCompletedIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stryker/terminal/component/completion/CompletionCandidate;->getCompleteString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v3, v2}, Lq5/h;->u1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    if-lez v1, :cond_2

    :goto_1
    if-ge v3, v1, :cond_2

    const-string v2, "\u0008"

    invoke-virtual {v0, v2}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->popChar()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->pushString(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->inputStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    iput p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->lastCompletedIndex:I

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->triggerCompletion()V

    return-void
.end method

.method public onCleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->popupWindow:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->popupWindow:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->cleanup()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->popupWindow:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

    iput-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-void
.end method

.method public onCompletionRequired(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->pushString(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->triggerCompletion()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinishCompletion()Z
    .locals 3

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->popupWindow:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public onKeyCode(II)V
    .locals 0

    const/16 p2, 0x42

    if-eq p1, p2, :cond_1

    const/16 p2, 0x43

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->popChar()V

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->fixLastCompletedIndex()V

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->triggerCompletion()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->clearChars()V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->popupWindow:Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/completion/CandidatePopupWindow;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setTerminalView(Lcom/stryker/terminal/frontend/session/view/TerminalView;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/terminal/TermCompleteListener;->terminalView:Lcom/stryker/terminal/frontend/session/view/TerminalView;

    return-void
.end method
