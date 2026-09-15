.class public Lorg/jsoup/nodes/CDataNode;
.super Lorg/jsoup/nodes/TextNode;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/CDataNode;->clone()Lorg/jsoup/nodes/CDataNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/CDataNode;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/jsoup/nodes/TextNode;->clone()Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/CDataNode;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/CDataNode;->clone()Lorg/jsoup/nodes/CDataNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/TextNode;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/jsoup/nodes/CDataNode;->clone()Lorg/jsoup/nodes/CDataNode;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#cdata"

    return-object v0
.end method

.method public outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    const-string p2, "<![CDATA["

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    const-string p2, "]]>"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
