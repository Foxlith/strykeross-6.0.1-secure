.class Lcom/stryker/terminal/DemoRenderer$2Callback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/DemoRenderer;->hideScreenKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field public client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

.field final synthetic this$0:Lcom/stryker/terminal/DemoRenderer;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/DemoRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/DemoRenderer$2Callback;->this$0:Lcom/stryker/terminal/DemoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/DemoRenderer$2Callback;->client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    invoke-interface {v0}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->hideScreenKeyboard()V

    return-void
.end method
