.class public final synthetic Lcom/stryker/terminal/frontend/floating/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/frontend/floating/TerminalDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/frontend/floating/TerminalDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/frontend/floating/a;->a:Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/frontend/floating/a;->a:Lcom/stryker/terminal/frontend/floating/TerminalDialog;

    invoke-static {v0, p1}, Lcom/stryker/terminal/frontend/floating/TerminalDialog;->a(Lcom/stryker/terminal/frontend/floating/TerminalDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
