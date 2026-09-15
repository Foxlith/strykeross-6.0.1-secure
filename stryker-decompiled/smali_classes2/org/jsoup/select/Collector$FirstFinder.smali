.class Lorg/jsoup/select/Collector$FirstFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/select/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstFinder"
.end annotation


# instance fields
.field private final eval:Lorg/jsoup/select/Evaluator;

.field private evalRoot:Lorg/jsoup/nodes/Element;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private match:Lorg/jsoup/nodes/Element;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->evalRoot:Lorg/jsoup/nodes/Element;

    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->eval:Lorg/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method public find(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->evalRoot:Lorg/jsoup/nodes/Element;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    invoke-static {p0, p2}, Lorg/jsoup/select/NodeTraversor;->filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;

    iget-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public head(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 1

    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/jsoup/nodes/Element;

    iget-object p2, p0, Lorg/jsoup/select/Collector$FirstFinder;->eval:Lorg/jsoup/select/Evaluator;

    iget-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->evalRoot:Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, v0, p1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p1

    :cond_0
    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p1
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 0

    sget-object p1, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p1
.end method
