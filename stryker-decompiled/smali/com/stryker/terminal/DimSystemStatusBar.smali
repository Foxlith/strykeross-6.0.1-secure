.class abstract Lcom/stryker/terminal/DimSystemStatusBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/DimSystemStatusBar$DimSystemStatusBarHoneycomb;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/stryker/terminal/DimSystemStatusBar;
    .locals 1

    invoke-static {}, Lcom/stryker/terminal/DimSystemStatusBar$DimSystemStatusBarHoneycomb$Holder;->access$000()Lcom/stryker/terminal/DimSystemStatusBar$DimSystemStatusBarHoneycomb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract dim(Landroid/view/View;)V
.end method
