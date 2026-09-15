.class public final synthetic Lcom/topjohnwu/superuser/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/topjohnwu/superuser/internal/ShellImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/topjohnwu/superuser/internal/ShellImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/topjohnwu/superuser/internal/d;->a:Lcom/topjohnwu/superuser/internal/ShellImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/d;->a:Lcom/topjohnwu/superuser/internal/ShellImpl;

    invoke-static {v0}, Lcom/topjohnwu/superuser/internal/ShellImpl;->i(Lcom/topjohnwu/superuser/internal/ShellImpl;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
