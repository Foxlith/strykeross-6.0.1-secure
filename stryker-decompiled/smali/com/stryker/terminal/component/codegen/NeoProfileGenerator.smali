.class public final Lcom/stryker/terminal/component/codegen/NeoProfileGenerator;
.super Lcom/stryker/terminal/component/codegen/CodeGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/component/codegen/CodeGenParameter;)V
    .locals 1

    const-string v0, "parameter"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/stryker/terminal/component/codegen/CodeGenerator;-><init>(Lcom/stryker/terminal/component/codegen/CodeGenParameter;)V

    return-void
.end method


# virtual methods
.method public generateCode(Lcom/stryker/terminal/component/codegen/CodeGenObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "codeGenObject"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public getGeneratorName()Ljava/lang/String;
    .locals 1

    const-string v0, "NeoProfile-Generator"

    return-object v0
.end method
