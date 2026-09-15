.class Lcom/stryker/terminal/DemoRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/DemoRenderer;-><init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/DemoRenderer;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/DemoRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/DemoRenderer$1;->this$0:Lcom/stryker/terminal/DemoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/stryker/terminal/DemoRenderer;->nativeClipboardChanged()V

    return-void
.end method
