.class public final Landroidx/appcompat/widget/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/o3;->a:Landroidx/appcompat/widget/SearchView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/widget/o3;->a:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView;->h(I)V

    return-void
.end method
