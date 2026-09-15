.class Lcom/stryker/terminal/SettingsMenuMisc$VideoSettingsConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMisc$VideoSettingsConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuMisc$VideoSettingsConfig;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMisc$VideoSettingsConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$VideoSettingsConfig$1;->this$0:Lcom/stryker/terminal/SettingsMenuMisc$VideoSettingsConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    if-nez p2, :cond_0

    sput-boolean p3, Lcom/stryker/terminal/Globals;->KeepAspectRatio:Z

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    sput-boolean p3, Lcom/stryker/terminal/Globals;->VideoLinearFilter:Z

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    sput-boolean p3, Lcom/stryker/terminal/Globals;->ImmersiveMode:Z

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    sput-boolean p3, Lcom/stryker/terminal/Globals;->AutoDetectOrientation:Z

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    xor-int/lit8 p1, p3, 0x1

    sput-boolean p1, Lcom/stryker/terminal/Globals;->HorizontalOrientation:Z

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_6

    if-eqz p3, :cond_5

    const/16 p1, 0x18

    goto :goto_0

    :cond_5
    const/16 p1, 0x10

    :goto_0
    sput p1, Lcom/stryker/terminal/Globals;->VideoDepthBpp:I

    :cond_6
    const/4 p1, 0x6

    if-ne p2, p1, :cond_7

    sput-boolean p3, Lcom/stryker/terminal/Globals;->TvBorders:Z

    :cond_7
    const/4 p1, 0x7

    if-ne p2, p1, :cond_8

    sput-boolean p3, Lcom/stryker/terminal/Globals;->MultiThreadedVideo:Z

    :cond_8
    return-void
.end method
