.class public abstract Landroidx/media/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/d;
.implements Landroidx/media/r;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Landroidx/media/p;

.field public c:Landroid/os/Messenger;

.field public final synthetic d:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media/f;->d:Landroidx/media/MediaBrowserServiceCompat;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media/f;->a:Ljava/util/ArrayList;

    return-void
.end method
