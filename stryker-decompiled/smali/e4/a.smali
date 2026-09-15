.class public final enum Le4/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Le4/a;

.field public static final enum c:Le4/a;

.field public static final enum d:Le4/a;

.field public static final enum e:Le4/a;

.field public static final enum f:Le4/a;

.field public static final enum g:Le4/a;

.field public static final enum h:Le4/a;

.field public static final synthetic i:[Le4/a;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Le4/a;

    const/4 v1, 0x0

    const v2, 0x7f1304de

    const-string v3, "PREPARE"

    invoke-direct {v0, v3, v1, v2}, Le4/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le4/a;->b:Le4/a;

    new-instance v1, Le4/a;

    const/4 v2, 0x1

    const v3, 0x7f1304df

    const-string v4, "REFRESH"

    invoke-direct {v1, v4, v2, v3}, Le4/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le4/a;->c:Le4/a;

    new-instance v2, Le4/a;

    const/4 v3, 0x2

    const v4, 0x7f1304dd

    const-string v5, "RESOLVE"

    invoke-direct {v2, v5, v3, v4}, Le4/a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Le4/a;->d:Le4/a;

    new-instance v3, Le4/a;

    const/4 v4, 0x3

    const v5, 0x7f1304dc

    const-string v6, "DOWNLOAD"

    invoke-direct {v3, v6, v4, v5}, Le4/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Le4/a;->e:Le4/a;

    new-instance v4, Le4/a;

    const/4 v5, 0x4

    const v6, 0x7f1304db

    const-string v7, "DEPLOY"

    invoke-direct {v4, v7, v5, v6}, Le4/a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Le4/a;->f:Le4/a;

    new-instance v5, Le4/a;

    const/4 v6, 0x5

    const v7, 0x7f1304e0

    const-string v8, "TEMPLATES"

    invoke-direct {v5, v8, v6, v7}, Le4/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Le4/a;->g:Le4/a;

    new-instance v6, Le4/a;

    const/4 v7, 0x6

    const v8, 0x7f1304e1

    const-string v9, "VERIFY"

    invoke-direct {v6, v9, v7, v8}, Le4/a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Le4/a;->h:Le4/a;

    filled-new-array/range {v0 .. v6}, [Le4/a;

    move-result-object v0

    sput-object v0, Le4/a;->i:[Le4/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Le4/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le4/a;
    .locals 1

    .line 1
    const-class v0, Le4/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le4/a;

    return-object p0
.end method

.method public static values()[Le4/a;
    .locals 1

    .line 1
    sget-object v0, Le4/a;->i:[Le4/a;

    invoke-virtual {v0}, [Le4/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le4/a;

    return-object v0
.end method
