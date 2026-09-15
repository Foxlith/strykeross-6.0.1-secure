.class public final Lokhttp3/Protocol$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/Protocol$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Lokhttp3/Protocol;
    .locals 2

    const-string v0, "protocol"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-static {v0}, Lokhttp3/Protocol;->access$getProtocol$p(Lokhttp3/Protocol;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v0}, Lokhttp3/Protocol;->access$getProtocol$p(Lokhttp3/Protocol;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-static {v0}, Lokhttp3/Protocol;->access$getProtocol$p(Lokhttp3/Protocol;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    invoke-static {v0}, Lokhttp3/Protocol;->access$getProtocol$p(Lokhttp3/Protocol;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-static {v0}, Lokhttp3/Protocol;->access$getProtocol$p(Lokhttp3/Protocol;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lokhttp3/Protocol;->QUIC:Lokhttp3/Protocol;

    invoke-static {v0}, Lokhttp3/Protocol;->access$getProtocol$p(Lokhttp3/Protocol;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    return-object v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected protocol: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
