.class Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig;->run(Lcom/stryker/terminal/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$p:Lcom/stryker/terminal/MainActivity;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig;Landroid/widget/EditText;Lcom/stryker/terminal/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$1;->this$0:Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig;

    iput-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$1;->val$edit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    const-string p2, "SDL_app"

    .line 2
    .line 3
    sput-object p2, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p2, p0, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$1;->val$edit:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "\n"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    array-length v0, p2

    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    move v3, v2

    .line 25
    :goto_0
    if-ge v3, v0, :cond_1

    .line 26
    .line 27
    aget-object v4, p2, v3

    .line 28
    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v6, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 35
    .line 36
    const-string v7, " "

    .line 37
    .line 38
    invoke-static {v5, v6, v7}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    sput-object v5, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    sget-object v5, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v5, v4}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_1
    sput-object v1, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    sget-object v5, Lcom/stryker/terminal/Globals;->CommandLine:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v5, "\t"

    .line 71
    .line 72
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_1

    .line 84
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    move v1, v2

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/stryker/terminal/SettingsMenuMisc$CommandlineConfig$1;->val$p:Lcom/stryker/terminal/MainActivity;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/stryker/terminal/SettingsMenu;->goBack(Lcom/stryker/terminal/MainActivity;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method
