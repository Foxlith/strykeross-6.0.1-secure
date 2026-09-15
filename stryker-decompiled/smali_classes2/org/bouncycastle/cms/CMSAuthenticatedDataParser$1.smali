.class Lorg/bouncycastle/cms/CMSAuthenticatedDataParser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/AuthAttributesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser$1;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser$1;->this$0:Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;->access$000(Lorg/bouncycastle/cms/CMSAuthenticatedDataParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t parse authenticated attributes!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAead()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
