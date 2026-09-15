.class public final Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;
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
    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNORMAL_TEXT_COLOR()I
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->access$getNORMAL_TEXT_COLOR$cp()I

    move-result v0

    return v0
.end method

.method public final getSELECTED_TEXT_COLOR()I
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->access$getSELECTED_TEXT_COLOR$cp()I

    move-result v0

    return v0
.end method

.method public final sendKey(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyName"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    const/16 v3, 0x15

    const/16 v4, 0x16

    const/4 v5, 0x0

    const-string v6, ""

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "F12"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0x8e

    :cond_1
    :goto_0
    move-object p2, v6

    goto/16 :goto_3

    :pswitch_1
    const-string v0, "F11"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0x8d

    goto :goto_0

    :pswitch_2
    const-string v0, "F10"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x8c

    goto :goto_0

    :pswitch_3
    const-string v0, "F9"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0x8b

    goto :goto_0

    :pswitch_4
    const-string v0, "F8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0x8a

    goto :goto_0

    :pswitch_5
    const-string v0, "F7"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0x89

    goto :goto_0

    :pswitch_6
    const-string v0, "F6"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0x88

    goto :goto_0

    :pswitch_7
    const-string v0, "F5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v1, 0x87

    goto :goto_0

    :pswitch_8
    const-string v0, "F4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v1, 0x86

    goto :goto_0

    :pswitch_9
    const-string v0, "F3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v1, 0x85

    goto :goto_0

    :pswitch_a
    const-string v0, "F2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0x84

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "F1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v1, 0x83

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_2

    :cond_d
    move v1, v4

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "Enter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v1, 0x42

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "PgUp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v1, 0x5c

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "PgDn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v1, 0x5d

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_2

    :cond_11
    move v1, v3

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "Home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v1, 0x7a

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "Down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_2

    :cond_13
    move v1, v2

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "Tab"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v1, 0x3d

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "Esc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v1, 0x6f

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "End"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v1, 0x7b

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "Del"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_2

    :cond_17
    const/16 v1, 0x43

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "\u25c0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2

    :sswitch_c
    const-string v0, "\u25bc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2

    :sswitch_d
    const-string v0, "\u25b6"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :sswitch_e
    const-string v0, "\u25b2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :sswitch_f
    const-string v0, "\u2015"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_2

    :cond_18
    const-string p2, "-"

    :goto_1
    move v1, v5

    goto :goto_3

    :sswitch_10
    const-string v0, "Up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :sswitch_11
    const-string v0, "Fn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_2

    :cond_19
    const/16 v1, 0x77

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2

    :cond_1a
    const/16 v1, 0x4c

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "LShift"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :goto_2
    goto :goto_1

    :cond_1b
    const/16 v1, 0x3b

    goto/16 :goto_0

    :goto_3
    if-lez v1, :cond_1c

    new-instance p2, Landroid/view/KeyEvent;

    invoke-direct {p2, v5, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance p2, Landroid/view/KeyEvent;

    const/4 v0, 0x1

    invoke-direct {p2, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_4

    :cond_1c
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1d

    sget v0, Lcom/stryker/terminal/R$id;->terminal_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/frontend/session/view/TerminalView;

    invoke-virtual {p1}, Lcom/stryker/terminal/frontend/session/view/TerminalView;->getCurrentSession()Lcom/stryker/terminal/backend/TerminalSession;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1, p2}, Lcom/stryker/terminal/backend/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_1d
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x798d346a -> :sswitch_13
        0x2f -> :sswitch_12
        0x8e8 -> :sswitch_11
        0xabb -> :sswitch_10
        0x2015 -> :sswitch_f
        0x25b2 -> :sswitch_e
        0x25b6 -> :sswitch_d
        0x25bc -> :sswitch_c
        0x25c0 -> :sswitch_b
        0x10beb -> :sswitch_a
        0x110bb -> :sswitch_9
        0x11155 -> :sswitch_8
        0x14775 -> :sswitch_7
        0x2098c2 -> :sswitch_6
        0x2268ff -> :sswitch_5
        0x241427 -> :sswitch_4
        0x25e901 -> :sswitch_3
        0x25eb12 -> :sswitch_2
        0x40016b8 -> :sswitch_1
        0x4b4d1fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8ab
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10ce5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setNORMAL_TEXT_COLOR(I)V
    .locals 0

    invoke-static {p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->access$setNORMAL_TEXT_COLOR$cp(I)V

    return-void
.end method

.method public final setSELECTED_TEXT_COLOR(I)V
    .locals 0

    invoke-static {p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->access$setSELECTED_TEXT_COLOR$cp(I)V

    return-void
.end method
