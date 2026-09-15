.class public final enum Le3/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Le3/a;

.field public static final enum b:Le3/a;

.field public static final enum c:Le3/a;

.field public static final enum d:Le3/a;

.field public static final enum e:Le3/a;

.field public static final enum f:Le3/a;

.field public static final synthetic g:[Le3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Le3/a;

    .line 2
    .line 3
    const-string v1, "READY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Le3/a;->a:Le3/a;

    .line 10
    .line 11
    new-instance v1, Le3/a;

    .line 12
    .line 13
    const-string v2, "ROOT_DENIED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Le3/a;->b:Le3/a;

    .line 20
    .line 21
    new-instance v2, Le3/a;

    .line 22
    .line 23
    const-string v3, "KERNEL_TOO_OLD"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Le3/a;->c:Le3/a;

    .line 30
    .line 31
    new-instance v3, Le3/a;

    .line 32
    .line 33
    const-string v4, "CONFIGFS_MISSING"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Le3/a;->d:Le3/a;

    .line 40
    .line 41
    new-instance v4, Le3/a;

    .line 42
    .line 43
    const-string v5, "UDC_MISSING"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Le3/a;->e:Le3/a;

    .line 50
    .line 51
    new-instance v5, Le3/a;

    .line 52
    .line 53
    const-string v6, "HID_NODE_MISSING"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Le3/a;->f:Le3/a;

    .line 60
    .line 61
    new-instance v6, Le3/a;

    .line 62
    .line 63
    const-string v7, "SELINUX_DENIES"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    filled-new-array/range {v0 .. v6}, [Le3/a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Le3/a;->g:[Le3/a;

    .line 74
    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le3/a;
    .locals 1

    .line 1
    const-class v0, Le3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le3/a;

    return-object p0
.end method

.method public static values()[Le3/a;
    .locals 1

    .line 1
    sget-object v0, Le3/a;->g:[Le3/a;

    invoke-virtual {v0}, [Le3/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le3/a;

    return-object v0
.end method
