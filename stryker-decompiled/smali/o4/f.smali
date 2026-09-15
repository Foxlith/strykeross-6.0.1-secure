.class public final synthetic Lo4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lo4/u;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Landroid/widget/ProgressBar;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/view/View;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Lcom/zalexdev/stryker/custom/WiFINetwork;

.field public final synthetic l:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lo4/u;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/f;->a:Lo4/u;

    iput-object p2, p0, Lo4/f;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lo4/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lo4/f;->d:Landroid/widget/ImageView;

    iput-object p5, p0, Lo4/f;->e:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lo4/f;->f:Landroid/widget/TextView;

    iput-object p7, p0, Lo4/f;->g:Landroid/view/View;

    iput-object p8, p0, Lo4/f;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lo4/f;->i:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p10, p0, Lo4/f;->j:Landroid/widget/TextView;

    iput-object p11, p0, Lo4/f;->k:Lcom/zalexdev/stryker/custom/WiFINetwork;

    iput-object p12, p0, Lo4/f;->l:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 1
    iget-object p1, p0, Lo4/f;->a:Lo4/u;

    .line 2
    .line 3
    iget-object v0, p0, Lo4/f;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lo4/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    iget-object v4, p0, Lo4/f;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v5, p0, Lo4/f;->e:Landroid/widget/ProgressBar;

    .line 10
    .line 11
    iget-object v6, p0, Lo4/f;->f:Landroid/widget/TextView;

    .line 12
    .line 13
    iget-object v7, p0, Lo4/f;->g:Landroid/view/View;

    .line 14
    .line 15
    iget-object v8, p0, Lo4/f;->h:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v9, p0, Lo4/f;->i:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 18
    .line 19
    iget-object v10, p0, Lo4/f;->j:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v11, p0, Lo4/f;->k:Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 22
    .line 23
    iget-object v12, p0, Lo4/f;->l:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Ljava/lang/String;

    .line 33
    .line 34
    iput-object p2, p1, Lo4/u;->l:Ljava/lang/String;

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lo4/n;

    .line 41
    .line 42
    iget-object v2, p1, Lo4/u;->c:Landroid/app/Activity;

    .line 43
    .line 44
    iget-object v3, p1, Lo4/u;->b:Landroid/content/Context;

    .line 45
    .line 46
    move-object v0, p2

    .line 47
    move-object v1, p1

    .line 48
    invoke-direct/range {v0 .. v12}, Lo4/n;-><init>(Lo4/u;Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;Lcom/zalexdev/stryker/custom/WiFINetwork;Landroid/widget/TextView;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p1, Lo4/u;->j:Ll4/h;

    .line 52
    .line 53
    return-void
.end method
