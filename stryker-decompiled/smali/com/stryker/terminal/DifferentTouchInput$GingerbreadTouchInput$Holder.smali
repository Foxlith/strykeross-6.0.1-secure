.class Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput;

    invoke-direct {v0}, Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput;-><init>()V

    sput-object v0, Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput$Holder;->sInstance:Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput$Holder;->sInstance:Lcom/stryker/terminal/DifferentTouchInput$GingerbreadTouchInput;

    return-object v0
.end method
