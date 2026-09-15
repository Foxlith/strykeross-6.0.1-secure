.class public final enum Lr2/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lr2/a;

.field public static final enum c:Lr2/a;

.field public static final enum d:Lr2/a;

.field public static final enum e:Lr2/a;

.field public static final synthetic f:[Lr2/a;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lr2/a;

    const/4 v1, 0x0

    const v2, 0x7f1300e6

    const-string v3, "REFRESH"

    invoke-direct {v0, v3, v1, v2}, Lr2/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr2/a;->b:Lr2/a;

    new-instance v1, Lr2/a;

    const/4 v2, 0x1

    const v3, 0x7f1300e5

    const-string v4, "DOWNLOAD"

    invoke-direct {v1, v4, v2, v3}, Lr2/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lr2/a;->c:Lr2/a;

    new-instance v2, Lr2/a;

    const/4 v3, 0x2

    const v4, 0x7f1300e7

    const-string v5, "UNPACK"

    invoke-direct {v2, v5, v3, v4}, Lr2/a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lr2/a;->d:Lr2/a;

    new-instance v3, Lr2/a;

    const/4 v4, 0x3

    const v5, 0x7f1300e8

    const-string v6, "VERIFY"

    invoke-direct {v3, v6, v4, v5}, Lr2/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lr2/a;->e:Lr2/a;

    filled-new-array {v0, v1, v2, v3}, [Lr2/a;

    move-result-object v0

    sput-object v0, Lr2/a;->f:[Lr2/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lr2/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr2/a;
    .locals 1

    .line 1
    const-class v0, Lr2/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr2/a;

    return-object p0
.end method

.method public static values()[Lr2/a;
    .locals 1

    .line 1
    sget-object v0, Lr2/a;->f:[Lr2/a;

    invoke-virtual {v0}, [Lr2/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr2/a;

    return-object v0
.end method
