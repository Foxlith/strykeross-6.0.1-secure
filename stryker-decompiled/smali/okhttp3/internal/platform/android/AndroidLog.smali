.class public final Lokhttp3/internal/platform/android/AndroidLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lokhttp3/internal/SuppressSignatureCheck;
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/internal/platform/android/AndroidLog;

.field private static final MAX_LOG_LENGTH:I = 0xfa0

.field private static final configuredLoggers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private static final knownLoggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/internal/platform/android/AndroidLog;

    invoke-direct {v0}, Lokhttp3/internal/platform/android/AndroidLog;-><init>()V

    sput-object v0, Lokhttp3/internal/platform/android/AndroidLog;->INSTANCE:Lokhttp3/internal/platform/android/AndroidLog;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lokhttp3/internal/platform/android/AndroidLog;->configuredLoggers:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v1, Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "OkHttp"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "okhttp.OkHttpClient"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "okhttp.Http2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lokhttp3/internal/concurrent/TaskRunner;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "okhttp.TaskRunner"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "okhttp3.mockwebserver.MockWebServer"

    const-string v2, "okhttp.MockWebServer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lg5/i;->q0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/platform/android/AndroidLog;->knownLoggers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final enableLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Lokhttp3/internal/platform/android/AndroidLog;->configuredLoggers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0

    :cond_1
    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    sget-object p2, Lokhttp3/internal/platform/android/AndroidLogHandler;->INSTANCE:Lokhttp3/internal/platform/android/AndroidLogHandler;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    :cond_2
    return-void
.end method

.method private final loggerTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lokhttp3/internal/platform/android/AndroidLog;->knownLoggers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x17

    invoke-static {v0, p1}, Lq5/i;->S1(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final androidLog$okhttp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const-string v0, "loggerName"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/platform/android/AndroidLog;->loggerTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    if-eqz p4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_3

    const/4 v3, 0x4

    invoke-static {p3, v0, v2, v1, v3}, Lq5/h;->t1(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, p4

    :goto_1
    add-int/lit16 v4, v2, 0xfa0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v5}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-lt v4, v3, :cond_2

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final enable()V
    .locals 3

    sget-object v0, Lokhttp3/internal/platform/android/AndroidLog;->knownLoggers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lokhttp3/internal/platform/android/AndroidLog;->enableLogging(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
