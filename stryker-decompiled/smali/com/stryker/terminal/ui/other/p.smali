.class public final synthetic Lcom/stryker/terminal/ui/other/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/stryker/terminal/ui/other/p;->a:Z

    iput-object p2, p0, Lcom/stryker/terminal/ui/other/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/stryker/terminal/ui/other/p;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/stryker/terminal/ui/other/p;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/stryker/terminal/ui/other/p;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/stryker/terminal/ui/other/p;->d:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/stryker/terminal/ui/other/p;->a:Z

    iget-object v3, p0, Lcom/stryker/terminal/ui/other/p;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Lcom/stryker/terminal/ui/other/SuUtils;->e(ZLjava/lang/String;Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
