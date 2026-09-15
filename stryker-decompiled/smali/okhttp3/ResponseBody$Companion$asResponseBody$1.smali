.class public final Lokhttp3/ResponseBody$Companion$asResponseBody$1;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/ResponseBody$Companion;->create(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $contentLength:J

.field final synthetic $contentType:Lokhttp3/MediaType;

.field final synthetic $this_asResponseBody:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$contentType:Lokhttp3/MediaType;

    iput-wide p2, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$contentLength:J

    iput-object p4, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$this_asResponseBody:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->$this_asResponseBody:Lokio/BufferedSource;

    return-object v0
.end method
