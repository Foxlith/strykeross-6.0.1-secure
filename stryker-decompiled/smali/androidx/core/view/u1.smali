.class public abstract Landroidx/core/view/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISPATCH_MODE_CONTINUE_ON_SUBTREE:I = 0x1

.field public static final DISPATCH_MODE_STOP:I


# instance fields
.field mDispachedInsets:Landroid/view/WindowInsets;

.field private final mDispatchMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/u1;->mDispatchMode:I

    return-void
.end method


# virtual methods
.method public final getDispatchMode()I
    .locals 1

    iget v0, p0, Landroidx/core/view/u1;->mDispatchMode:I

    return v0
.end method

.method public abstract onEnd(Landroidx/core/view/d2;)V
.end method

.method public abstract onPrepare(Landroidx/core/view/d2;)V
.end method

.method public abstract onProgress(Landroidx/core/view/q2;Ljava/util/List;)Landroidx/core/view/q2;
.end method

.method public abstract onStart(Landroidx/core/view/d2;Landroidx/core/view/t1;)Landroidx/core/view/t1;
.end method
