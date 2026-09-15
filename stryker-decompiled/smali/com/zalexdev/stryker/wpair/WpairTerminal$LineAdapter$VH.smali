.class final Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;
.super Landroidx/recyclerview/widget/p1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VH"
.end annotation


# instance fields
.field final body:Landroid/widget/TextView;

.field final host:Landroid/widget/TextView;

.field final tag:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

.field final timestamp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->this$1:Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0633

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->timestamp:Landroid/widget/TextView;

    const p1, 0x7f0a0631

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->tag:Landroid/widget/TextView;

    const p1, 0x7f0a0632

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->host:Landroid/widget/TextView;

    const p1, 0x7f0a0630

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zalexdev/stryker/wpair/WpairTerminal$LineAdapter$VH;->body:Landroid/widget/TextView;

    return-void
.end method
