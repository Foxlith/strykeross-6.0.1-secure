.class public final Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$EXPAND_BUTTONS$1;
.super Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$EXPAND_BUTTONS$1;->this$0:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    const-string p1, "\u00b7\u00b7\u00b7"

    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$EXPAND_BUTTONS$1;->this$0:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->expandButtonPanel$default(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method
