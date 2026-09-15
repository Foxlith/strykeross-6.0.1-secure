.class public Lf/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sAccessibilityHeading:[I

.field private static final sAccessibilityPaneTitle:[I

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Ln/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln/k;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I

.field private static final sScreenReaderFocusable:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lf/l0;->sConstructorSignature:[Ljava/lang/Class;

    const v0, 0x101026f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lf/l0;->sOnClickAttrs:[I

    const v0, 0x1010580

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lf/l0;->sAccessibilityHeading:[I

    const v0, 0x101057c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lf/l0;->sAccessibilityPaneTitle:[I

    const v0, 0x1010574

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lf/l0;->sScreenReaderFocusable:[I

    const-string v0, "android.view."

    const-string v1, "android.webkit."

    const-string v2, "android.widget."

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/l0;->sClassPrefixList:[Ljava/lang/String;

    new-instance v0, Ln/k;

    invoke-direct {v0}, Ln/k;-><init>()V

    sput-object v0, Lf/l0;->sConstructorMap:Ln/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lf/l0;->mConstructorArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 1
    sget-object v0, Lf/l0;->sConstructorMap:Ln/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p2, v1}, Ln/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p3, p2

    .line 20
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {p3, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-class p3, Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object p3, Lf/l0;->sConstructorSignature:[Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, p2, v2}, Ln/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_1
    const/4 p1, 0x1

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lf/l0;->mConstructorArgs:[Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    return-object p1

    .line 57
    :catch_0
    return-object v1
.end method

.method public final b(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " asked to inflate view for <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">, but returned null"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/s;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/s;

    .line 2
    .line 3
    const v1, 0x7f040040

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p2, v1}, Landroidx/appcompat/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/u;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/u;

    .line 2
    .line 3
    const v1, 0x7f040095

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p2, v1}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/v;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/v;

    .line 2
    .line 3
    const v1, 0x7f0400b1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p2, v1}, Landroidx/appcompat/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/w;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/w;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/c0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/c0;

    .line 2
    .line 3
    const v1, 0x7f0401a1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p2, v1}, Landroidx/appcompat/widget/c0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/f0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/f0;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/f0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/h0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/h0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Landroidx/appcompat/widget/h0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/i0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/i0;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/l0;
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/widget/l0;

    .line 2
    .line 3
    const v1, 0x7f0403f5

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, p2, v1}, Landroidx/appcompat/widget/l0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/m0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/m0;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/m0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/o0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/o0;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/o0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/a1;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/a1;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/a1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/m1;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/m1;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/m1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createToggleButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/v1;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/v1;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/v1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .locals 3

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    const/4 p5, 0x4

    const/4 v0, 0x0

    if-nez p6, :cond_1

    if-eqz p7, :cond_5

    :cond_1
    sget-object v1, Le/a;->A:[I

    .line 2
    invoke-virtual {p1, p4, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz p6, :cond_2

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p6

    goto :goto_1

    :cond_2
    move p6, v0

    :goto_1
    if-eqz p7, :cond_3

    if-nez p6, :cond_3

    invoke-virtual {v1, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p6

    if-eqz p6, :cond_3

    const-string p7, "AppCompatViewInflater"

    const-string v2, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {p7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p6, :cond_5

    instance-of p7, p1, Li/f;

    if-eqz p7, :cond_4

    move-object p7, p1

    check-cast p7, Li/f;

    .line 3
    iget p7, p7, Li/f;->a:I

    if-eq p7, p6, :cond_5

    .line 4
    :cond_4
    new-instance p7, Li/f;

    invoke-direct {p7, p1, p6}, Li/f;-><init>(Landroid/content/Context;I)V

    move-object p1, p7

    :cond_5
    if-eqz p8, :cond_6

    .line 5
    invoke-static {p1}, Landroidx/appcompat/widget/e4;->a(Landroid/content/Context;)V

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p6

    const/4 p7, 0x3

    const/4 p8, -0x1

    const/4 v1, 0x1

    sparse-switch p6, :sswitch_data_0

    :goto_2
    move p5, p8

    goto/16 :goto_3

    :sswitch_0
    const-string p5, "Button"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_7

    goto :goto_2

    :cond_7
    const/16 p5, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string p5, "EditText"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_8

    goto :goto_2

    :cond_8
    const/16 p5, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string p5, "CheckBox"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_9

    goto :goto_2

    :cond_9
    const/16 p5, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string p5, "AutoCompleteTextView"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_a

    goto :goto_2

    :cond_a
    const/16 p5, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string p5, "ImageView"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_b

    goto :goto_2

    :cond_b
    const/16 p5, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string p5, "ToggleButton"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_c

    goto :goto_2

    :cond_c
    const/16 p5, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string p5, "RadioButton"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_d

    goto :goto_2

    :cond_d
    const/4 p5, 0x7

    goto :goto_3

    :sswitch_7
    const-string p5, "Spinner"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_e

    goto :goto_2

    :cond_e
    const/4 p5, 0x6

    goto :goto_3

    :sswitch_8
    const-string p5, "SeekBar"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_f

    goto :goto_2

    :cond_f
    const/4 p5, 0x5

    goto :goto_3

    :sswitch_9
    const-string p6, "ImageButton"

    invoke-virtual {p2, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_14

    goto :goto_2

    :sswitch_a
    const-string p5, "TextView"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_10

    goto/16 :goto_2

    :cond_10
    move p5, p7

    goto :goto_3

    :sswitch_b
    const-string p5, "MultiAutoCompleteTextView"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_11

    goto/16 :goto_2

    :cond_11
    const/4 p5, 0x2

    goto :goto_3

    :sswitch_c
    const-string p5, "CheckedTextView"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_12

    goto/16 :goto_2

    :cond_12
    move p5, v1

    goto :goto_3

    :sswitch_d
    const-string p5, "RatingBar"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_13

    goto/16 :goto_2

    :cond_13
    move p5, v0

    :cond_14
    :goto_3
    packed-switch p5, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p4}, Lf/l0;->createView(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p5

    goto :goto_5

    :pswitch_0
    invoke-virtual {p0, p1, p4}, Lf/l0;->createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/u;

    move-result-object p5

    :goto_4
    invoke-virtual {p0, p5, p2}, Lf/l0;->b(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_1
    invoke-virtual {p0, p1, p4}, Lf/l0;->createEditText(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/c0;

    move-result-object p5

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0, p1, p4}, Lf/l0;->createCheckBox(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/v;

    move-result-object p5

    goto :goto_4

    :pswitch_3
    invoke-virtual {p0, p1, p4}, Lf/l0;->createAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/s;

    move-result-object p5

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0, p1, p4}, Lf/l0;->createImageView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/h0;

    move-result-object p5

    goto :goto_4

    :pswitch_5
    invoke-virtual {p0, p1, p4}, Lf/l0;->createToggleButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/v1;

    move-result-object p5

    goto :goto_4

    :pswitch_6
    invoke-virtual {p0, p1, p4}, Lf/l0;->createRadioButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/l0;

    move-result-object p5

    goto :goto_4

    :pswitch_7
    invoke-virtual {p0, p1, p4}, Lf/l0;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/a1;

    move-result-object p5

    goto :goto_4

    :pswitch_8
    invoke-virtual {p0, p1, p4}, Lf/l0;->createSeekBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/o0;

    move-result-object p5

    goto :goto_4

    :pswitch_9
    invoke-virtual {p0, p1, p4}, Lf/l0;->createImageButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/f0;

    move-result-object p5

    goto :goto_4

    :pswitch_a
    invoke-virtual {p0, p1, p4}, Lf/l0;->createTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/m1;

    move-result-object p5

    goto :goto_4

    :pswitch_b
    invoke-virtual {p0, p1, p4}, Lf/l0;->createMultiAutoCompleteTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/i0;

    move-result-object p5

    goto :goto_4

    :pswitch_c
    invoke-virtual {p0, p1, p4}, Lf/l0;->createCheckedTextView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/w;

    move-result-object p5

    goto :goto_4

    :pswitch_d
    invoke-virtual {p0, p1, p4}, Lf/l0;->createRatingBar(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/m0;

    move-result-object p5

    goto :goto_4

    :goto_5
    if-nez p5, :cond_19

    if-eq p3, p1, :cond_19

    const-string p3, "view"

    .line 6
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_15

    const-string p2, "class"

    invoke-interface {p4, p5, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_15
    :try_start_0
    iget-object p3, p0, Lf/l0;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p1, p3, v0

    aput-object p4, p3, v1

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne p8, p3, :cond_18

    move p3, v0

    :goto_6
    sget-object p6, Lf/l0;->sClassPrefixList:[Ljava/lang/String;

    array-length p8, p6

    if-ge p3, p8, :cond_17

    aget-object p6, p6, p3

    invoke-virtual {p0, p1, p2, p6}, Lf/l0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_16

    iget-object p2, p0, Lf/l0;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p5, p2, v0

    aput-object p5, p2, v1

    move-object p5, p6

    goto :goto_8

    :cond_16
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_17
    iget-object p2, p0, Lf/l0;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p5, p2, v0

    aput-object p5, p2, v1

    goto :goto_8

    :cond_18
    :try_start_1
    invoke-virtual {p0, p1, p2, p5}, Lf/l0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p3, p0, Lf/l0;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p5, p3, v0

    aput-object p5, p3, v1

    move-object p5, p2

    goto :goto_8

    :goto_7
    iget-object p2, p0, Lf/l0;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p5, p2, v0

    aput-object p5, p2, v1

    throw p1

    :catch_0
    iget-object p2, p0, Lf/l0;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p5, p2, v0

    aput-object p5, p2, v1

    :cond_19
    :goto_8
    if-eqz p5, :cond_21

    .line 7
    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p3, p2, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1c

    sget-object p3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 8
    invoke-static {p5}, Landroidx/core/view/j0;->a(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_1a

    goto :goto_9

    :cond_1a
    sget-object p3, Lf/l0;->sOnClickAttrs:[I

    .line 9
    invoke-virtual {p2, p4, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1b

    new-instance p6, Lf/k0;

    invoke-direct {p6, p5, p3}, Lf/k0;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p5, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1b
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1c
    :goto_9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-le p2, p3, :cond_1d

    goto :goto_a

    :cond_1d
    sget-object p2, Lf/l0;->sAccessibilityHeading:[I

    .line 10
    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1e

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    sget-object p6, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 11
    new-instance p6, Landroidx/core/view/g0;

    const p8, 0x7f0a0614

    invoke-direct {p6, p8, p7}, Landroidx/core/view/g0;-><init>(II)V

    .line 12
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p6, p5, p3}, Landroidx/core/view/i0;->b(Landroid/view/View;Ljava/lang/Object;)V

    .line 13
    :cond_1e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p2, Lf/l0;->sAccessibilityPaneTitle:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1f

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p5, p3}, Landroidx/core/view/c1;->p(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1f
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p2, Lf/l0;->sScreenReaderFocusable:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 14
    sget-object p3, Landroidx/core/view/c1;->a:Ljava/util/WeakHashMap;

    .line 15
    new-instance p3, Landroidx/core/view/g0;

    const p4, 0x7f0a061a

    invoke-direct {p3, p4, v0}, Landroidx/core/view/g0;-><init>(II)V

    .line 16
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p5, p2}, Landroidx/core/view/i0;->b(Landroid/view/View;Ljava/lang/Object;)V

    .line 17
    :cond_20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_21
    :goto_a
    return-object p5

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
