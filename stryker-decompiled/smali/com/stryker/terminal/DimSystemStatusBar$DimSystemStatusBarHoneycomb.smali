.class Lcom/stryker/terminal/DimSystemStatusBar$DimSystemStatusBarHoneycomb;
.super Lcom/stryker/terminal/DimSystemStatusBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/DimSystemStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DimSystemStatusBarHoneycomb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/DimSystemStatusBar$DimSystemStatusBarHoneycomb$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/stryker/terminal/DimSystemStatusBar;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stryker/terminal/DimSystemStatusBar$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/stryker/terminal/DimSystemStatusBar$DimSystemStatusBarHoneycomb;-><init>()V

    return-void
.end method


# virtual methods
.method public dim(Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lcom/stryker/terminal/Globals;->ImmersiveMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1006

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    return-void
.end method
