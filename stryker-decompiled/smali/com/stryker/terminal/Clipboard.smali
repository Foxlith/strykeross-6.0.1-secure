.class public abstract Lcom/stryker/terminal/Clipboard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/Clipboard$NewerClipboard;,
        Lcom/stryker/terminal/Clipboard$OlderClipboard;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/stryker/terminal/Clipboard;
    .locals 1

    .line 1
    invoke-static {}, Lcom/stryker/terminal/Clipboard$NewerClipboard$Holder;->access$000()Lcom/stryker/terminal/Clipboard$NewerClipboard;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract get(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract set(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setListener(Landroid/content/Context;Ljava/lang/Runnable;)V
.end method
