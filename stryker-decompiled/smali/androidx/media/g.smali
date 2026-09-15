.class public Landroidx/media/g;
.super Landroidx/media/f;
.source "SourceFile"

# interfaces
.implements Landroidx/media/t;


# instance fields
.field public final synthetic e:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/g;->e:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroidx/media/f;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media/s;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media/g;->e:Landroidx/media/MediaBrowserServiceCompat;

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Landroidx/media/p;-><init>(Landroidx/media/MediaBrowserServiceCompat;Landroidx/media/r;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media/f;->b:Landroidx/media/p;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
