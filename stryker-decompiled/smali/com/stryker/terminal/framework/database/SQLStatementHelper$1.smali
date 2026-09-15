.class synthetic Lcom/stryker/terminal/framework/database/SQLStatementHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/framework/database/SQLStatementHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$stryker$terminal$framework$database$DatabaseDataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/stryker/terminal/framework/database/DatabaseDataType;->values()[Lcom/stryker/terminal/framework/database/DatabaseDataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stryker/terminal/framework/database/SQLStatementHelper$1;->$SwitchMap$com$stryker$terminal$framework$database$DatabaseDataType:[I

    :try_start_0
    sget-object v1, Lcom/stryker/terminal/framework/database/DatabaseDataType;->INTEGER:Lcom/stryker/terminal/framework/database/DatabaseDataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
