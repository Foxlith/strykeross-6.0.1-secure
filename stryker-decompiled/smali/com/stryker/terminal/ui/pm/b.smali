.class public final synthetic Lcom/stryker/terminal/ui/pm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p5, p0, Lcom/stryker/terminal/ui/pm/b;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/stryker/terminal/ui/pm/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/stryker/terminal/ui/pm/b;->c:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/stryker/terminal/ui/pm/b;->d:Landroid/app/Activity;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/stryker/terminal/ui/pm/b;->e:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/stryker/terminal/ui/pm/b;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/stryker/terminal/ui/pm/b;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/stryker/terminal/ui/pm/b;->d:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/stryker/terminal/ui/pm/b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/stryker/terminal/ui/pm/b;->b:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Landroid/content/SharedPreferences;

    .line 15
    .line 16
    check-cast v3, Ljava/lang/String;

    .line 17
    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    .line 31
    .line 32
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 33
    .line 34
    const-string p2, "android.intent.action.VIEW"

    .line 35
    .line 36
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 41
    .line 42
    .line 43
    const/high16 p2, 0x10000000

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    return-void

    .line 52
    :pswitch_0
    move-object v0, v4

    .line 53
    check-cast v0, Landroid/widget/EditText;

    .line 54
    .line 55
    move-object v4, v3

    .line 56
    check-cast v4, Landroid/widget/EditText;

    .line 57
    .line 58
    move-object v5, v2

    .line 59
    check-cast v5, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;

    .line 60
    .line 61
    move-object v6, v1

    .line 62
    check-cast v6, Lcom/stryker/terminal/component/pm/SourceManager;

    .line 63
    .line 64
    move-object v3, v0

    .line 65
    move-object v7, p1

    .line 66
    move v8, p2

    .line 67
    invoke-static/range {v3 .. v8}, Lcom/stryker/terminal/ui/pm/PackageManagerActivity;->i(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/stryker/terminal/ui/pm/PackageManagerActivity;Lcom/stryker/terminal/component/pm/SourceManager;Landroid/content/DialogInterface;I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
