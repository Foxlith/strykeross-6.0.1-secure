.class Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/operator/InputExpander;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/InputExpander;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

.field final synthetic val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->val$algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 5

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->access$000(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$1;->this$0:Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;

    invoke-static {v1}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;->access$000(Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider;)J

    move-result-wide v1

    invoke-direct {p1, v0, v1, v2}, Lorg/bouncycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object v0, p1

    :cond_0
    return-object v0
.end method
