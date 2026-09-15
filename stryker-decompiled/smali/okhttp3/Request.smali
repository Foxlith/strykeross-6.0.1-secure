.class public final Lokhttp3/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Request$Builder;
    }
.end annotation


# instance fields
.field private final body:Lokhttp3/RequestBody;

.field private final headers:Lokhttp3/Headers;

.field private lazyCacheControl:Lokhttp3/CacheControl;

.field private final method:Ljava/lang/String;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/RequestBody;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/lang/String;",
            "Lokhttp3/Headers;",
            "Lokhttp3/RequestBody;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p3, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p5, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    iput-object p2, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    iput-object p4, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    iput-object p5, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final -deprecated_body()Lokhttp3/RequestBody;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public final -deprecated_cacheControl()Lokhttp3/CacheControl;
    .locals 1

    invoke-virtual {p0}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    return-object v0
.end method

.method public final -deprecated_headers()Lokhttp3/Headers;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final -deprecated_method()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final -deprecated_url()Lokhttp3/HttpUrl;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public final body()Lokhttp3/RequestBody;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request;->body:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public final cacheControl()Lokhttp3/CacheControl;
    .locals 2

    iget-object v0, p0, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    if-nez v0, :cond_0

    sget-object v0, Lokhttp3/CacheControl;->Companion:Lokhttp3/CacheControl$Companion;

    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, v1}, Lokhttp3/CacheControl$Companion;->parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Request;->lazyCacheControl:Lokhttp3/CacheControl;

    :cond_0
    return-object v0
.end method

.method public final getTags$okhttp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "name"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final headers()Lokhttp3/Headers;
    .locals 1

    .line 2
    iget-object v0, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    return-object v0
.end method

.method public final isHttps()Z
    .locals 1

    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public final method()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final newBuilder()Lokhttp3/Request$Builder;
    .locals 1

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0, p0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    return-object v0
.end method

.method public final tag()Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final tag(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 2
    const-string v0, "type"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Request{method="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", url="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 24
    .line 25
    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    const-string v1, ", headers=["

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lokhttp3/Request;->headers:Lokhttp3/Headers;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    add-int/lit8 v4, v2, 0x1

    .line 54
    .line 55
    if-ltz v2, :cond_1

    .line 56
    .line 57
    check-cast v3, Lw4/c;

    .line 58
    .line 59
    iget-object v5, v3, Lw4/c;->a:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v5, Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, v3, Lw4/c;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v3, Ljava/lang/String;

    .line 66
    .line 67
    if-lez v2, :cond_0

    .line 68
    .line 69
    const-string v2, ", "

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 v2, 0x3a

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    move v2, v4

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-static {}, Lv1/f;->V()V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    throw v0

    .line 92
    :cond_2
    const/16 v1, 0x5d

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    :cond_3
    iget-object v1, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    .line 98
    .line 99
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    xor-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    const-string v1, ", tags="

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lokhttp3/Request;->tags:Ljava/util/Map;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :cond_4
    const/16 v1, 0x7d

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "StringBuilder().apply(builderAction).toString()"

    .line 127
    .line 128
    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object v0
.end method

.method public final url()Lokhttp3/HttpUrl;
    .locals 1

    iget-object v0, p0, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method
