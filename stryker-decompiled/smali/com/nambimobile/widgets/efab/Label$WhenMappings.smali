.class public final synthetic Lcom/nambimobile/widgets/efab/Label$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nambimobile/widgets/efab/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/nambimobile/widgets/efab/LabelPosition;->values()[Lcom/nambimobile/widgets/efab/LabelPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/nambimobile/widgets/efab/LabelPosition;->LEFT:Lcom/nambimobile/widgets/efab/LabelPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/nambimobile/widgets/efab/LabelPosition;->RIGHT:Lcom/nambimobile/widgets/efab/LabelPosition;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/nambimobile/widgets/efab/Label$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
