.class public final Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final solveString(Ljava/lang/String;)Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;
    .locals 6

    .line 1
    const-string v0, "keyString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;-><init>(Lkotlin/jvm/internal/f;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v2, v1, [C

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/16 v4, 0x20

    .line 17
    .line 18
    aput-char v4, v2, v3

    .line 19
    .line 20
    invoke-static {p1, v2}, Lq5/h;->H1(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    const/16 v4, 0x3c

    .line 41
    .line 42
    invoke-static {v2, v4}, Lq5/h;->L1(Ljava/lang/CharSequence;C)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-lez v4, :cond_0

    .line 53
    .line 54
    invoke-static {v2}, Lq5/h;->q1(Ljava/lang/CharSequence;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/16 v5, 0x3e

    .line 63
    .line 64
    invoke-static {v4, v5, v3}, Li5/a;->K(CCZ)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_0

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    sub-int/2addr v4, v1

    .line 75
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 80
    .line 81
    invoke-static {v2, v4}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/CombinedSequence;->getKeys()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    return-object v0
.end method
