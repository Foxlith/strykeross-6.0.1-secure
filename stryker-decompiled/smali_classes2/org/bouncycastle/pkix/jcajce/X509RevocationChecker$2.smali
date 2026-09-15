.class Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Lorg/bouncycastle/util/Store;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Selector<",
        "Ljava/security/cert/CRL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;

.field final synthetic val$issuerList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;->this$0:Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;->val$issuerList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/security/cert/CRL;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;->match(Ljava/security/cert/CRL;)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 2

    .line 2
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;->val$issuerList:Ljava/util/List;

    check-cast p1, Ljava/security/cert/X509CRL;

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method
