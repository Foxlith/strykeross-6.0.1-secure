.class public final synthetic Lcom/stryker/terminal/setup/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/setup/SetupThread;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/setup/SetupThread;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/setup/b;->a:Lcom/stryker/terminal/setup/SetupThread;

    iput p2, p0, Lcom/stryker/terminal/setup/b;->b:I

    iput p3, p0, Lcom/stryker/terminal/setup/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/stryker/terminal/setup/b;->b:I

    iget v1, p0, Lcom/stryker/terminal/setup/b;->c:I

    iget-object v2, p0, Lcom/stryker/terminal/setup/b;->a:Lcom/stryker/terminal/setup/SetupThread;

    invoke-static {v2, v0, v1}, Lcom/stryker/terminal/setup/SetupThread;->c(Lcom/stryker/terminal/setup/SetupThread;II)V

    return-void
.end method
