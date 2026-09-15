.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getCleaningAction()Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$4;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgressModulo()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public preCheck()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tileAction(J)Z
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$4;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->deleteTile(J)Z

    move-result p1

    return p1
.end method
