.class public Lcom/stryker/terminal/NeoTextInput;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static TextInputKeyboardList:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget v1, Lcom/stryker/terminal/xorg/R$xml;->qwerty:I

    sget v2, Lcom/stryker/terminal/xorg/R$xml;->c64:I

    sget v3, Lcom/stryker/terminal/xorg/R$xml;->amiga:I

    sget v4, Lcom/stryker/terminal/xorg/R$xml;->atari800:I

    const/4 v5, 0x0

    filled-new-array {v5, v1, v2, v3, v4}, [I

    move-result-object v1

    aput-object v1, v0, v5

    sget v1, Lcom/stryker/terminal/xorg/R$xml;->qwerty_shift:I

    sget v3, Lcom/stryker/terminal/xorg/R$xml;->amiga_shift:I

    filled-new-array {v5, v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget v1, Lcom/stryker/terminal/xorg/R$xml;->qwerty_alt:I

    sget v3, Lcom/stryker/terminal/xorg/R$xml;->amiga_alt:I

    filled-new-array {v5, v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget v1, Lcom/stryker/terminal/xorg/R$xml;->qwerty_alt_shift:I

    sget v3, Lcom/stryker/terminal/xorg/R$xml;->amiga_alt_shift:I

    filled-new-array {v5, v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/stryker/terminal/NeoTextInput;->TextInputKeyboardList:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
