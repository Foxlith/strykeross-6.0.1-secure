.class Lcom/zalexdev/stryker/wpair/WpairTerminal$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zalexdev/stryker/wpair/WpairTerminal;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairTerminal;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$4;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$4;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$602(Lcom/zalexdev/stryker/wpair/WpairTerminal;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$4;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$400(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$4;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-static {v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$600(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;->applyFilter(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$4;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ll4/l;

    invoke-direct {v0, p1}, Ll4/l;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$4;->this$0:Lcom/zalexdev/stryker/wpair/WpairTerminal;

    invoke-static {p1}, Lcom/zalexdev/stryker/wpair/WpairTerminal;->access$600(Lcom/zalexdev/stryker/wpair/WpairTerminal;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "wpair_term_filter"

    invoke-virtual {v0, v1, p1}, Ll4/l;->e0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
