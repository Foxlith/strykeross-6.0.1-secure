.class Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->val$location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->access$000(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "#onLocationChanged"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;->this$0:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->access$000(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method
