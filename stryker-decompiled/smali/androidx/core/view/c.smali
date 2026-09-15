.class public Landroidx/core/view/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field private final mBridge:Landroid/view/View$AccessibilityDelegate;

.field private final mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroidx/core/view/c;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/view/c;->DEFAULT_DELEGATE:Landroid/view/View$AccessibilityDelegate;

    invoke-direct {p0, v0}, Landroidx/core/view/c;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance p1, Landroidx/core/view/a;

    invoke-direct {p1, p0}, Landroidx/core/view/a;-><init>(Landroidx/core/view/c;)V

    iput-object p1, p0, Landroidx/core/view/c;->mBridge:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public static getActionList(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lh0/g;",
            ">;"
        }
    .end annotation

    const v0, 0x7f0a0612

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lh0/l;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-static {v0, p1}, Landroidx/core/view/b;->a(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lh0/l;

    invoke-direct {v0, p1}, Lh0/l;-><init>(Landroid/view/accessibility/AccessibilityNodeProvider;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBridge()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/c;->mBridge:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lh0/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 2
    .line 3
    iget-object p2, p2, Lh0/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/core/view/c;->getActionList(Landroid/view/View;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lh0/g;

    .line 19
    .line 20
    invoke-virtual {v3}, Lh0/g;->a()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-ne v5, p2, :cond_1

    .line 25
    .line 26
    iget-object v0, v3, Lh0/g;->d:Lh0/w;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v2, v3, Lh0/g;->c:Ljava/lang/Class;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_0
    new-array v3, v1, [Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    new-array v5, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Landroid/support/v4/media/session/a;->B(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    move-exception v3

    .line 52
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v5, "Failed to execute command with argument class ViewCommandArgument: "

    .line 57
    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v5, "A11yActionCompat"

    .line 63
    .line 64
    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-interface {v0, p1, v4}, Lh0/w;->perform(Landroid/view/View;Lh0/o;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    goto :goto_2

    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v0, v1

    .line 76
    :goto_2
    if-nez v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 79
    .line 80
    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/b;->b(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    :cond_3
    if-nez v0, :cond_7

    .line 85
    .line 86
    const v2, 0x7f0a0025

    .line 87
    .line 88
    .line 89
    if-ne p2, v2, :cond_7

    .line 90
    .line 91
    if-eqz p3, :cond_7

    .line 92
    .line 93
    const-string p2, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    .line 94
    .line 95
    const/4 v0, -0x1

    .line 96
    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    const p3, 0x7f0a0613

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    check-cast p3, Landroid/util/SparseArray;

    .line 108
    .line 109
    if-eqz p3, :cond_6

    .line 110
    .line 111
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 116
    .line 117
    if-eqz p2, :cond_6

    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Landroid/text/style/ClickableSpan;

    .line 124
    .line 125
    if-eqz p2, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    .line 132
    .line 133
    .line 134
    move-result-object p3

    .line 135
    instance-of v0, p3, Landroid/text/Spanned;

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    move-object v0, p3

    .line 140
    check-cast v0, Landroid/text/Spanned;

    .line 141
    .line 142
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    const-class v2, Landroid/text/style/ClickableSpan;

    .line 147
    .line 148
    invoke-interface {v0, v1, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    move-object v4, p3

    .line 153
    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 154
    .line 155
    :cond_4
    move p3, v1

    .line 156
    :goto_3
    if-eqz v4, :cond_6

    .line 157
    .line 158
    array-length v0, v4

    .line 159
    if-ge p3, v0, :cond_6

    .line 160
    .line 161
    aget-object v0, v4, p3

    .line 162
    .line 163
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 170
    .line 171
    .line 172
    const/4 v1, 0x1

    .line 173
    goto :goto_4

    .line 174
    :cond_5
    add-int/lit8 p3, p3, 0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_6
    :goto_4
    move v0, v1

    .line 178
    :cond_7
    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/c;->mOriginalDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
