.class Lorg/osmdroid/tileprovider/MapTilePreCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTilePreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTilePreCache;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTilePreCache;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTilePreCache$1;->this$0:Lorg/osmdroid/tileprovider/MapTilePreCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache$1;->this$0:Lorg/osmdroid/tileprovider/MapTilePreCache;

    invoke-static {v0}, Lorg/osmdroid/tileprovider/MapTilePreCache;->access$000(Lorg/osmdroid/tileprovider/MapTilePreCache;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTilePreCache$1;->this$0:Lorg/osmdroid/tileprovider/MapTilePreCache;

    invoke-static {v2, v0, v1}, Lorg/osmdroid/tileprovider/MapTilePreCache;->access$100(Lorg/osmdroid/tileprovider/MapTilePreCache;J)V

    goto :goto_0

    :cond_0
    return-void
.end method
