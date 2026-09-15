.class Lorg/bouncycastle/est/CTEBase64InputStream$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/CTEBase64InputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/est/CTEBase64InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/CTEBase64InputStream$1;->this$0:Lorg/bouncycastle/est/CTEBase64InputStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream$1;->this$0:Lorg/bouncycastle/est/CTEBase64InputStream;

    iget-object v1, v0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    iget v2, v0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    return-void
.end method
