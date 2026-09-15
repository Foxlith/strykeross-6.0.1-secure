.class public final Landroidx/media/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media/c;


# direct methods
.method public constructor <init>(Landroidx/media/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media/b;->a:Landroidx/media/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media/b;->a:Landroidx/media/c;

    iget-object v1, v0, Landroidx/media/c;->d:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->b:Ln/b;

    iget-object v0, v0, Landroidx/media/c;->b:Landroidx/fragment/app/n;

    invoke-virtual {v0}, Landroidx/fragment/app/n;->b()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
