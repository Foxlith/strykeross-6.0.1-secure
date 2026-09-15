.class public final Lf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic b:Lf/l;

.field public final synthetic c:Lf/i;


# direct methods
.method public constructor <init>(Lf/i;Landroidx/appcompat/app/AlertController$RecycleListView;Lf/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/h;->c:Lf/i;

    iput-object p2, p0, Lf/h;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Lf/h;->b:Lf/l;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/h;->c:Lf/i;

    iget-object p2, p1, Lf/i;->E:[Z

    iget-object p4, p0, Lf/h;->a:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz p2, :cond_0

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p5

    aput-boolean p5, p2, p3

    :cond_0
    iget-object p1, p1, Lf/i;->I:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lf/h;->b:Lf/l;

    iget-object p2, p2, Lf/l;->b:Lf/j0;

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p4

    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
