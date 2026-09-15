.class public final synthetic Lcom/stryker/terminal/frontend/session/view/extrakey/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/b;->a:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/b;->a:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;

    invoke-static {v0, p1, p2}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;->b(Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
