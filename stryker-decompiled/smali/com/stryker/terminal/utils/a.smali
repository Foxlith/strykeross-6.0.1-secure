.class public final synthetic Lcom/stryker/terminal/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/utils/FullScreenHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/utils/FullScreenHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/utils/a;->a:Lcom/stryker/terminal/utils/FullScreenHelper;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/utils/a;->a:Lcom/stryker/terminal/utils/FullScreenHelper;

    invoke-static {v0}, Lcom/stryker/terminal/utils/FullScreenHelper;->a(Lcom/stryker/terminal/utils/FullScreenHelper;)V

    return-void
.end method
