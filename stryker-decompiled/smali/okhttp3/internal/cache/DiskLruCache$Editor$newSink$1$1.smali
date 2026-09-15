.class final Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/l;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;

.field final synthetic this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;->invoke(Ljava/io/IOException;)V

    sget-object p1, Lw4/h;->a:Lw4/h;

    return-object p1
.end method

.method public final invoke(Ljava/io/IOException;)V
    .locals 1

    .line 2
    const-string v0, "it"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1;->this$1:Lokhttp3/internal/cache/DiskLruCache$Editor;

    monitor-enter p1

    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->detach$okhttp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method
