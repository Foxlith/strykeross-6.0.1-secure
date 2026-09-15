.class Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper;->createDataSetObserver()Landroid/database/DataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper;


# direct methods
.method public constructor <init>(Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper;)V
    .locals 0

    iput-object p1, p0, Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper$1;->this$1:Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper$1;->this$1:Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper$1;->this$1:Lde/mrapp/android/util/view/HeaderAndFooterGridView$AdapterWrapper;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
