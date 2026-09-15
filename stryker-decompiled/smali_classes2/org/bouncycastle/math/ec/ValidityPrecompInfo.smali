.class Lorg/bouncycastle/math/ec/ValidityPrecompInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompInfo;


# static fields
.field static final PRECOMP_NAME:Ljava/lang/String; = "bc_validity"


# instance fields
.field private curveEquationPassed:Z

.field private failed:Z

.field private orderPassed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return-void
.end method


# virtual methods
.method public hasCurveEquationPassed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    return v0
.end method

.method public hasFailed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    return v0
.end method

.method public hasOrderPassed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return v0
.end method

.method public reportCurveEquationPassed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->curveEquationPassed:Z

    return-void
.end method

.method public reportFailed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->failed:Z

    return-void
.end method

.method public reportOrderPassed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->orderPassed:Z

    return-void
.end method
