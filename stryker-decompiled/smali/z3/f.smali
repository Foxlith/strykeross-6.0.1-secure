.class public final enum Lz3/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lz3/f;

.field public static final enum b:Lz3/f;

.field public static final enum c:Lz3/f;

.field public static final enum d:Lz3/f;

.field public static final synthetic e:[Lz3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lz3/f;

    .line 2
    .line 3
    const-string v1, "IDLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lz3/f;->a:Lz3/f;

    .line 10
    .line 11
    new-instance v1, Lz3/f;

    .line 12
    .line 13
    const-string v2, "BOOTING"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lz3/f;->b:Lz3/f;

    .line 20
    .line 21
    new-instance v2, Lz3/f;

    .line 22
    .line 23
    const-string v3, "READY"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lz3/f;->c:Lz3/f;

    .line 30
    .line 31
    new-instance v3, Lz3/f;

    .line 32
    .line 33
    const-string v4, "DEAD"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lz3/f;->d:Lz3/f;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lz3/f;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lz3/f;->e:[Lz3/f;

    .line 46
    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz3/f;
    .locals 1

    .line 1
    const-class v0, Lz3/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz3/f;

    return-object p0
.end method

.method public static values()[Lz3/f;
    .locals 1

    .line 1
    sget-object v0, Lz3/f;->e:[Lz3/f;

    invoke-virtual {v0}, [Lz3/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz3/f;

    return-object v0
.end method
