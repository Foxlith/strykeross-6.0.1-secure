.class final Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B
    .locals 0

    return-object p3
.end method
