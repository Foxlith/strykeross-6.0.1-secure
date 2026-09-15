.class Lcom/stryker/terminal/MainActivity$1simpleKeyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity;->showScreenKeyboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "simpleKeyListener"
.end annotation


# instance fields
.field _parent:Lcom/stryker/terminal/MainActivity;

.field final synthetic this$0:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;Lcom/stryker/terminal/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$1simpleKeyListener;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stryker/terminal/MainActivity$1simpleKeyListener;->_parent:Lcom/stryker/terminal/MainActivity;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x52

    if-eq p2, p1, :cond_0

    const/16 p1, 0x60

    if-eq p2, p1, :cond_0

    const/16 p1, 0x61

    if-eq p2, p1, :cond_0

    const/16 p1, 0x63

    if-eq p2, p1, :cond_0

    const/16 p1, 0x64

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbc

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbd

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbe

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbf

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/stryker/terminal/MainActivity$1simpleKeyListener;->_parent:Lcom/stryker/terminal/MainActivity;

    invoke-virtual {p1}, Lcom/stryker/terminal/MainActivity;->hideScreenKeyboard()V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
