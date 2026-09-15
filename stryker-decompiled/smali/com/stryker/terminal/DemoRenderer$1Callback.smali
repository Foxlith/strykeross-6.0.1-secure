.class Lcom/stryker/terminal/DemoRenderer$1Callback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/DemoRenderer;->showScreenKeyboard(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field public client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

.field public oldText:Ljava/lang/String;

.field final synthetic this$0:Lcom/stryker/terminal/DemoRenderer;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/DemoRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/DemoRenderer$1Callback;->this$0:Lcom/stryker/terminal/DemoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/stryker/terminal/DemoRenderer$1Callback;->client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    iget-object v1, p0, Lcom/stryker/terminal/DemoRenderer$1Callback;->oldText:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->showScreenKeyboard(Ljava/lang/String;)V

    return-void
.end method
