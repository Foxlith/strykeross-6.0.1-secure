.class public final Lokhttp3/internal/http2/Http2Reader$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Reader;
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
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Reader$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogger()Ljava/util/logging/Logger;
    .locals 1

    invoke-static {}, Lokhttp3/internal/http2/Http2Reader;->access$getLogger$cp()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final lengthWithoutPadding(III)I
    .locals 2

    .line 1
    and-int/lit8 p2, p2, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    :cond_0
    if-gt p3, p1, :cond_1

    .line 8
    .line 9
    sub-int/2addr p1, p3

    .line 10
    return p1

    .line 11
    :cond_1
    new-instance p2, Ljava/io/IOException;

    .line 12
    .line 13
    const-string v0, "PROTOCOL_ERROR padding "

    .line 14
    .line 15
    const-string v1, " > remaining length "

    .line 16
    .line 17
    invoke-static {v0, p3, v1, p1}, Landroid/support/v4/media/session/a;->n(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p2
.end method
