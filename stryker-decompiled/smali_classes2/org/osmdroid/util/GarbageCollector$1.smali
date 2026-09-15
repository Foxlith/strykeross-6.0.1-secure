.class Lorg/osmdroid/util/GarbageCollector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/util/GarbageCollector;->gc()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/util/GarbageCollector;


# direct methods
.method public constructor <init>(Lorg/osmdroid/util/GarbageCollector;)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/util/GarbageCollector$1;->this$0:Lorg/osmdroid/util/GarbageCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/util/GarbageCollector$1;->this$0:Lorg/osmdroid/util/GarbageCollector;

    invoke-static {v1}, Lorg/osmdroid/util/GarbageCollector;->access$000(Lorg/osmdroid/util/GarbageCollector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/osmdroid/util/GarbageCollector$1;->this$0:Lorg/osmdroid/util/GarbageCollector;

    invoke-static {v1}, Lorg/osmdroid/util/GarbageCollector;->access$100(Lorg/osmdroid/util/GarbageCollector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/osmdroid/util/GarbageCollector$1;->this$0:Lorg/osmdroid/util/GarbageCollector;

    invoke-static {v2}, Lorg/osmdroid/util/GarbageCollector;->access$100(Lorg/osmdroid/util/GarbageCollector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
