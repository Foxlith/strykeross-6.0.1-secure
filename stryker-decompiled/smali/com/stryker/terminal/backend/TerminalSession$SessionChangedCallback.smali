.class public interface abstract Lcom/stryker/terminal/backend/TerminalSession$SessionChangedCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/backend/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SessionChangedCallback"
.end annotation


# virtual methods
.method public abstract onBell(Lcom/stryker/terminal/backend/TerminalSession;)V
.end method

.method public abstract onClipboardText(Lcom/stryker/terminal/backend/TerminalSession;Ljava/lang/String;)V
.end method

.method public abstract onColorsChanged(Lcom/stryker/terminal/backend/TerminalSession;)V
.end method

.method public abstract onSessionFinished(Lcom/stryker/terminal/backend/TerminalSession;)V
.end method

.method public abstract onTextChanged(Lcom/stryker/terminal/backend/TerminalSession;)V
.end method

.method public abstract onTitleChanged(Lcom/stryker/terminal/backend/TerminalSession;)V
.end method
