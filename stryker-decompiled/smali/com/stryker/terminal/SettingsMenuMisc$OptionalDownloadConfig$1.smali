.class Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;

.field final synthetic val$itemsIdx:[I


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig$1;->this$0:Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig$1;->val$itemsIdx:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    sget-object p1, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    iget-object v0, p0, Lcom/stryker/terminal/SettingsMenuMisc$OptionalDownloadConfig$1;->val$itemsIdx:[I

    aget p2, v0, p2

    aput-boolean p3, p1, p2

    return-void
.end method
