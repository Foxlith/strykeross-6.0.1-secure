.class public Lcom/stryker/terminal/NeoXorgSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 0

    invoke-static {p0}, Lcom/stryker/terminal/Settings;->Load(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    return-void
.end method
