.class public abstract Landroidx/vectordrawable/graphics/drawable/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;


# virtual methods
.method public getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/c;->mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/vectordrawable/graphics/drawable/b;

    invoke-direct {v0, p0}, Landroidx/vectordrawable/graphics/drawable/b;-><init>(Landroidx/vectordrawable/graphics/drawable/c;)V

    iput-object v0, p0, Landroidx/vectordrawable/graphics/drawable/c;->mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/c;->mPlatformCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    return-object v0
.end method

.method public abstract onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
