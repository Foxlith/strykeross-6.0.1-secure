.class Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;-><init>(Lcom/stryker/terminal/DifferentTouchInput$1;)V

    sput-object v0, Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers$Holder;->sInstance:Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$1000()Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers$Holder;->sInstance:Lcom/stryker/terminal/DifferentTouchInput$CrappyMtkTabletWithBrokenTouchDrivers;

    return-object v0
.end method
