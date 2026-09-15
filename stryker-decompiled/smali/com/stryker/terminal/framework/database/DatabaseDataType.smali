.class public final enum Lcom/stryker/terminal/framework/database/DatabaseDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stryker/terminal/framework/database/DatabaseDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stryker/terminal/framework/database/DatabaseDataType;

.field public static final enum BIGINT:Lcom/stryker/terminal/framework/database/DatabaseDataType;

.field public static final enum DOUBLE:Lcom/stryker/terminal/framework/database/DatabaseDataType;

.field public static final enum FLOAT:Lcom/stryker/terminal/framework/database/DatabaseDataType;

.field public static final enum INTEGER:Lcom/stryker/terminal/framework/database/DatabaseDataType;

.field public static final enum TEXT:Lcom/stryker/terminal/framework/database/DatabaseDataType;


# instance fields
.field nullable:Z


# direct methods
.method private static synthetic $values()[Lcom/stryker/terminal/framework/database/DatabaseDataType;
    .locals 5

    sget-object v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->INTEGER:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    sget-object v1, Lcom/stryker/terminal/framework/database/DatabaseDataType;->TEXT:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    sget-object v2, Lcom/stryker/terminal/framework/database/DatabaseDataType;->FLOAT:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    sget-object v3, Lcom/stryker/terminal/framework/database/DatabaseDataType;->BIGINT:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    sget-object v4, Lcom/stryker/terminal/framework/database/DatabaseDataType;->DOUBLE:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stryker/terminal/framework/database/DatabaseDataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stryker/terminal/framework/database/DatabaseDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->INTEGER:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    new-instance v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;

    const-string v1, "TEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stryker/terminal/framework/database/DatabaseDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->TEXT:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    new-instance v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;

    const-string v1, "FLOAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stryker/terminal/framework/database/DatabaseDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->FLOAT:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    new-instance v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;

    const-string v1, "BIGINT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stryker/terminal/framework/database/DatabaseDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->BIGINT:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    new-instance v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stryker/terminal/framework/database/DatabaseDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->DOUBLE:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    invoke-static {}, Lcom/stryker/terminal/framework/database/DatabaseDataType;->$values()[Lcom/stryker/terminal/framework/database/DatabaseDataType;

    move-result-object v0

    sput-object v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->$VALUES:[Lcom/stryker/terminal/framework/database/DatabaseDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->nullable:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stryker/terminal/framework/database/DatabaseDataType;
    .locals 1

    const-class v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stryker/terminal/framework/database/DatabaseDataType;

    return-object p0
.end method

.method public static values()[Lcom/stryker/terminal/framework/database/DatabaseDataType;
    .locals 1

    sget-object v0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->$VALUES:[Lcom/stryker/terminal/framework/database/DatabaseDataType;

    invoke-virtual {v0}, [Lcom/stryker/terminal/framework/database/DatabaseDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stryker/terminal/framework/database/DatabaseDataType;

    return-object v0
.end method


# virtual methods
.method public nullable(Z)Lcom/stryker/terminal/framework/database/DatabaseDataType;
    .locals 0

    iput-boolean p1, p0, Lcom/stryker/terminal/framework/database/DatabaseDataType;->nullable:Z

    return-object p0
.end method
