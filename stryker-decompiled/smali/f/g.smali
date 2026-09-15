.class public final Lf/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lf/g;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lf/g;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lf/g;->b:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 1
    iget p1, p0, Lf/g;->a:I

    .line 2
    .line 3
    iget-object p4, p0, Lf/g;->c:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p4, Landroidx/appcompat/widget/x0;

    .line 9
    .line 10
    iget-object p1, p4, Landroidx/appcompat/widget/x0;->H:Landroidx/appcompat/widget/a1;

    .line 11
    .line 12
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p4, Landroidx/appcompat/widget/x0;->H:Landroidx/appcompat/widget/a1;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    if-eqz p5, :cond_0

    .line 22
    .line 23
    iget-object p5, p4, Landroidx/appcompat/widget/x0;->E:Landroid/widget/ListAdapter;

    .line 24
    .line 25
    invoke-interface {p5, p3}, Landroid/widget/Adapter;->getItemId(I)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p4}, Landroidx/appcompat/widget/v2;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_0
    check-cast p4, Lf/i;

    .line 37
    .line 38
    iget-object p1, p4, Lf/i;->w:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    .line 40
    iget-object p2, p0, Lf/g;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lf/l;

    .line 43
    .line 44
    iget-object p5, p2, Lf/l;->b:Lf/j0;

    .line 45
    .line 46
    invoke-interface {p1, p5, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 47
    .line 48
    .line 49
    iget-boolean p1, p4, Lf/i;->G:Z

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p2, Lf/l;->b:Lf/j0;

    .line 54
    .line 55
    invoke-virtual {p1}, Lf/j0;->dismiss()V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
