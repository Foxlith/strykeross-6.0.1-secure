.class Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentOutputStream"
.end annotation


# instance fields
.field private final backing:Ljava/io/OutputStream;

.field private final main:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->this$0:Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->backing:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$ContentOutputStream;->main:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
