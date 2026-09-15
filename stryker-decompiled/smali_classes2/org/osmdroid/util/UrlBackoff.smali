.class public Lorg/osmdroid/util/UrlBackoff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mExponentialBackoffDurationInMillisDefault:[J


# instance fields
.field private final mDelays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/osmdroid/util/Delay;",
            ">;"
        }
    .end annotation
.end field

.field private mExponentialBackoffDurationInMillis:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillisDefault:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1388
        0x3a98
        0xea60
        0x1d4c0
        0x493e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillisDefault:[J

    iput-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillis:[J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public next(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/Delay;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    new-instance v0, Lorg/osmdroid/util/Delay;

    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillis:[J

    invoke-direct {v0, v1}, Lorg/osmdroid/util/Delay;-><init>([J)V

    iget-object v2, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    invoke-virtual {v1}, Lorg/osmdroid/util/Delay;->next()J

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public remove(Ljava/lang/String;)Lorg/osmdroid/util/Delay;
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/Delay;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setExponentialBackoffDurationInMillis([J)V
    .locals 0

    iput-object p1, p0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillis:[J

    return-void
.end method

.method public shouldWait(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/Delay;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/util/Delay;->shouldWait()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
