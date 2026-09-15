.class public final enum Lde/mrapp/android/tabswitcher/LayoutPolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/tabswitcher/LayoutPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/tabswitcher/LayoutPolicy;

.field public static final enum AUTO:Lde/mrapp/android/tabswitcher/LayoutPolicy;

.field public static final enum PHONE:Lde/mrapp/android/tabswitcher/LayoutPolicy;

.field public static final enum TABLET:Lde/mrapp/android/tabswitcher/LayoutPolicy;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lde/mrapp/android/tabswitcher/LayoutPolicy;
    .locals 3

    sget-object v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;->AUTO:Lde/mrapp/android/tabswitcher/LayoutPolicy;

    sget-object v1, Lde/mrapp/android/tabswitcher/LayoutPolicy;->PHONE:Lde/mrapp/android/tabswitcher/LayoutPolicy;

    sget-object v2, Lde/mrapp/android/tabswitcher/LayoutPolicy;->TABLET:Lde/mrapp/android/tabswitcher/LayoutPolicy;

    filled-new-array {v0, v1, v2}, [Lde/mrapp/android/tabswitcher/LayoutPolicy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/tabswitcher/LayoutPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;->AUTO:Lde/mrapp/android/tabswitcher/LayoutPolicy;

    new-instance v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;

    const-string v1, "PHONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/tabswitcher/LayoutPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;->PHONE:Lde/mrapp/android/tabswitcher/LayoutPolicy;

    new-instance v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;

    const-string v1, "TABLET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/tabswitcher/LayoutPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;->TABLET:Lde/mrapp/android/tabswitcher/LayoutPolicy;

    invoke-static {}, Lde/mrapp/android/tabswitcher/LayoutPolicy;->$values()[Lde/mrapp/android/tabswitcher/LayoutPolicy;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;->$VALUES:[Lde/mrapp/android/tabswitcher/LayoutPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lde/mrapp/android/tabswitcher/LayoutPolicy;->value:I

    return-void
.end method

.method public static fromValue(I)Lde/mrapp/android/tabswitcher/LayoutPolicy;
    .locals 5

    .line 1
    invoke-static {}, Lde/mrapp/android/tabswitcher/LayoutPolicy;->values()[Lde/mrapp/android/tabswitcher/LayoutPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Lde/mrapp/android/tabswitcher/LayoutPolicy;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-ne v4, p0, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v1, "Invalid enum value: "

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/tabswitcher/LayoutPolicy;
    .locals 1

    const-class v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/tabswitcher/LayoutPolicy;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/tabswitcher/LayoutPolicy;
    .locals 1

    sget-object v0, Lde/mrapp/android/tabswitcher/LayoutPolicy;->$VALUES:[Lde/mrapp/android/tabswitcher/LayoutPolicy;

    invoke-virtual {v0}, [Lde/mrapp/android/tabswitcher/LayoutPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/tabswitcher/LayoutPolicy;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lde/mrapp/android/tabswitcher/LayoutPolicy;->value:I

    return v0
.end method
