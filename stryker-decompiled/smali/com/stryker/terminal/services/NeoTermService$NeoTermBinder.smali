.class public final Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stryker/terminal/services/NeoTermService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NeoTermBinder"
.end annotation


# instance fields
.field private service:Lcom/stryker/terminal/services/NeoTermService;

.field final synthetic this$0:Lcom/stryker/terminal/services/NeoTermService;


# direct methods
.method public constructor <init>(Lcom/stryker/terminal/services/NeoTermService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;->this$0:Lcom/stryker/terminal/services/NeoTermService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;->service:Lcom/stryker/terminal/services/NeoTermService;

    return-void
.end method


# virtual methods
.method public final getService()Lcom/stryker/terminal/services/NeoTermService;
    .locals 1

    iget-object v0, p0, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;->service:Lcom/stryker/terminal/services/NeoTermService;

    return-object v0
.end method

.method public final setService(Lcom/stryker/terminal/services/NeoTermService;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stryker/terminal/services/NeoTermService$NeoTermBinder;->service:Lcom/stryker/terminal/services/NeoTermService;

    return-void
.end method
