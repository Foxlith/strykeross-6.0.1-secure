.class public final enum Ln3/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Ln3/o;

.field public static final enum b:Ln3/o;

.field public static final enum c:Ln3/o;

.field public static final synthetic d:[Ln3/o;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ln3/o;

    .line 2
    .line 3
    const-string v1, "PENDING"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ln3/o;->a:Ln3/o;

    .line 10
    .line 11
    new-instance v1, Ln3/o;

    .line 12
    .line 13
    const-string v2, "ACTIVE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ln3/o;->b:Ln3/o;

    .line 20
    .line 21
    new-instance v2, Ln3/o;

    .line 22
    .line 23
    const-string v3, "DONE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Ln3/o;->c:Ln3/o;

    .line 30
    .line 31
    new-instance v3, Ln3/o;

    .line 32
    .line 33
    const-string v4, "FAILED"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    filled-new-array {v0, v1, v2, v3}, [Ln3/o;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Ln3/o;->d:[Ln3/o;

    .line 44
    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln3/o;
    .locals 1

    .line 1
    const-class v0, Ln3/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln3/o;

    return-object p0
.end method

.method public static values()[Ln3/o;
    .locals 1

    .line 1
    sget-object v0, Ln3/o;->d:[Ln3/o;

    invoke-virtual {v0}, [Ln3/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/o;

    return-object v0
.end method
