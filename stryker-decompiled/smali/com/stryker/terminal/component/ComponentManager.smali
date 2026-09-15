.class public final Lcom/stryker/terminal/component/ComponentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMPONENTS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/stryker/terminal/component/NeoComponent;",
            ">;",
            "Lcom/stryker/terminal/component/NeoComponent;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/stryker/terminal/component/ComponentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stryker/terminal/component/ComponentManager;

    invoke-direct {v0}, Lcom/stryker/terminal/component/ComponentManager;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/ComponentManager;->INSTANCE:Lcom/stryker/terminal/component/ComponentManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/stryker/terminal/component/ComponentManager;->COMPONENTS:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createServiceInstance(Ljava/lang/Class;)Lcom/stryker/terminal/component/NeoComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/stryker/terminal/component/NeoComponent;",
            ">;)",
            "Lcom/stryker/terminal/component/NeoComponent;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "componentInterface.newInstance()"

    invoke-static {p1, v0}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stryker/terminal/component/NeoComponent;

    return-object p1
.end method

.method public static synthetic getComponent$default(Lcom/stryker/terminal/component/ComponentManager;Ljava/lang/Class;ZILjava/lang/Object;)Lcom/stryker/terminal/component/NeoComponent;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stryker/terminal/component/ComponentManager;->getComponent(Ljava/lang/Class;Z)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getComponent()Lcom/stryker/terminal/component/NeoComponent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/stryker/terminal/component/NeoComponent;",
            ">()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This function has a reified type parameter and thus can only be inlined at compilation time, not called directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getComponent(Ljava/lang/Class;Z)Lcom/stryker/terminal/component/NeoComponent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/stryker/terminal/component/NeoComponent;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 2
    const-string p2, "componentInterface"

    invoke-static {p1, p2}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/stryker/terminal/component/ComponentManager;->COMPONENTS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stryker/terminal/component/NeoComponent;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/stryker/terminal/component/NeoComponent;->onServiceObtained()V

    return-object p2

    :cond_0
    new-instance p2, Lcom/stryker/terminal/component/ComponentNotFoundException;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/stryker/terminal/component/ComponentNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final registerComponent(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/stryker/terminal/component/NeoComponent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "componentClass"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->COMPONENTS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/stryker/terminal/component/ComponentManager;->createServiceInstance(Ljava/lang/Class;)Lcom/stryker/terminal/component/NeoComponent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/stryker/terminal/component/NeoComponent;->onServiceInit()V

    return-void

    :cond_0
    new-instance v0, Lcom/stryker/terminal/component/ComponentDuplicateException;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/stryker/terminal/component/ComponentDuplicateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unregisterComponent(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/stryker/terminal/component/NeoComponent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "componentInterface"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/stryker/terminal/component/ComponentManager;->COMPONENTS:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stryker/terminal/component/NeoComponent;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/stryker/terminal/component/NeoComponent;->onServiceDestroy()V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
