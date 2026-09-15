.class final Lcom/stryker/terminal/ui/other/SetupActivity$executeAptUpgrade$1;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lj5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/ui/other/SetupActivity;->executeAptUpgrade()V
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
.field final synthetic this$0:Lcom/stryker/terminal/ui/other/SetupActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/ui/other/SetupActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/ui/other/SetupActivity$executeAptUpgrade$1;->this$0:Lcom/stryker/terminal/ui/other/SetupActivity;

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
    invoke-virtual {p0, p1}, Lcom/stryker/terminal/ui/other/SetupActivity$executeAptUpgrade$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lw4/h;->a:Lw4/h;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/ui/other/SetupActivity$executeAptUpgrade$1;->this$0:Lcom/stryker/terminal/ui/other/SetupActivity;

    .line 3
    instance-of v1, p1, Lw4/d;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
