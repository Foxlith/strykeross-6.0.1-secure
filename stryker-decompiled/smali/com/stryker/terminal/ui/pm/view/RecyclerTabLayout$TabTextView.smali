.class public Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout$TabTextView;
.super Landroidx/appcompat/widget/m1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/ui/pm/view/RecyclerTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabTextView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/m1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/TextView;->SELECTED_STATE_SET:[I

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/TextView;->EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    filled-new-array {p2, p1}, [I

    move-result-object p1

    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v0, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p2
.end method
