.class final Lorg/bouncycastle/crypto/ec/CustomNamedCurves$8;
.super Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/ec/CustomNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    const/4 v5, 0x0

    new-instance v0, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "fe0e87005b4e83761908c5131d552a850b3f58b749c37cf5b84d6768"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "60dcd2104c4cbc0be6eeefc2bdd610739ec34e317f9b33046c9e4788"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/math/BigInteger;

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "6b8cf07d4ca75c88957d9d670591"

    invoke-direct {v8, v9, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v10, 0x0

    aput-object v8, v7, v10

    new-instance v8, Ljava/math/BigInteger;

    const-string v11, "-b8adf1378a6eb73409fa6c9c637d"

    invoke-direct {v8, v11, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x1

    aput-object v8, v7, v11

    new-array v8, v6, [Ljava/math/BigInteger;

    new-instance v6, Ljava/math/BigInteger;

    const-string v12, "1243ae1b4d71613bc9f780a03690e"

    invoke-direct {v6, v12, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v8, v10

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v9, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v6, v8, v11

    new-instance v9, Ljava/math/BigInteger;

    const-string v6, "6b8cf07d4ca75c88957d9d67059037a4"

    invoke-direct {v9, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v6, "b8adf1378a6eb73409fa6c9c637ba7f5"

    invoke-direct {v10, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v11, 0xf0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2, v4}, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224K1Curve;-><init>()V

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->access$200(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    const-string v0, "04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5"

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->access$100(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    new-instance v6, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
