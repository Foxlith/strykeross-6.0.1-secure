.class public abstract Lcom/stryker/terminal/component/codegen/CodeGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/component/codegen/CodeGenParameter;)V
    .locals 1

    const-string v0, "parameter"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generateCode(Lcom/stryker/terminal/component/codegen/CodeGenObject;)Ljava/lang/String;
.end method

.method public abstract getGeneratorName()Ljava/lang/String;
.end method
