.class public final enum Lde/mrapp/android/util/logging/LogLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/mrapp/android/util/logging/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/mrapp/android/util/logging/LogLevel;

.field public static final enum ALL:Lde/mrapp/android/util/logging/LogLevel;

.field public static final enum DEBUG:Lde/mrapp/android/util/logging/LogLevel;

.field public static final enum ERROR:Lde/mrapp/android/util/logging/LogLevel;

.field public static final enum INFO:Lde/mrapp/android/util/logging/LogLevel;

.field public static final enum OFF:Lde/mrapp/android/util/logging/LogLevel;

.field public static final enum VERBOSE:Lde/mrapp/android/util/logging/LogLevel;

.field public static final enum WARN:Lde/mrapp/android/util/logging/LogLevel;


# instance fields
.field private rank:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lde/mrapp/android/util/logging/LogLevel;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lde/mrapp/android/util/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lde/mrapp/android/util/logging/LogLevel;->ALL:Lde/mrapp/android/util/logging/LogLevel;

    new-instance v1, Lde/mrapp/android/util/logging/LogLevel;

    const-string v2, "VERBOSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lde/mrapp/android/util/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lde/mrapp/android/util/logging/LogLevel;->VERBOSE:Lde/mrapp/android/util/logging/LogLevel;

    new-instance v2, Lde/mrapp/android/util/logging/LogLevel;

    const-string v3, "DEBUG"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lde/mrapp/android/util/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lde/mrapp/android/util/logging/LogLevel;->DEBUG:Lde/mrapp/android/util/logging/LogLevel;

    new-instance v3, Lde/mrapp/android/util/logging/LogLevel;

    const-string v4, "INFO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lde/mrapp/android/util/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lde/mrapp/android/util/logging/LogLevel;->INFO:Lde/mrapp/android/util/logging/LogLevel;

    new-instance v4, Lde/mrapp/android/util/logging/LogLevel;

    const-string v5, "WARN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lde/mrapp/android/util/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lde/mrapp/android/util/logging/LogLevel;->WARN:Lde/mrapp/android/util/logging/LogLevel;

    new-instance v5, Lde/mrapp/android/util/logging/LogLevel;

    const-string v6, "ERROR"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lde/mrapp/android/util/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lde/mrapp/android/util/logging/LogLevel;->ERROR:Lde/mrapp/android/util/logging/LogLevel;

    new-instance v6, Lde/mrapp/android/util/logging/LogLevel;

    const-string v7, "OFF"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lde/mrapp/android/util/logging/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lde/mrapp/android/util/logging/LogLevel;->OFF:Lde/mrapp/android/util/logging/LogLevel;

    filled-new-array/range {v0 .. v6}, [Lde/mrapp/android/util/logging/LogLevel;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/util/logging/LogLevel;->$VALUES:[Lde/mrapp/android/util/logging/LogLevel;

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

    iput p3, p0, Lde/mrapp/android/util/logging/LogLevel;->rank:I

    return-void
.end method

.method public static fromRank(I)Lde/mrapp/android/util/logging/LogLevel;
    .locals 0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lde/mrapp/android/util/logging/LogLevel;->OFF:Lde/mrapp/android/util/logging/LogLevel;

    return-object p0

    :pswitch_1
    sget-object p0, Lde/mrapp/android/util/logging/LogLevel;->ERROR:Lde/mrapp/android/util/logging/LogLevel;

    return-object p0

    :pswitch_2
    sget-object p0, Lde/mrapp/android/util/logging/LogLevel;->WARN:Lde/mrapp/android/util/logging/LogLevel;

    return-object p0

    :pswitch_3
    sget-object p0, Lde/mrapp/android/util/logging/LogLevel;->INFO:Lde/mrapp/android/util/logging/LogLevel;

    return-object p0

    :pswitch_4
    sget-object p0, Lde/mrapp/android/util/logging/LogLevel;->DEBUG:Lde/mrapp/android/util/logging/LogLevel;

    return-object p0

    :pswitch_5
    sget-object p0, Lde/mrapp/android/util/logging/LogLevel;->VERBOSE:Lde/mrapp/android/util/logging/LogLevel;

    return-object p0

    :pswitch_6
    sget-object p0, Lde/mrapp/android/util/logging/LogLevel;->ALL:Lde/mrapp/android/util/logging/LogLevel;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lde/mrapp/android/util/logging/LogLevel;
    .locals 1

    const-class v0, Lde/mrapp/android/util/logging/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/mrapp/android/util/logging/LogLevel;

    return-object p0
.end method

.method public static values()[Lde/mrapp/android/util/logging/LogLevel;
    .locals 1

    sget-object v0, Lde/mrapp/android/util/logging/LogLevel;->$VALUES:[Lde/mrapp/android/util/logging/LogLevel;

    invoke-virtual {v0}, [Lde/mrapp/android/util/logging/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/mrapp/android/util/logging/LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getRank()I
    .locals 1

    iget v0, p0, Lde/mrapp/android/util/logging/LogLevel;->rank:I

    return v0
.end method
