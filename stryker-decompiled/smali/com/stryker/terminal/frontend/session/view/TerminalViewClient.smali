.class public interface abstract Lcom/stryker/terminal/frontend/session/view/TerminalViewClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract copyModeChanged(Z)V
.end method

.method public abstract onCodePoint(IZLcom/stryker/terminal/backend/TerminalSession;)Z
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;Lcom/stryker/terminal/backend/TerminalSession;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onScale(F)F
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)V
.end method

.method public abstract readAltKey()Z
.end method

.method public abstract readControlKey()Z
.end method

.method public abstract readFnKey()Z
.end method

.method public abstract readShiftKey()Z
.end method

.method public abstract shouldBackButtonBeMappedToEscape()Z
.end method
