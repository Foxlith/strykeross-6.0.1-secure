.class final Lorg/jsoup/nodes/NodeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static outputSettings(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/jsoup/nodes/Document;

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/jsoup/parser/Parser;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    :goto_0
    return-object p0
.end method

.method public static selectXpath(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jsoup/nodes/Node;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    new-instance v0, Lorg/jsoup/helper/W3CDom;

    invoke-direct {v0}, Lorg/jsoup/helper/W3CDom;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jsoup/helper/W3CDom;->namespaceAware(Z)Lorg/jsoup/helper/W3CDom;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/W3CDom;->fromJsoup(Lorg/jsoup/nodes/Element;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/helper/W3CDom;->contextNode(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/jsoup/helper/W3CDom;->selectXpath(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Lorg/jsoup/helper/W3CDom;->sourceNodes(Lorg/w3c/dom/NodeList;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
