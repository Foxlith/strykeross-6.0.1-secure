.class public Lorg/osmdroid/tileprovider/util/Counters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String; = "osmCounters"

.field public static countOOM:I

.field public static fileCacheHit:I

.field public static fileCacheMiss:I

.field public static fileCacheOOM:I

.field public static fileCacheSaveErrors:I

.field private static final sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static tileDownloadErrors:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/util/Counters;->sMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/osmdroid/tileprovider/util/Counters;->sMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static increment(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/osmdroid/tileprovider/util/Counters;->sMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static printToLogcat()V
    .locals 0

    return-void
.end method

.method public static reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->countOOM:I

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->tileDownloadErrors:I

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheMiss:I

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheOOM:I

    sput v0, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheHit:I

    return-void
.end method

.method public static reset(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/osmdroid/tileprovider/util/Counters;->sMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
