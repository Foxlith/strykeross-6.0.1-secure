.class public final enum Lg5/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lg5/h;

.field public static final synthetic b:[Lg5/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lg5/h;

    .line 2
    .line 3
    const-string v1, "TOP_DOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lg5/h;

    .line 10
    .line 11
    const-string v2, "BOTTOM_UP"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lg5/h;->a:Lg5/h;

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Lg5/h;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lg5/h;->b:[Lg5/h;

    .line 24
    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg5/h;
    .locals 1

    .line 1
    const-class v0, Lg5/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg5/h;

    return-object p0
.end method

.method public static values()[Lg5/h;
    .locals 1

    .line 1
    sget-object v0, Lg5/h;->b:[Lg5/h;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg5/h;

    return-object v0
.end method
