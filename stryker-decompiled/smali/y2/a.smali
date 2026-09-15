.class public final enum Ly2/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Ly2/a;

.field public static final enum b:Ly2/a;

.field public static final enum c:Ly2/a;

.field public static final enum d:Ly2/a;

.field public static final enum e:Ly2/a;

.field public static final synthetic f:[Ly2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ly2/a;

    .line 2
    .line 3
    const-string v1, "LOOKUP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ly2/a;->a:Ly2/a;

    .line 10
    .line 11
    new-instance v1, Ly2/a;

    .line 12
    .line 13
    const-string v2, "SCAN"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ly2/a;->b:Ly2/a;

    .line 20
    .line 21
    new-instance v2, Ly2/a;

    .line 22
    .line 23
    const-string v3, "CRACKED_HANDSHAKE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Ly2/a;->c:Ly2/a;

    .line 30
    .line 31
    new-instance v3, Ly2/a;

    .line 32
    .line 33
    const-string v4, "CRACKED_PIXIE"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Ly2/a;->d:Ly2/a;

    .line 40
    .line 41
    new-instance v4, Ly2/a;

    .line 42
    .line 43
    const-string v5, "MANUAL"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Ly2/a;->e:Ly2/a;

    .line 50
    .line 51
    filled-new-array {v0, v1, v2, v3, v4}, [Ly2/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Ly2/a;->f:[Ly2/a;

    .line 56
    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly2/a;
    .locals 1

    .line 1
    const-class v0, Ly2/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/a;

    return-object p0
.end method

.method public static values()[Ly2/a;
    .locals 1

    .line 1
    sget-object v0, Ly2/a;->f:[Ly2/a;

    invoke-virtual {v0}, [Ly2/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/a;

    return-object v0
.end method
