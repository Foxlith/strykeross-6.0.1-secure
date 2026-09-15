.class public final Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion;
    }
.end annotation


# static fields
.field private static final ARROW_DOWN:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

.field private static final ARROW_LEFT:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

.field private static final ARROW_RIGHT:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

.field private static final ARROW_UP:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

.field public static final Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion;

.field private static final DEFAULT_ALPHA:F

.field private static final END:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

.field private static final ESC:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

.field private static final EXPANDED_ALPHA:F

.field private static final HOME:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

.field private static final MAX_BUTTONS_PER_LINE:I

.field private static final PAGE_DOWN:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;

.field private static final PAGE_UP:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;

.field private static final SLASH:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

.field private static final TAB:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

.field private static final TOGGLE_IME:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion$TOGGLE_IME$1;

.field private static final USER_KEYS_BUTTON_LINE_START:I


# instance fields
.field private final ALT:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

.field private final CTRL:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

.field private final EXPAND_BUTTONS:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$EXPAND_BUTTONS$1;

.field private final FN:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

.field private final SHIFT:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

.field private final builtinKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;",
            ">;"
        }
    .end annotation
.end field

.field private final buttonBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private buttonPanelExpanded:Z

.field private final extraKeyComponent:Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;

.field private typeface:Landroid/graphics/Typeface;

