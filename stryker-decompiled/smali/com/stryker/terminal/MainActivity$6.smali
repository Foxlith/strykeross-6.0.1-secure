.class Lcom/stryker/terminal/MainActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/MainActivity;->hideScreenKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/MainActivity$6;->this$0:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/stryker/terminal/DimSystemStatusBar;->get()Lcom/stryker/terminal/DimSystemStatusBar;

    move-result-object v0

    iget-object v1, p0, Lcom/stryker/terminal/MainActivity$6;->this$0:Lcom/stryker/terminal/MainActivity;

    iget-object v1, v1, Lcom/stryker/terminal/MainActivity;->_videoLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/DimSystemStatusBar;->dim(Landroid/view/View;)V

    return-void
.end method
