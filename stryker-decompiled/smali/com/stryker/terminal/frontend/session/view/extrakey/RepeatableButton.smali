.class public Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;
.super Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "buttonText"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public makeButton(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/widget/Button;
    .locals 1

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;

    invoke-direct {v0, p1, p2, p3}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton$RepeatableButtonWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method
