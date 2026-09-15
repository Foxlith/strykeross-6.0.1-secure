.class public final Lv/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/r;


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:I

.field public final synthetic c:Landroidx/core/app/JobIntentService;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/q;->c:Landroidx/core/app/JobIntentService;

    iput-object p2, p0, Lv/q;->a:Landroid/content/Intent;

    iput p3, p0, Lv/q;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/q;->c:Landroidx/core/app/JobIntentService;

    iget v1, p0, Lv/q;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/q;->a:Landroid/content/Intent;

    return-object v0
.end method
