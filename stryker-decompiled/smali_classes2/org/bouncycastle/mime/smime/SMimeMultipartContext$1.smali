.class Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/mime/MimeContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->createContext(I)Lorg/bouncycastle/mime/MimeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

.field final synthetic val$partNo:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/mime/smime/SMimeMultipartContext;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->this$0:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    iput p2, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->val$partNo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4

    iget v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->val$partNo:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->this$0:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-virtual {v0}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->getDigestOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/mime/Headers;->dumpHeaders(Ljava/io/OutputStream;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    new-instance v1, Lorg/bouncycastle/util/io/TeeInputStream;

    new-instance v2, Lorg/bouncycastle/mime/CanonicalOutputStream;

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext$1;->this$0:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-static {v3}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->access$000(Lorg/bouncycastle/mime/smime/SMimeMultipartContext;)Lorg/bouncycastle/mime/smime/SMimeParserContext;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Lorg/bouncycastle/mime/CanonicalOutputStream;-><init>(Lorg/bouncycastle/mime/smime/SMimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/OutputStream;)V

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-object v1

    :cond_0
    return-object p2
.end method
