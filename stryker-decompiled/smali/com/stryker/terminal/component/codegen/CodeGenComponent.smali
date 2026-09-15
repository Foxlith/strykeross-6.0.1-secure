.class public final Lcom/stryker/terminal/component/codegen/CodeGenComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/stryker/terminal/component/NeoComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newGenerator(Lcom/stryker/terminal/component/codegen/CodeGenObject;)Lcom/stryker/terminal/component/codegen/CodeGenerator;
    .locals 1

    const-string v0, "codeObject"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stryker/terminal/component/codegen/CodeGenParameter;

    invoke-direct {v0}, Lcom/stryker/terminal/component/codegen/CodeGenParameter;-><init>()V

    invoke-interface {p1, v0}, Lcom/stryker/terminal/component/codegen/CodeGenObject;->getCodeGenerator(Lcom/stryker/terminal/component/codegen/CodeGenParameter;)Lcom/stryker/terminal/component/codegen/CodeGenerator;

    move-result-object p1

    return-object p1
.end method

.method public onServiceDestroy()V
    .locals 0

    return-void
.end method

.method public onServiceInit()V
    .locals 0

    return-void
.end method

.method public onServiceObtained()V
    .locals 0

    return-void
.end method
