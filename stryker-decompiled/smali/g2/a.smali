.class public final synthetic Lg2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:Lcom/stryker/terminal/framework/reflection/Reflect;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/stryker/terminal/framework/reflection/Reflect;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2/a;->a:Lcom/stryker/terminal/framework/reflection/Reflect;

    iput-boolean p2, p0, Lg2/a;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lg2/a;->a:Lcom/stryker/terminal/framework/reflection/Reflect;

    iget-boolean v1, p0, Lg2/a;->b:Z

    invoke-static {v0, v1, p1, p2, p3}, Lcom/stryker/terminal/framework/reflection/Reflect;->a(Lcom/stryker/terminal/framework/reflection/Reflect;ZLjava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