.field private final userKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    const-string v1, "Esc"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ESC:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    const-string v1, "Tab"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->TAB:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;

    const-string v1, "PgUp"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->PAGE_UP:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;

    const-string v1, "PgDn"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->PAGE_DOWN:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    const-string v1, "Home"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->HOME:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    const-string v1, "End"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->END:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    const-string v1, "\u25b2"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ARROW_UP:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    const-string v1, "\u25bc"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ARROW_DOWN:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    const-string v1, "\u25c0"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ARROW_LEFT:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    const-string v1, "\u25b6"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ARROW_RIGHT:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->SLASH:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    new-instance v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion$TOGGLE_IME$1;

    invoke-direct {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion$TOGGLE_IME$1;-><init>()V

    sput-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->TOGGLE_IME:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion$TOGGLE_IME$1;

    const/4 v0, 0x7

    sput v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->MAX_BUTTONS_PER_LINE:I

    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->DEFAULT_ALPHA:F

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->EXPANDED_ALPHA:F

    const/4 v0, 0x2

    sput v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->USER_KEYS_BUTTON_LINE_START:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->builtinKeys:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->userKeys:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    new-instance p2, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    const-string v0, "Ctrl"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/f;)V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->CTRL:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    new-instance p2, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    const-string v0, "Alt"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/f;)V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ALT:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    new-instance p2, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    const-string v0, "Fn"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/f;)V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->FN:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    new-instance p2, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    const-string v0, "LShift"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/f;)V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->SHIFT:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    new-instance p2, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$EXPAND_BUTTONS$1;

    invoke-direct {p2, p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$EXPAND_BUTTONS$1;-><init>(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;)V

    iput-object p2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->EXPAND_BUTTONS:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$EXPAND_BUTTONS$1;

    sget p2, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->DEFAULT_ALPHA:F

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    const/16 p2, 0x30

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "eks_font.ttf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->typeface:Landroid/graphics/Typeface;

    sget-object p1, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    const-class p2, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;

    invoke-static {p1, p2, v1, v2, v3}, Lcom/stryker/terminal/component/ComponentManager;->getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object p1

    check-cast p1, Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->extraKeyComponent:Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->initBuiltinKeys()V

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->loadDefaultUserKeys()V

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->updateButtons()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->expandButtonPanel(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addKeyButton$lambda$5(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;Landroid/view/View;)V

    return-void
.end method

.method private final addKeyButton(Landroid/widget/LinearLayout;Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x101032f

    invoke-virtual {p2, v0, v1, v2}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->makeButton(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v1}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->calculateButtonWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/GridLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/stryker/terminal/R$dimen;->eks_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/GridLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p2}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    sget-object v1, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;

    invoke-virtual {v1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;->getNORMAL_TEXT_COLOR()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    new-instance v1, Lcom/google/android/material/snackbar/a;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p2, v2}, Lcom/google/android/material/snackbar/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final addKeyButton(Ljava/util/List;Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;",
            ">;",
            "Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;",
            ")V"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static final addKeyButton$lambda$5(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$extraButton"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const-string p2, "root"

    invoke-static {p0, p2}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private final calculateButtonWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v1, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->MAX_BUTTONS_PER_LINE:I

    div-int/2addr v0, v1

    return v0
.end method

.method private final createNewButtonBar()Landroid/widget/LinearLayout;
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/stryker/terminal/component/config/NeoPreference;->INSTANCE:Lcom/stryker/terminal/component/config/NeoPreference;

    invoke-virtual {v1}, Lcom/stryker/terminal/component/config/NeoPreference;->isExplicitExtraKeysWeightEnabled()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final expandButtonPanel(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-boolean p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonPanelExpanded:Z

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    move p1, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move p1, v0

    .line 27
    :goto_0
    iput-boolean p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonPanelExpanded:Z

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/16 v0, 0x8

    .line 33
    .line 34
    :goto_1
    if-eqz p1, :cond_4

    .line 35
    .line 36
    sget p1, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->EXPANDED_ALPHA:F

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_4
    sget p1, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->DEFAULT_ALPHA:F

    .line 40
    .line 41
    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Ln5/c;

    .line 45
    .line 46
    sget v2, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->USER_KEYS_BUTTON_LINE_START:I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    sub-int/2addr v3, v1

    .line 55
    invoke-direct {p1, v2, v3, v1}, Ln5/a;-><init>(III)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-static {p1}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ln5/a;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_3
    move-object v2, p1

    .line 72
    check-cast v2, Ln5/b;

    .line 73
    .line 74
    iget-boolean v2, v2, Ln5/b;->c:Z

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    move-object v2, p1

    .line 79
    check-cast v2, Ln5/b;

    .line 80
    .line 81
    invoke-virtual {v2}, Ln5/b;->b()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iget-object v3, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Landroid/widget/LinearLayout;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_6

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    return-void
.end method

.method public static synthetic expandButtonPanel$default(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->expandButtonPanel(Ljava/lang/Boolean;)V

    return-void
.end method

.method private final getButtonBarOrNew(I)Landroid/widget/LinearLayout;
    .locals 4

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->createNewButtonBar()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private final initBuiltinKeys()V
    .locals 2

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->TAB:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->CTRL:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->PAGE_DOWN:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ARROW_LEFT:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ARROW_DOWN:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ARROW_RIGHT:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->TOGGLE_IME:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$Companion$TOGGLE_IME$1;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ESC:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ALT:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->PAGE_UP:Lcom/stryker/terminal/frontend/session/view/extrakey/RepeatableButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->HOME:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ARROW_UP:Lcom/stryker/terminal/frontend/session/view/extrakey/ArrowButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->END:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->EXPAND_BUTTONS:Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView$EXPAND_BUTTONS$1;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->SLASH:Lcom/stryker/terminal/frontend/session/view/extrakey/ControlButton;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private final updateButtonBars()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    .line 5
    .line 6
    const-string v1, "<this>"

    .line 7
    .line 8
    invoke-static {v0, v1}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lx4/s;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lx4/s;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final addBuiltinKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V
    .locals 1

    const-string v0, "button"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->builtinKeys:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addKeyButton(Ljava/util/List;Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    return-void
.end method

.method public final addUserKey(Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V
    .locals 1

    const-string v0, "button"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->userKeys:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addKeyButton(Ljava/util/List;Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    return-void
.end method

.method public final clearUserKeys()V
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->userKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final loadDefaultUserKeys()V
    .locals 3

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->clearUserKeys()V

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->extraKeyComponent:Lcom/stryker/terminal/component/extrakey/ExtraKeyComponent;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.zalexdev.stryker/files/usr/home/.terminal/eks/default.nl"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/stryker/terminal/component/ConfigFileBasedComponent;->loadConfigure(Ljava/io/File;)Lcom/stryker/terminal/component/ConfigFileBasedObject;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->userKeys:Ljava/util/List;

    invoke-virtual {v0}, Lcom/stryker/terminal/component/extrakey/NeoExtraKey;->getShortcutKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonPanelExpanded:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->expandButtonPanel$default(Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final readAltButton()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->ALT:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->readState()Z

    move-result v0

    return v0
.end method

.method public final readControlButton()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->CTRL:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->readState()Z

    move-result v0

    return v0
.end method

.method public final readFnButton()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->FN:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->readState()Z

    move-result v0

    return v0
.end method

.method public final readShiftButton()Z
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->SHIFT:Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;

    invoke-virtual {v0}, Lcom/stryker/terminal/frontend/session/view/extrakey/StatedControlButton;->readState()Z

    move-result v0

    return v0
.end method

.method public final setTextColor(I)V
    .locals 1

    sget-object v0, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;->Companion:Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;

    invoke-virtual {v0, p1}, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton$Companion;->setNORMAL_TEXT_COLOR(I)V

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->updateButtons()V

    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->updateButtons()V

    return-void
.end method

.method public final updateButtons()V
    .locals 5

    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->buttonBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->builtinKeys:Ljava/util/List;

    iget-object v1, p0, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->userKeys:Ljava/util/List;

    invoke-static {v1, v0}, Lx4/m;->B0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v3, Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;

    invoke-direct {p0, v2}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->getButtonBarOrNew(I)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->addKeyButton(Landroid/widget/LinearLayout;Lcom/stryker/terminal/frontend/session/view/extrakey/IExtraButton;)V

    sget v1, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->MAX_BUTTONS_PER_LINE:I

    div-int v2, v4, v1

    move v1, v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lv1/f;->V()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/stryker/terminal/frontend/session/view/extrakey/ExtraKeysView;->updateButtonBars()V

    return-void
.end method
