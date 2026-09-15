.class public final Landroidx/coordinatorlayout/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/a0;


# instance fields
.field public final synthetic a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/a;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/q2;)Landroidx/core/view/q2;
    .locals 0

    iget-object p1, p0, Landroidx/coordinatorlayout/widget/a;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setWindowInsets(Landroidx/core/view/q2;)Landroidx/core/view/q2;

    move-result-object p1

    return-object p1
.end method
