.class public final enum Ln2/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Ln2/e;

.field public static final enum b:Ln2/e;

.field public static final enum c:Ln2/e;

.field public static final enum d:Ln2/e;

.field public static final enum e:Ln2/e;

.field public static final enum f:Ln2/e;

.field public static final synthetic g:[Ln2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ln2/e;

    .line 2
    .line 3
    const-string v1, "INFO"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ln2/e;->a:Ln2/e;

    .line 10
    .line 11
    new-instance v1, Ln2/e;

    .line 12
    .line 13
    const-string v2, "STEP"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ln2/e;->b:Ln2/e;

    .line 20
    .line 21
    new-instance v2, Ln2/e;

    .line 22
    .line 23
    const-string v3, "SUCCESS"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Ln2/e;->c:Ln2/e;

    .line 30
    .line 31
    new-instance v3, Ln2/e;

    .line 32
    .line 33
    const-string v4, "WARN"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Ln2/e;->d:Ln2/e;

    .line 40
    .line 41
    new-instance v4, Ln2/e;

    .line 42
    .line 43
    const-string v5, "ERROR"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Ln2/e;->e:Ln2/e;

    .line 50
    .line 51
    new-instance v5, Ln2/e;

    .line 52
    .line 53
    const-string v6, "CMD"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Ln2/e;->f:Ln2/e;

    .line 60
    .line 61
    filled-new-array/range {v0 .. v5}, [Ln2/e;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Ln2/e;->g:[Ln2/e;

    .line 66
    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln2/e;
    .locals 1

    .line 1
    const-class v0, Ln2/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln2/e;

    return-object p0
.end method

.method public static values()[Ln2/e;
    .locals 1

    .line 1
    sget-object v0, Ln2/e;->g:[Ln2/e;

    invoke-virtual {v0}, [Ln2/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln2/e;

    return-object v0
.end method
