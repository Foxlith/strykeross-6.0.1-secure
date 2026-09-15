.class final Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpgrade$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->executeAptUpgrade()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lj5/l;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/ui/pm/PackageManagerActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpgrade$1;->this$0:Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lw4/e;

    .line 1
    iget-object p1, p1, Lw4/e;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpgrade$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lw4/h;->a:Lw4/h;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpgrade$1;->this$0:Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    .line 3
    instance-of v1, p1, Lw4/d;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    const-string v1, "upgrade"

    const-string p1, "-y"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpgrade$1$1$1;

    invoke-direct {v4, v0}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity$executeAptUpgrade$1$1$1;-><init>(Lcom/stryker/terminal/ui/pm/PackageManagerActivity;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stryker/terminal/utils/UtilsKt;->runApt$default(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLj5/l;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
