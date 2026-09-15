.class public final Lcom/stryker/terminal/component/session/XSessionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private audioThread:Lcom/stryker/terminal/NeoAudioThread;

.field private client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

.field private glView:Lcom/stryker/terminal/NeoGLView;

.field private isPaused:Z

.field private keyboardWithoutTextInputShown:Z

.field private screenKeyboard:Landroid/view/View;

.field private screenKeyboardHintMessage:Ljava/lang/String;

.field private textInput:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private videoLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->textInput:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final getAudioThread()Lcom/stryker/terminal/NeoAudioThread;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->audioThread:Lcom/stryker/terminal/NeoAudioThread;

    return-object v0
.end method

.method public final getClient()Lcom/stryker/terminal/xorg/NeoXorgViewClient;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    return-object v0
.end method

.method public final getGlView()Lcom/stryker/terminal/NeoGLView;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->glView:Lcom/stryker/terminal/NeoGLView;

    return-object v0
.end method

.method public final getKeyboardWithoutTextInputShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->keyboardWithoutTextInputShown:Z

    return v0
.end method

.method public final getScreenKeyboard()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->screenKeyboard:Landroid/view/View;

    return-object v0
.end method

.method public final getScreenKeyboardHintMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->screenKeyboardHintMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextInput()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->textInput:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final getVideoLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->videoLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stryker/terminal/component/session/XSessionData;->isPaused:Z

    return v0
.end method

.method public final setAudioThread(Lcom/stryker/terminal/NeoAudioThread;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSessionData;->audioThread:Lcom/stryker/terminal/NeoAudioThread;

    return-void
.end method

.method public final setClient(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSessionData;->client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    return-void
.end method

.method public final setGlView(Lcom/stryker/terminal/NeoGLView;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSessionData;->glView:Lcom/stryker/terminal/NeoGLView;

    return-void
.end method

.method public final setKeyboardWithoutTextInputShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/XSessionData;->keyboardWithoutTextInputShown:Z

    return-void
.end method

.method public final setPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/component/session/XSessionData;->isPaused:Z

    return-void
.end method

.method public final setScreenKeyboard(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSessionData;->screenKeyboard:Landroid/view/View;

    return-void
.end method

.method public final setScreenKeyboardHintMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSessionData;->screenKeyboardHintMessage:Ljava/lang/String;

    return-void
.end method

.method public final setTextInput(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSessionData;->textInput:Ljava/util/LinkedList;

    return-void
.end method

.method public final setVideoLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSessionData;->videoLayout:Landroid/widget/FrameLayout;

    return-void
.end method
