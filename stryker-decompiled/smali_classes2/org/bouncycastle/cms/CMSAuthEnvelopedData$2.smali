.class Lorg/bouncycastle/cms/CMSAuthEnvelopedData$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/AuthAttributesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$2;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthAttributes()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$2;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->access$100(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0
.end method

.method public isAead()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
