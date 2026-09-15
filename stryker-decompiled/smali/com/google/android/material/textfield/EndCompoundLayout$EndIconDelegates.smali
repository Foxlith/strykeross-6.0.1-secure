.class Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/EndCompoundLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndIconDelegates"
.end annotation


# instance fields
.field private final customEndIconDrawableId:I

.field private final delegates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/textfield/EndIconDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

.field private final passwordIconDrawableId:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;Landroidx/appcompat/widget/h4;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->delegates:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 12
    .line 13
    sget p1, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconDrawable:I

    .line 14
    .line 15
    iget-object v0, p2, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->customEndIconDrawableId:I

    .line 23
    .line 24
    sget p1, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleDrawable:I

    .line 25
    .line 26
    iget-object p2, p2, Landroidx/appcompat/widget/h4;->b:Landroid/content/res/TypedArray;

    .line 27
    .line 28
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->passwordIconDrawableId:I

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic access$500(Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->customEndIconDrawableId:I

    return p0
.end method

.method private create(I)Lcom/google/android/material/textfield/EndIconDelegate;
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "Invalid end icon mode: "

    .line 26
    .line 27
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    new-instance p1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 38
    .line 39
    invoke-direct {p1, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 46
    .line 47
    iget v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->passwordIconDrawableId:I

    .line 48
    .line 49
    invoke-direct {p1, v0, v1}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;I)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_3
    new-instance p1, Lcom/google/android/material/textfield/NoEndIconDelegate;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 56
    .line 57
    invoke-direct {p1, v0}, Lcom/google/android/material/textfield/NoEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_4
    new-instance p1, Lcom/google/android/material/textfield/CustomEndIconDelegate;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 64
    .line 65
    invoke-direct {p1, v0}, Lcom/google/android/material/textfield/CustomEndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 66
    .line 67
    .line 68
    return-object p1
.end method


# virtual methods
.method public get(I)Lcom/google/android/material/textfield/EndIconDelegate;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/EndIconDelegate;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->create(I)Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->delegates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method
