.class public final Landroidx/appcompat/widget/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final synthetic b:Landroidx/appcompat/widget/x0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/x0;Landroidx/appcompat/widget/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/w0;->b:Landroidx/appcompat/widget/x0;

    iput-object p2, p0, Landroidx/appcompat/widget/w0;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/w0;->b:Landroidx/appcompat/widget/x0;

    iget-object v0, v0, Landroidx/appcompat/widget/x0;->H:Landroidx/appcompat/widget/a1;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/w0;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
