.class Lorg/bouncycastle/cert/path/validations/CRLValidation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cert/path/validations/CRLValidation;->validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cert/path/validations/CRLValidation;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/path/validations/CRLValidation;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation$1;->this$0:Lorg/bouncycastle/cert/path/validations/CRLValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CRLHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation$1;->this$0:Lorg/bouncycastle/cert/path/validations/CRLValidation;

    invoke-static {v0}, Lorg/bouncycastle/cert/path/validations/CRLValidation;->access$000(Lorg/bouncycastle/cert/path/validations/CRLValidation;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
