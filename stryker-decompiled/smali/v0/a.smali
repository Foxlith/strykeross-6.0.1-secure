.class public abstract Lv0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroidx/lifecycle/t;)Lv0/c;
    .locals 2

    .line 1
    new-instance v0, Lv0/c;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/y0;

    invoke-interface {v1}, Landroidx/lifecycle/y0;->getViewModelStore()Landroidx/lifecycle/x0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lv0/c;-><init>(Landroidx/lifecycle/t;Landroidx/lifecycle/x0;)V

    return-object v0
.end method
