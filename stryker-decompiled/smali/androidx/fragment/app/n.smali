.class public final Landroidx/fragment/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/c0;
.implements Ld0/c;
.implements Landroidx/recyclerview/widget/c0;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(IIIIZZ)Landroidx/fragment/app/n;
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/n;

    invoke-static/range {p0 .. p5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static d(IIIZ)Landroidx/fragment/app/n;
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/n;

    invoke-static {p0, p1, p3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/n;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/s1;

    invoke-virtual {v0}, Landroidx/fragment/app/s1;->a()V

    return-void
.end method

.method public b()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/k0;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/k0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/k0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/k0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemRangeRemoved(II)V

    return-void
.end method
