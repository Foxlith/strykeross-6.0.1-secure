.class public final enum Ln4/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Ln4/a;

.field public static final enum c:Ln4/a;

.field public static final enum d:Ln4/a;

.field public static final enum e:Ln4/a;

.field public static final enum f:Ln4/a;

.field public static final synthetic g:[Ln4/a;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ln4/a;

    const/4 v1, 0x0

    const v2, 0x7f130707

    const-string v3, "REFRESH"

    invoke-direct {v0, v3, v1, v2}, Ln4/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln4/a;->b:Ln4/a;

    new-instance v1, Ln4/a;

    const/4 v2, 0x1

    const v3, 0x7f130705

    const-string v4, "PACKAGES"

    invoke-direct {v1, v4, v2, v3}, Ln4/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ln4/a;->c:Ln4/a;

    new-instance v2, Ln4/a;

    const/4 v3, 0x2

    const v4, 0x7f130706

    const-string v5, "PASSWORD"

    invoke-direct {v2, v5, v3, v4}, Ln4/a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ln4/a;->d:Ln4/a;

    new-instance v3, Ln4/a;

    const/4 v4, 0x3

    const v5, 0x7f130708

    const-string v6, "SCRIPTS"

    invoke-direct {v3, v6, v4, v5}, Ln4/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ln4/a;->e:Ln4/a;

    new-instance v4, Ln4/a;

    const/4 v5, 0x4

    const v6, 0x7f130709

    const-string v7, "VERIFY"

    invoke-direct {v4, v7, v5, v6}, Ln4/a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ln4/a;->f:Ln4/a;

    filled-new-array {v0, v1, v2, v3, v4}, [Ln4/a;

    move-result-object v0

    sput-object v0, Ln4/a;->g:[Ln4/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ln4/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln4/a;
    .locals 1

    .line 1
    const-class v0, Ln4/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln4/a;

    return-object p0
.end method

.method public static values()[Ln4/a;
    .locals 1

    .line 1
    sget-object v0, Ln4/a;->g:[Ln4/a;

    invoke-virtual {v0}, [Ln4/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln4/a;

    return-object v0
.end method
