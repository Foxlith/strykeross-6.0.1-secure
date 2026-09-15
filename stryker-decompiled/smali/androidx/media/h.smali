.class public Landroidx/media/h;
.super Landroidx/media/g;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/h;->f:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroidx/media/g;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media/v;->a:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    new-instance v0, Landroidx/media/u;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media/h;->f:Landroidx/media/MediaBrowserServiceCompat;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Landroidx/media/p;-><init>(Landroidx/media/MediaBrowserServiceCompat;Landroidx/media/r;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media/f;->b:Landroidx/media/p;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
