.class public Landroidx/appcompat/view/menu/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/a;


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/q;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroidx/appcompat/view/menu/m;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Landroidx/appcompat/view/menu/q;

.field private mGroupDividerEnabled:Z

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/q;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/q;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/view/menu/c0;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mStructureChangedWhileDispatchPrevented:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/q;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/view/menu/o;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/o;->mDefaultShowAsAction:I

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mPreventDispatchingItemsChanged:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mItemsChangedWhileDispatchPrevented:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mStructureChangedWhileDispatchPrevented:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mOptionalIconsVisible:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mIsClosing:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/o;->mTempShortcutItemList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mGroupDividerEnabled:Z

    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mResources:Landroid/content/res/Resources;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mVisibleItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mIsVisibleItemsStale:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o;->mActionItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o;->mNonActionItems:Ljava/util/ArrayList;

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mIsActionItemsStale:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->c(Z)V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/o;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/o;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/o;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/o;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Landroidx/appcompat/view/menu/o;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_3

    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 10

    .line 1
    const/high16 v0, -0x10000

    .line 2
    .line 3
    and-int/2addr v0, p3

    .line 4
    shr-int/lit8 v0, v0, 0x10

    .line 5
    .line 6
    if-ltz v0, :cond_3

    .line 7
    .line 8
    sget-object v1, Landroidx/appcompat/view/menu/o;->sCategoryToOrder:[I

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_3

    .line 12
    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    shl-int/lit8 v0, v0, 0x10

    .line 16
    .line 17
    const v1, 0xffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v1, p3

    .line 21
    or-int/2addr v0, v1

    .line 22
    iget v9, p0, Landroidx/appcompat/view/menu/o;->mDefaultShowAsAction:I

    .line 23
    .line 24
    new-instance v1, Landroidx/appcompat/view/menu/q;

    .line 25
    .line 26
    move-object v2, v1

    .line 27
    move-object v3, p0

    .line 28
    move v4, p1

    .line 29
    move v5, p2

    .line 30
    move v6, p3

    .line 31
    move v7, v0

    .line 32
    move-object v8, p4

    .line 33
    invoke-direct/range {v2 .. v9}, Landroidx/appcompat/view/menu/q;-><init>(Landroidx/appcompat/view/menu/o;IIIILjava/lang/CharSequence;I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroidx/appcompat/view/menu/o;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iput-object p1, v1, Landroidx/appcompat/view/menu/q;->D:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    const/4 p3, 0x1

    .line 49
    sub-int/2addr p2, p3

    .line 50
    :goto_0
    if-ltz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    check-cast p4, Landroidx/appcompat/view/menu/q;

    .line 57
    .line 58
    iget p4, p4, Landroidx/appcompat/view/menu/q;->d:I

    .line 59
    .line 60
    if-gt p4, v0, :cond_1

    .line 61
    .line 62
    add-int/2addr p2, p3

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 p2, 0x0

    .line 68
    :goto_1
    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p2, "order does not contain a valid category."

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/c0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/o;->addMenuPresenter(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V

    return-void
.end method

.method public addMenuPresenter(Landroidx/appcompat/view/menu/c0;Landroid/content/Context;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p2, p0}, Landroidx/appcompat/view/menu/c0;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/o;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mIsActionItemsStale:Z

    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/o;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/o;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/o;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/q;

    new-instance p2, Landroidx/appcompat/view/menu/i0;

    iget-object p3, p0, Landroidx/appcompat/view/menu/o;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Landroidx/appcompat/view/menu/i0;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)V

    .line 3
    iput-object p2, p1, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    .line 4
    iget-object p1, p1, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/i0;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroidx/appcompat/view/menu/o;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final b(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    iput-object p5, p0, Landroidx/appcompat/view/menu/o;->mHeaderView:Landroid/view/View;

    .line 9
    .line 10
    iput-object v1, p0, Landroidx/appcompat/view/menu/o;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/appcompat/view/menu/o;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    if-lez p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/appcompat/view/menu/o;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 27
    .line 28
    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object p2, Lx/g;->a:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {p1, p3}, Lx/c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    if-eqz p4, :cond_4

    .line 44
    .line 45
    iput-object p4, p0, Landroidx/appcompat/view/menu/o;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    :cond_4
    :goto_1
    iput-object v1, p0, Landroidx/appcompat/view/menu/o;->mHeaderView:Landroid/view/View;

    .line 48
    .line 49
    :goto_2
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/o;->mResources:Landroid/content/res/Resources;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/appcompat/view/menu/o;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Landroidx/appcompat/view/menu/o;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    sget-object v2, Landroidx/core/view/f1;->a:Ljava/lang/reflect/Method;

    .line 23
    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v3, 0x1c

    .line 27
    .line 28
    if-lt v2, v3, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Landroidx/core/view/e1;->b(Landroid/view/ViewConfiguration;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v1, "android"

    .line 42
    .line 43
    const-string v2, "config_showMenuShortcutsWhenKeyboardPresent"

    .line 44
    .line 45
    const-string v3, "bool"

    .line 46
    .line 47
    invoke-virtual {p1, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mShortcutsVisible:Z

    .line 62
    .line 63
    return-void
.end method

.method public changeMenuMode()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mCallback:Landroidx/appcompat/view/menu/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/appcompat/view/menu/m;->onMenuModeChange(Landroidx/appcompat/view/menu/o;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mExpandedItem:Landroidx/appcompat/view/menu/q;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o;->collapseItemActionView(Landroidx/appcompat/view/menu/q;)Z

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-void
.end method

.method public clearAll()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mPreventDispatchingItemsChanged:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->clear()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->clearHeader()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mPreventDispatchingItemsChanged:Z

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mItemsChangedWhileDispatchPrevented:Z

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mStructureChangedWhileDispatchPrevented:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/o;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/appcompat/view/menu/o;->mHeaderTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/appcompat/view/menu/o;->mHeaderView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o;->close(Z)V

    return-void
.end method

.method public final close(Z)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mIsClosing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mIsClosing:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/c0;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, p0, p1}, Landroidx/appcompat/view/menu/c0;->onCloseMenu(Landroidx/appcompat/view/menu/o;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mIsClosing:Z

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/q;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mExpandedItem:Landroidx/appcompat/view/menu/q;

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/c0;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/c0;->collapseItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mExpandedItem:Landroidx/appcompat/view/menu/q;

    :cond_4
    :goto_1
    return v1
.end method

.method public dispatchMenuItemSelected(Landroidx/appcompat/view/menu/o;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mCallback:Landroidx/appcompat/view/menu/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m;->onMenuItemSelected(Landroidx/appcompat/view/menu/o;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/q;)Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/c0;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3, p0, p1}, Landroidx/appcompat/view/menu/c0;->expandItemActionView(Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    if-eqz v1, :cond_4

    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mExpandedItem:Landroidx/appcompat/view/menu/q;

    :cond_4
    return v1
.end method

.method public findGroupIndex(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/o;->findGroupIndex(II)I

    move-result p1

    return p1
.end method

.method public findGroupIndex(II)I
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->size()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q;

    .line 2
    iget v1, v1, Landroidx/appcompat/view/menu/q;->b:I

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/appcompat/view/menu/q;

    .line 15
    .line 16
    iget v3, v2, Landroidx/appcompat/view/menu/q;->a:I

    .line 17
    .line 18
    if-ne v3, p1, :cond_0

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/q;->hasSubMenu()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    .line 28
    .line 29
    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    return-object p1
.end method

.method public findItemIndex(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/appcompat/view/menu/q;

    .line 15
    .line 16
    iget v2, v2, Landroidx/appcompat/view/menu/q;->a:I

    .line 17
    .line 18
    if-ne v2, p1, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, -0x1

    .line 25
    return p1
.end method

.method public findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/q;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/view/menu/o;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    .line 22
    .line 23
    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    if-ne p2, v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroidx/appcompat/view/menu/q;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->isQwertyMode()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    move v6, v5

    .line 49
    :goto_0
    if-ge v6, p2, :cond_7

    .line 50
    .line 51
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Landroidx/appcompat/view/menu/q;

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    iget-char v8, v7, Landroidx/appcompat/view/menu/q;->j:C

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-char v8, v7, Landroidx/appcompat/view/menu/q;->h:C

    .line 63
    .line 64
    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 65
    .line 66
    aget-char v10, v9, v5

    .line 67
    .line 68
    if-ne v8, v10, :cond_3

    .line 69
    .line 70
    and-int/lit8 v10, v1, 0x2

    .line 71
    .line 72
    if-eqz v10, :cond_5

    .line 73
    .line 74
    :cond_3
    const/4 v10, 0x2

    .line 75
    aget-char v9, v9, v10

    .line 76
    .line 77
    if-ne v8, v9, :cond_4

    .line 78
    .line 79
    and-int/lit8 v9, v1, 0x2

    .line 80
    .line 81
    if-nez v9, :cond_5

    .line 82
    .line 83
    :cond_4
    if-eqz v4, :cond_6

    .line 84
    .line 85
    const/16 v9, 0x8

    .line 86
    .line 87
    if-ne v8, v9, :cond_6

    .line 88
    .line 89
    const/16 v8, 0x43

    .line 90
    .line 91
    if-ne p1, v8, :cond_6

    .line 92
    .line 93
    :cond_5
    return-object v7

    .line 94
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_7
    return-object v2
.end method

.method public findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/q;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->isQwertyMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x43

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    if-eq p2, v4, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v3, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v5, 0x0

    .line 32
    move v6, v5

    .line 33
    :goto_0
    if-ge v6, v3, :cond_6

    .line 34
    .line 35
    iget-object v7, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Landroidx/appcompat/view/menu/q;

    .line 42
    .line 43
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/q;->hasSubMenu()Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_1

    .line 48
    .line 49
    iget-object v8, v7, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    .line 50
    .line 51
    invoke-virtual {v8, p1, p2, p3}, Landroidx/appcompat/view/menu/o;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-char v8, v7, Landroidx/appcompat/view/menu/q;->j:C

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-char v8, v7, Landroidx/appcompat/view/menu/q;->h:C

    .line 60
    .line 61
    :goto_1
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget v9, v7, Landroidx/appcompat/view/menu/q;->k:I

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    iget v9, v7, Landroidx/appcompat/view/menu/q;->i:I

    .line 67
    .line 68
    :goto_2
    const v10, 0x1100f

    .line 69
    .line 70
    .line 71
    and-int v11, v1, v10

    .line 72
    .line 73
    and-int/2addr v9, v10

    .line 74
    if-ne v11, v9, :cond_5

    .line 75
    .line 76
    if-eqz v8, :cond_5

    .line 77
    .line 78
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 79
    .line 80
    aget-char v10, v9, v5

    .line 81
    .line 82
    if-eq v8, v10, :cond_4

    .line 83
    .line 84
    const/4 v10, 0x2

    .line 85
    aget-char v9, v9, v10

    .line 86
    .line 87
    if-eq v8, v9, :cond_4

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    const/16 v9, 0x8

    .line 92
    .line 93
    if-ne v8, v9, :cond_5

    .line 94
    .line 95
    if-ne p2, v4, :cond_5

    .line 96
    .line 97
    :cond_4
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/q;->isEnabled()Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-eqz v8, :cond_5

    .line 102
    .line 103
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_6
    return-void
.end method

.method public flagActionItems()V
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mIsActionItemsStale:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/c0;

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Landroidx/appcompat/view/menu/c0;->flagActionItems()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget-object v1, p0, Landroidx/appcompat/view/menu/o;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/o;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/q;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/q;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroidx/appcompat/view/menu/o;->mActionItems:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/o;->mNonActionItems:Ljava/util/ArrayList;

    goto :goto_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/o;->mIsActionItemsStale:Z

    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/q;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->flagActionItems()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Landroidx/appcompat/view/menu/q;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mExpandedItem:Landroidx/appcompat/view/menu/q;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/q;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->flagActionItems()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOptionalIconsVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mOptionalIconsVisible:Z

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Landroidx/appcompat/view/menu/o;
    .locals 0

    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/q;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mIsVisibleItemsStale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/q;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/q;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/appcompat/view/menu/o;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mIsVisibleItemsStale:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mIsActionItemsStale:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mVisibleItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 5

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mOverrideVisibleItems:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/q;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/q;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isGroupDividerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mGroupDividerEnabled:Z

    return v0
.end method

.method public isQwertyMode()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/o;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/q;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShortcutsVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mShortcutsVisible:Z

    return v0
.end method

.method public onItemActionRequestChanged(Landroidx/appcompat/view/menu/q;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mIsActionItemsStale:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-void
.end method

.method public onItemVisibleChanged(Landroidx/appcompat/view/menu/q;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mIsVisibleItemsStale:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mPreventDispatchingItemsChanged:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_4

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mIsVisibleItemsStale:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mIsActionItemsStale:Z

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroidx/appcompat/view/menu/c0;

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v2, p1}, Landroidx/appcompat/view/menu/c0;->updateMenuView(Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mItemsChangedWhileDispatchPrevented:Z

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    iput-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mStructureChangedWhileDispatchPrevented:Z

    .line 69
    .line 70
    :cond_5
    :goto_1
    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/o;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/view/menu/o;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/c0;I)Z

    move-result p1

    return p1
.end method

.method public performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/c0;I)Z
    .locals 6

    check-cast p1, Landroidx/appcompat/view/menu/q;

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 2
    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/q;->p:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    invoke-virtual {v1, v1, p1}, Landroidx/appcompat/view/menu/o;->dispatchMenuItemSelected(Landroidx/appcompat/view/menu/o;Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroidx/appcompat/view/menu/q;->g:Landroid/content/Intent;

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroidx/appcompat/view/menu/q;->g:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "MenuItemImpl"

    const-string v4, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v1, p1, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, v1, Landroidx/appcompat/view/menu/r;->a:Landroid/view/ActionProvider;

    .line 4
    invoke-virtual {v1}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    .line 5
    :goto_1
    iget-object v3, p1, Landroidx/appcompat/view/menu/q;->A:Landroidx/appcompat/view/menu/r;

    if-eqz v3, :cond_5

    .line 6
    iget-object v4, v3, Landroidx/appcompat/view/menu/r;->a:Landroid/view/ActionProvider;

    invoke-virtual {v4}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    move v4, v0

    .line 7
    :goto_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->e()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_11

    :goto_3
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/o;->close(Z)V

    goto/16 :goto_7

    :cond_6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_11

    goto :goto_3

    :cond_8
    :goto_4
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_9

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o;->close(Z)V

    :cond_9
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_a

    new-instance p3, Landroidx/appcompat/view/menu/i0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p3, v5, p0, p1}, Landroidx/appcompat/view/menu/i0;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/o;Landroidx/appcompat/view/menu/q;)V

    .line 8
    iput-object p3, p1, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    .line 9
    iget-object v5, p1, Landroidx/appcompat/view/menu/q;->e:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p3, v5}, Landroidx/appcompat/view/menu/i0;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 11
    :cond_a
    iget-object p1, p1, Landroidx/appcompat/view/menu/q;->o:Landroidx/appcompat/view/menu/i0;

    if-eqz v4, :cond_b

    .line 12
    iget-object p3, v3, Landroidx/appcompat/view/menu/r;->b:Landroidx/appcompat/view/menu/w;

    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iget-object p3, v3, Landroidx/appcompat/view/menu/r;->a:Landroid/view/ActionProvider;

    invoke-virtual {p3, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    :cond_b
    iget-object p3, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_c

    goto :goto_6

    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {p2, p1}, Landroidx/appcompat/view/menu/c0;->onSubMenuSelected(Landroidx/appcompat/view/menu/i0;)Z

    move-result v0

    :cond_d
    iget-object p2, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/c0;

    if-nez v3, :cond_f

    iget-object v3, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    if-nez v0, :cond_e

    invoke-interface {v3, p1}, Landroidx/appcompat/view/menu/c0;->onSubMenuSelected(Landroidx/appcompat/view/menu/i0;)Z

    move-result v0

    goto :goto_5

    :cond_10
    :goto_6
    or-int/2addr v1, v0

    if-nez v1, :cond_11

    goto :goto_3

    :cond_11
    :goto_7
    return v1

    :cond_12
    :goto_8
    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/o;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroidx/appcompat/view/menu/q;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/view/menu/o;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/o;->close(Z)V

    :cond_1
    return p1
.end method

.method public removeGroup(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->findGroupIndex(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 17
    .line 18
    if-ge v3, v1, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroidx/appcompat/view/menu/q;

    .line 27
    .line 28
    iget v3, v3, Landroidx/appcompat/view/menu/q;->b:I

    .line 29
    .line 30
    if-ne v3, p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/view/menu/o;->a(IZ)V

    .line 33
    .line 34
    .line 35
    move v3, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->findItemIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/o;->a(IZ)V

    return-void
.end method

.method public removeItemAt(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/o;->a(IZ)V

    return-void
.end method

.method public removeMenuPresenter(Landroidx/appcompat/view/menu/c0;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/c0;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i0;

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/o;->restoreActionViewStates(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "android:menu:expandedactionview"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_4
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "android:menu:presenters"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroidx/appcompat/view/menu/c0;

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v2}, Landroidx/appcompat/view/menu/c0;->getId()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/os/Parcelable;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-interface {v2, v1}, Landroidx/appcompat/view/menu/c0;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android:menu:expandedactionview"

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i0;

    invoke-virtual {v3, p1}, Landroidx/appcompat/view/menu/o;->saveActionViewStates(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroidx/appcompat/view/menu/c0;

    .line 38
    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    iget-object v3, p0, Landroidx/appcompat/view/menu/o;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {v3}, Landroidx/appcompat/view/menu/c0;->getId()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-lez v2, :cond_1

    .line 52
    .line 53
    invoke-interface {v3}, Landroidx/appcompat/view/menu/c0;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-string v1, "android:menu:presenters"

    .line 64
    .line 65
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/m;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mCallback:Landroidx/appcompat/view/menu/m;

    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/o;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/o;
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/o;->mDefaultShowAsAction:I

    return-object p0
.end method

.method public setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->stopDispatchingItemsChanged()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_4

    .line 17
    .line 18
    iget-object v4, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroidx/appcompat/view/menu/q;

    .line 25
    .line 26
    iget v5, v4, Landroidx/appcompat/view/menu/q;->b:I

    .line 27
    .line 28
    if-ne v5, v0, :cond_3

    .line 29
    .line 30
    iget v5, v4, Landroidx/appcompat/view/menu/q;->x:I

    .line 31
    .line 32
    and-int/lit8 v5, v5, 0x4

    .line 33
    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/q;->isCheckable()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_0

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_0
    if-ne v4, p1, :cond_1

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v5, v2

    .line 48
    :goto_1
    iget v6, v4, Landroidx/appcompat/view/menu/q;->x:I

    .line 49
    .line 50
    and-int/lit8 v7, v6, -0x3

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    const/4 v5, 0x2

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v5, v2

    .line 57
    :goto_2
    or-int/2addr v5, v7

    .line 58
    iput v5, v4, Landroidx/appcompat/view/menu/q;->x:I

    .line 59
    .line 60
    if-eq v6, v5, :cond_3

    .line 61
    .line 62
    iget-object v4, v4, Landroidx/appcompat/view/menu/q;->n:Landroidx/appcompat/view/menu/o;

    .line 63
    .line 64
    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->startDispatchingItemsChanged()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/appcompat/view/menu/q;

    .line 17
    .line 18
    iget v3, v2, Landroidx/appcompat/view/menu/q;->b:I

    .line 19
    .line 20
    if-ne v3, p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2, p3}, Landroidx/appcompat/view/menu/q;->g(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/q;->setCheckable(Z)Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mGroupDividerEnabled:Z

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/appcompat/view/menu/q;

    .line 17
    .line 18
    iget v3, v2, Landroidx/appcompat/view/menu/q;->b:I

    .line 19
    .line 20
    if-ne v3, p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2, p2}, Landroidx/appcompat/view/menu/q;->setEnabled(Z)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/4 v4, 0x1

    .line 11
    if-ge v2, v0, :cond_2

    .line 12
    .line 13
    iget-object v5, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Landroidx/appcompat/view/menu/q;

    .line 20
    .line 21
    iget v6, v5, Landroidx/appcompat/view/menu/q;->b:I

    .line 22
    .line 23
    if-ne v6, p1, :cond_1

    .line 24
    .line 25
    iget v6, v5, Landroidx/appcompat/view/menu/q;->x:I

    .line 26
    .line 27
    and-int/lit8 v7, v6, -0x9

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    move v8, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/16 v8, 0x8

    .line 34
    .line 35
    :goto_1
    or-int/2addr v7, v8

    .line 36
    iput v7, v5, Landroidx/appcompat/view/menu/q;->x:I

    .line 37
    .line 38
    if-eq v6, v7, :cond_1

    .line 39
    .line 40
    move v3, v4

    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0, v4}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public setHeaderIconInt(I)Landroidx/appcompat/view/menu/o;
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/o;->b(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/o;
    .locals 6

    .line 2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/o;->b(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderTitleInt(I)Landroidx/appcompat/view/menu/o;
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/o;->b(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderTitleInt(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/o;
    .locals 6

    .line 2
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/o;->b(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setHeaderViewInt(Landroid/view/View;)Landroidx/appcompat/view/menu/o;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/o;->b(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mOptionalIconsVisible:Z

    return-void
.end method

.method public setOverrideVisibleItems(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mOverrideVisibleItems:Z

    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o;->mQwertyMode:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->c(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mPreventDispatchingItemsChanged:Z

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/o;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mItemsChangedWhileDispatchPrevented:Z

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mStructureChangedWhileDispatchPrevented:Z

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o;->onItemsChanged(Z)V

    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mPreventDispatchingItemsChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mItemsChangedWhileDispatchPrevented:Z

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o;->mStructureChangedWhileDispatchPrevented:Z

    :cond_0
    return-void
.end method
