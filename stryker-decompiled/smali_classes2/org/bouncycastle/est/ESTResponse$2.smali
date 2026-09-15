.class Lorg/bouncycastle/est/ESTResponse$2;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/ESTResponse;->wrapWithCounter(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/ESTResponse;

.field final synthetic val$absoluteReadLimit:Ljava/lang/Long;

.field final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/est/ESTResponse;Ljava/io/InputStream;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    iput-object p2, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$in:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$absoluteReadLimit:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v0}, Lorg/bouncycastle/est/ESTResponse;->access$200(Lorg/bouncycastle/est/ESTResponse;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v0}, Lorg/bouncycastle/est/ESTResponse;->access$200(Lorg/bouncycastle/est/ESTResponse;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v2}, Lorg/bouncycastle/est/ESTResponse;->access$100(Lorg/bouncycastle/est/ESTResponse;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stream closed before limit fully read, Read: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v2}, Lorg/bouncycastle/est/ESTResponse;->access$100(Lorg/bouncycastle/est/ESTResponse;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ContentLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v2}, Lorg/bouncycastle/est/ESTResponse;->access$200(Lorg/bouncycastle/est/ESTResponse;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed with extra content in pipe that exceeds content length."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v1}, Lorg/bouncycastle/est/ESTResponse;->access$108(Lorg/bouncycastle/est/ESTResponse;)J

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$absoluteReadLimit:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse$2;->this$0:Lorg/bouncycastle/est/ESTResponse;

    invoke-static {v1}, Lorg/bouncycastle/est/ESTResponse;->access$100(Lorg/bouncycastle/est/ESTResponse;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Absolute Read Limit exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse$2;->val$absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v0
.end method
