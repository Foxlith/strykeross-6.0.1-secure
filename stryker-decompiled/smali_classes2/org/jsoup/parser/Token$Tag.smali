.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tag"
.end annotation


# static fields
.field private static final MaxAttributes:I = 0x200


# instance fields
.field private final attrName:Ljava/lang/StringBuilder;

.field private attrNameS:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final attrValue:Ljava/lang/StringBuilder;

.field private attrValueS:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field attributes:Lorg/jsoup/nodes/Attributes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hasAttrName:Z

.field private hasAttrValue:Z

.field private hasEmptyAttrValue:Z

.field protected normalName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field selfClosing:Z

.field protected tagName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return-void
.end method

.method private ensureAttrName()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private ensureAttrValue()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final appendAttributeName(C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final appendAttributeName(Ljava/lang/String;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final appendAttributeValue(C)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final appendAttributeValue(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final appendAttributeValue([C)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final appendAttributeValue([I)V
    .locals 4

    .line 4
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final appendTagName(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    return-void
.end method

.method public final appendTagName(Ljava/lang/String;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-void
.end method

.method public final finaliseTag()V
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    :cond_0
    return-void
.end method

.method public final hasAttribute(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hasAttributes()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSelfClosing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public final name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object p0
.end method

.method public final newAttribute()V
    .locals 4

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v0

    const/16 v2, 0x200

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    if-eqz v2, :cond_4

    const-string v2, ""

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v3, v0, v2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :cond_5
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    return-void
.end method

.method public final normalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method public reset()Lorg/jsoup/parser/Token$Tag;
    .locals 3

    .line 1
    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    return-object p0
.end method

.method public bridge synthetic reset()Lorg/jsoup/parser/Token;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    return-object v0
.end method

.method public final setEmptyAttributeValue()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public final toStringName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[unset]"

    :goto_0
    return-object v0
.end method
