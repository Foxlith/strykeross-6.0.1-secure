.class public Lcom/google/android/material/materialswitch/MaterialSwitch;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SourceFile"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final STATE_SET_WITH_ICON:[I


# instance fields
.field private currentStateChecked:[I

.field private currentStateUnchecked:[I

.field private thumbDrawable:Landroid/graphics/drawable/Drawable;

.field private thumbIconDrawable:Landroid/graphics/drawable/Drawable;

.field private thumbIconTintList:Landroid/content/res/ColorStateList;

.field private thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private thumbTintList:Landroid/content/res/ColorStateList;

.field private trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

.field private trackDecorationTintList:Landroid/content/res/ColorStateList;

.field private trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

.field private trackDrawable:Landroid/graphics/drawable/Drawable;

.field private trackTintList:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_CompoundButton_MaterialSwitch:I

    sput v0, Lcom/google/android/material/materialswitch/MaterialSwitch;->DEF_STYLE_RES:I

    sget v0, Lcom/google/android/material/R$attr;->state_with_icon:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/materialswitch/MaterialSwitch;->STATE_SET_WITH_ICON:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->materialSwitchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    sget v4, Lcom/google/android/material/materialswitch/MaterialSwitch;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialSwitch:[I

    const/4 p1, 0x0

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/h4;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$styleable;->MaterialSwitch_thumbIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h4;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/google/android/material/R$styleable;->MaterialSwitch_thumbIconTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h4;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    sget p3, Lcom/google/android/material/R$styleable;->MaterialSwitch_thumbIconTintMode:I

    .line 3
    iget-object v0, p2, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 4
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p3, v2}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

    sget p3, Lcom/google/android/material/R$styleable;->MaterialSwitch_trackDecoration:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h4;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/google/android/material/R$styleable;->MaterialSwitch_trackDecorationTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h4;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    sget p3, Lcom/google/android/material/R$styleable;->MaterialSwitch_trackDecorationTintMode:I

    .line 5
    invoke-virtual {v0, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 6
    invoke-static {p3, v2}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2}, Landroidx/appcompat/widget/h4;->f()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setEnforceSwitchWidth(Z)V

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    return-void
.end method

.method private refreshThumbDrawable()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->updateDrawableTints()V

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/android/material/drawable/DrawableUtils;->compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method

.method private refreshTrackDrawable()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->updateDrawableTints()V

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchMinWidth(I)V

    :cond_2
    invoke-super {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p2, p1, p4}, Lz/d;->b(IIF)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, La0/b;->g(Landroid/graphics/drawable/Drawable;I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method private updateDrawableTints()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbPosition()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    invoke-static {v2, v1, v3, v4, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    invoke-static {v2, v1, v3, v4, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    invoke-static {v2, v1, v3, v4, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    iget-object v4, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    invoke-static {v2, v1, v3, v4, v0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setInterpolatedDrawableTintIfPossible(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;[I[IF)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackDecorationDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackDecorationTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackDecorationTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->updateDrawableTints()V

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/material/materialswitch/MaterialSwitch;->STATE_SET_WITH_ICON:[I

    invoke-static {p1, v0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/drawable/DrawableUtils;->getUncheckedState([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateUnchecked:[I

    invoke-static {p1}, Lcom/google/android/material/drawable/DrawableUtils;->getCheckedState([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->currentStateChecked:[I

    return-object p1
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    return-void
.end method

.method public setThumbIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    return-void
.end method

.method public setThumbIconResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setThumbIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    return-void
.end method

.method public setThumbIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->thumbTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshThumbDrawable()V

    return-void
.end method

.method public setTrackDecorationDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    return-void
.end method

.method public setTrackDecorationResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, La/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setTrackDecorationDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackDecorationTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    return-void
.end method

.method public setTrackDecorationTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDecorationTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/materialswitch/MaterialSwitch;->trackTintList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0}, Lcom/google/android/material/materialswitch/MaterialSwitch;->refreshTrackDrawable()V

    return-void
.end method
