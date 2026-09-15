.class public final enum Lo3/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lo3/a;

.field public static final enum c:Lo3/a;

.field public static final enum d:Lo3/a;

.field public static final synthetic e:[Lo3/a;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lo3/a;

    const/4 v1, 0x0

    const v2, 0x7f13029d

    const-string v3, "REFRESH"

    invoke-direct {v0, v3, v1, v2}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo3/a;->b:Lo3/a;

    new-instance v1, Lo3/a;

    const/4 v2, 0x1

    const v3, 0x7f13029c

    const-string v4, "INSTALL"

    invoke-direct {v1, v4, v2, v3}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo3/a;->c:Lo3/a;

    new-instance v2, Lo3/a;

    const/4 v3, 0x2

    const v4, 0x7f13029e

    const-string v5, "VERIFY"

    invoke-direct {v2, v5, v3, v4}, Lo3/a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lo3/a;->d:Lo3/a;

    filled-new-array {v0, v1, v2}, [Lo3/a;

    move-result-object v0

    sput-object v0, Lo3/a;->e:[Lo3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lo3/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo3/a;
    .locals 1

    .line 1
    const-class v0, Lo3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo3/a;

    return-object p0
.end method

.method public static values()[Lo3/a;
    .locals 1

    .line 1
    sget-object v0, Lo3/a;->e:[Lo3/a;

    invoke-virtual {v0}, [Lo3/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo3/a;

    return-object v0
.end method
