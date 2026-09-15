.class public final Lf/f;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic d:Lf/l;

.field public final synthetic e:Lf/i;


# direct methods
.method public constructor <init>(Lf/i;Landroid/content/Context;Landroid/database/Cursor;Landroidx/appcompat/app/AlertController$RecycleListView;Lf/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/f;->e:Lf/i;

    iput-object p4, p0, Lf/f;->c:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p5, p0, Lf/f;->d:Lf/l;

    const/4 p4, 0x0

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    iget-object p3, p1, Lf/i;->K:Ljava/lang/String;

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lf/f;->a:I

    iget-object p1, p1, Lf/i;->L:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lf/f;->b:I

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 1
    const p2, 0x1020014

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iget p2, p0, Lf/f;->a:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    iget p2, p0, Lf/f;->b:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object p2, p0, Lf/f;->c:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {p2, p1, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    return-void
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p1, p0, Lf/f;->e:Lf/i;

    iget-object p1, p1, Lf/i;->b:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lf/f;->d:Lf/l;

    iget p2, p2, Lf/l;->L:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
