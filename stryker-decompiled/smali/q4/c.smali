.class public final enum Lq4/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lq4/c;

.field public static final enum b:Lq4/c;

.field public static final synthetic c:[Lq4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lq4/c;

    .line 2
    .line 3
    const-string v1, "RGB"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lq4/c;->a:Lq4/c;

    .line 10
    .line 11
    new-instance v1, Lq4/c;

    .line 12
    .line 13
    const-string v2, "HSV"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lq4/c;

    .line 20
    .line 21
    const-string v3, "ARGB"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lq4/c;->b:Lq4/c;

    .line 28
    .line 29
    filled-new-array {v0, v1, v2}, [Lq4/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lq4/c;->c:[Lq4/c;

    .line 34
    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/c;
    .locals 1

    .line 1
    const-class v0, Lq4/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/c;

    return-object p0
.end method

.method public static values()[Lq4/c;
    .locals 1

    .line 1
    sget-object v0, Lq4/c;->c:[Lq4/c;

    invoke-virtual {v0}, [Lq4/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/c;

    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/fragment/app/x0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x19

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    new-instance v0, Landroidx/fragment/app/x0;

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/fragment/app/x0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    return-object v0

    :cond_1
    new-instance v0, Landroidx/fragment/app/x0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    return-object v0

    :cond_2
    new-instance v0, Landroidx/fragment/app/x0;

    invoke-direct {v0, v1}, Landroidx/fragment/app/x0;-><init>(I)V

    return-object v0
.end method
