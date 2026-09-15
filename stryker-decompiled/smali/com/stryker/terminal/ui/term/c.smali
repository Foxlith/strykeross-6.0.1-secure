.class public final synthetic Lcom/stryker/terminal/ui/term/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Lcom/stryker/terminal/component/session/XSessionData;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;Lcom/stryker/terminal/component/session/XSessionData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/ui/term/c;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/stryker/terminal/ui/term/c;->b:Lcom/stryker/terminal/component/session/XSessionData;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/ui/term/c;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/stryker/terminal/ui/term/c;->b:Lcom/stryker/terminal/component/session/XSessionData;

    invoke-static {v0, v1}, Lcom/stryker/terminal/ui/term/NeoTabDecorator;->b(Landroid/widget/FrameLayout;Lcom/stryker/terminal/component/session/XSessionData;)V

    return-void
.end method
