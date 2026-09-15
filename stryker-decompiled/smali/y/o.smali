.class public abstract Ly/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final callbackFailAsync(ILandroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ly/o;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Ly/n;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Ly/n;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ly/o;->getHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lf/n0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lf/n0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract onFontRetrievalFailed(I)V
.end method

.method public abstract onFontRetrieved(Landroid/graphics/Typeface;)V
.end method
