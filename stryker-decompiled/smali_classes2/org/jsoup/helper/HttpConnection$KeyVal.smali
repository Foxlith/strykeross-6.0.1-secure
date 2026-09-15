.class public Lorg/jsoup/helper/HttpConnection$KeyVal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$KeyVal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyVal"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field private stream:Ljava/io/InputStream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmptyParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->key:Ljava/lang/String;

    iput-object p2, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/helper/HttpConnection$KeyVal;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/helper/HttpConnection$KeyVal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/jsoup/helper/HttpConnection$KeyVal;
    .locals 1

    .line 2
    new-instance v0, Lorg/jsoup/helper/HttpConnection$KeyVal;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/helper/HttpConnection$KeyVal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/jsoup/helper/HttpConnection$KeyVal;->inputStream(Ljava/io/InputStream;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lorg/jsoup/Connection$KeyVal;
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public hasInputStream()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public bridge synthetic inputStream(Ljava/io/InputStream;)Lorg/jsoup/Connection$KeyVal;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$KeyVal;->inputStream(Ljava/io/InputStream;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object p1

    return-object p1
.end method

.method public inputStream(Ljava/io/InputStream;)Lorg/jsoup/helper/HttpConnection$KeyVal;
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->value:Ljava/lang/String;

    const-string v1, "inputStream"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->stream:Ljava/io/InputStream;

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic key(Ljava/lang/String;)Lorg/jsoup/Connection$KeyVal;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$KeyVal;->key(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object p1

    return-object p1
.end method

.method public key(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;
    .locals 1

    .line 3
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notEmptyParam(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->key:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic value(Ljava/lang/String;)Lorg/jsoup/Connection$KeyVal;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$KeyVal;->value(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$KeyVal;
    .locals 1

    .line 3
    const-string v0, "value"

    invoke-static {p1, v0}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$KeyVal;->value:Ljava/lang/String;

    return-object p0
.end method
