.class public final Lcom/stryker/terminal/component/session/XSession$SimpleKeyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/component/session/XSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleKeyListener"
.end annotation


# instance fields
.field private client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSession$SimpleKeyListener;->client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    return-void
.end method


# virtual methods
.method public final getClient()Lcom/stryker/terminal/xorg/NeoXorgViewClient;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/component/session/XSession$SimpleKeyListener;->client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p3, p1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/16 p1, 0x52

    if-eq p2, p1, :cond_0

    const/16 p1, 0x60

    if-eq p2, p1, :cond_0

    const/16 p1, 0x61

    if-eq p2, p1, :cond_0

    const/16 p1, 0x63

    if-eq p2, p1, :cond_0

    const/16 p1, 0x64

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbc

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbd

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbe

    if-eq p2, p1, :cond_0

    const/16 p1, 0xbf

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/stryker/terminal/component/session/XSession$SimpleKeyListener;->client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    invoke-interface {p1}, Lcom/stryker/terminal/xorg/NeoXorgViewClient;->hideScreenKeyboard()V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final setClient(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/component/session/XSession$SimpleKeyListener;->client:Lcom/stryker/terminal/xorg/NeoXorgViewClient;

    return-void
.end method
