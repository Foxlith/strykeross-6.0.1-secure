.class public Lorg/jsoup/nodes/DocumentType;
.super Lorg/jsoup/nodes/LeafNode;
.source "SourceFile"


# static fields
.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PUBLIC_ID:Ljava/lang/String; = "publicId"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "PUBLIC"

.field private static final PUB_SYS_KEY:Ljava/lang/String; = "pubSysKey"

.field private static final SYSTEM_ID:Ljava/lang/String; = "systemId"

.field public static final SYSTEM_KEY:Ljava/lang/String; = "SYSTEM"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    const-string p1, "publicId"

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    const-string p1, "systemId"

    invoke-virtual {p0, p1, p3}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    invoke-direct {p0}, Lorg/jsoup/nodes/DocumentType;->updatePubSyskey()V

    return-void
.end method

.method private has(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private updatePubSyskey()V
    .locals 2

    const-string v0, "publicId"

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "pubSysKey"

    if-eqz v0, :cond_0

    const-string v0, "PUBLIC"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    goto :goto_1

    :cond_0
    const-string v0, "systemId"

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SYSTEM"

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic absUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic baseUri()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->baseUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic childNodeSize()I
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->childNodeSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic empty()Lorg/jsoup/nodes/Node;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->empty()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasAttr(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#doctype"

    return-object v0
.end method

.method public outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 3

    iget p2, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    if-lez p2, :cond_0

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xa

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    const-string v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_1

    invoke-direct {p0, v1}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "<!doctype"

    :goto_0
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_1
    const-string p2, "<!DOCTYPE"

    goto :goto_0

    :goto_1
    const-string p2, "name"

    invoke-direct {p0, p2}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p3

    const-string v2, " "

    if-eqz p3, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    const-string p2, "pubSysKey"

    invoke-direct {p0, p2}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_3
    invoke-direct {p0, v1}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    const/16 p3, 0x22

    const-string v2, " \""

    if-eqz p2, :cond_4

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_5
    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public publicId()Ljava/lang/String;
    .locals 1

    const-string v0, "publicId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method

.method public setPubSysKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "pubSysKey"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    :cond_0
    return-void
.end method

.method public systemId()Ljava/lang/String;
    .locals 1

    const-string v0, "systemId"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
