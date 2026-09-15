.class Lcom/stryker/terminal/SettingsMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stryker/terminal/SettingsMenu$MainMenu;,
        Lcom/stryker/terminal/SettingsMenu$Menu;,
        Lcom/stryker/terminal/SettingsMenu$DummyMenu;,
        Lcom/stryker/terminal/SettingsMenu$OkButton;
    }
.end annotation


# static fields
.field static menuStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/stryker/terminal/SettingsMenu$Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/stryker/terminal/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goBack(Lcom/stryker/terminal/MainActivity;)V
    .locals 2

    sget-object v0, Lcom/stryker/terminal/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/stryker/terminal/Settings;->Save(Lcom/stryker/terminal/xorg/NeoXorgViewClient;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/stryker/terminal/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stryker/terminal/SettingsMenu$Menu;

    invoke-virtual {v0, p0}, Lcom/stryker/terminal/SettingsMenu$Menu;->run(Lcom/stryker/terminal/MainActivity;)V

    :goto_0
    return-void
.end method

.method public static goBackOuterMenu(Lcom/stryker/terminal/MainActivity;)V
    .locals 2

    sget-object v0, Lcom/stryker/terminal/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/stryker/terminal/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    return-void
.end method

.method public static showConfig(Lcom/stryker/terminal/MainActivity;Z)V
    .locals 11

    const/4 v0, 0x1

    sput-boolean v0, Lcom/stryker/terminal/Settings;->settingsChanged:Z

    sget-object v1, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    sget-object v1, Lcom/stryker/terminal/Globals;->DataDownloadUrl:[Ljava/lang/String;

    array-length v3, v1

    new-array v3, v3, [Z

    sput-object v3, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    move v4, v0

    move v3, v2

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    aget-object v5, v1, v3

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    sget-object v4, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    aput-boolean v0, v4, v3

    move v4, v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    sget-object v1, Lcom/stryker/terminal/Globals;->OptionalDataDownload:[Z

    aput-boolean v0, v1, v2

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Lcom/stryker/terminal/SettingsMenu$MainMenu;

    invoke-direct {p1}, Lcom/stryker/terminal/SettingsMenu$MainMenu;-><init>()V

    invoke-virtual {p1, p0}, Lcom/stryker/terminal/SettingsMenu$MainMenu;->run(Lcom/stryker/terminal/MainActivity;)V

    goto :goto_3

    :cond_3
    sget p1, Lcom/stryker/terminal/Globals;->StartupMenuButtonTimeout:I

    if-lez p1, :cond_7

    sget-object p1, Lcom/stryker/terminal/Globals;->FirstStartMenuOptions:[Lcom/stryker/terminal/SettingsMenu$Menu;

    array-length v1, p1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    sget-object v5, Lcom/stryker/terminal/Globals;->HiddenMenuOptions:[Lcom/stryker/terminal/SettingsMenu$Menu;

    array-length v6, v5

    move v7, v2

    move v8, v7

    :goto_2
    if-ge v7, v6, :cond_5

    aget-object v9, v5, v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-nez v8, :cond_6

    sget-object v5, Lcom/stryker/terminal/SettingsMenu;->menuStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    :goto_3
    return-void
.end method
