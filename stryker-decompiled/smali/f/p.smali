.class public final Lf/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b;


# instance fields
.field public final synthetic a:Lf/q;


# direct methods
.method public constructor <init>(Lf/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/p;->a:Lf/q;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/p;->a:Lf/q;

    invoke-virtual {p1}, Lf/q;->getDelegate()Lf/u;

    move-result-object v0

    invoke-virtual {v0}, Lf/u;->a()V

    invoke-virtual {p1}, Landroidx/activity/h;->getSavedStateRegistry()Lb1/d;

    move-result-object p1

    const-string v1, "androidx:appcompat"

    invoke-virtual {p1, v1}, Lb1/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v0}, Lf/u;->d()V

    return-void
.end method
