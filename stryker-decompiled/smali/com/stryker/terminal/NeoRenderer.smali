.class public Lcom/stryker/terminal/NeoRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callNativeTextInput(II)V
    .locals 0

    invoke-static {p0, p1}, Lcom/stryker/terminal/DemoRenderer;->nativeTextInput(II)V

    return-void
.end method

.method public static callNativeTextInputFinished()V
    .locals 0

    invoke-static {}, Lcom/stryker/terminal/DemoRenderer;->nativeTextInputFinished()V

    return-void
.end method
