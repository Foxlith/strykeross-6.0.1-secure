.class public final Landroidx/dynamicanimation/animation/c;
.super Lf0/h;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/Choreographer;

.field public final c:Landroidx/dynamicanimation/animation/b;


# direct methods
.method public constructor <init>(Lf/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf0/h;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/dynamicanimation/animation/c;->b:Landroid/view/Choreographer;

    new-instance p1, Landroidx/dynamicanimation/animation/b;

    invoke-direct {p1, p0}, Landroidx/dynamicanimation/animation/b;-><init>(Landroidx/dynamicanimation/animation/c;)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/c;->c:Landroidx/dynamicanimation/animation/b;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/c;->c:Landroidx/dynamicanimation/animation/b;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/c;->b:Landroid/view/Choreographer;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
