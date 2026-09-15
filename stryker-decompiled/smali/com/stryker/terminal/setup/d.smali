.class public final synthetic Lcom/stryker/terminal/setup/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/setup/SetupThread;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/setup/SetupThread;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/setup/d;->a:Lcom/stryker/terminal/setup/SetupThread;

    iput-object p2, p0, Lcom/stryker/terminal/setup/d;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/setup/d;->a:Lcom/stryker/terminal/setup/SetupThread;

    iget-object v1, p0, Lcom/stryker/terminal/setup/d;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/stryker/terminal/setup/SetupThread;->d(Lcom/stryker/terminal/setup/SetupThread;Ljava/lang/Exception;)V

    return-void
.end method
