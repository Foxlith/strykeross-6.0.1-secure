.class abstract enum Lorg/jsoup/parser/HtmlTreeBuilderState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/parser/HtmlTreeBuilderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field public static final enum Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

.field private static final nullString:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    const/4 v1, 0x0

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$1;

    const-string v1, "Initial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Initial:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$2;

    const-string v1, "BeforeHtml"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$3;

    const-string v1, "BeforeHead"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    const-string v1, "InHead"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$5;

    const-string v1, "InHeadNoscript"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHeadNoscript:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$6;

    const-string v1, "AfterHead"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    const-string v1, "InBody"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$8;

    const-string v1, "Text"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    const-string v1, "InTable"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$10;

    const-string v1, "InTableText"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$11;

    const-string v1, "InCaption"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    const-string v1, "InColumnGroup"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    const-string v1, "InTableBody"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    const-string v1, "InRow"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$15;

    const-string v1, "InCell"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$16;

    const-string v1, "InSelect"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$17;

    const-string v1, "InSelectInTable"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    const-string v1, "InTemplate"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTemplate:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$19;

    const-string v1, "AfterBody"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$20;

    const-string v1, "InFrameset"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$21;

    const-string v1, "AfterFrameset"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$21;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$22;

    const-string v1, "AfterAfterBody"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$22;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$23;

    const-string v1, "AfterAfterFrameset"

    const/16 v3, 0x16

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$23;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterAfterFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilderState$24;

    const-string v1, "ForeignContent"

    const/16 v3, 0x17

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/HtmlTreeBuilderState$24;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->ForeignContent:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->$values()[Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->$VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$100(Lorg/jsoup/parser/Token;)Z
    .locals 0

    invoke-static {p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRcData(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    return-void
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 2

    iget-object v0, p1, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method private static handleRcData(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    .locals 2

    iget-object v0, p1, Lorg/jsoup/parser/TreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method private static isWhitespace(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isWhitespace(Lorg/jsoup/parser/Token;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->isCharacter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    const-class v0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/HtmlTreeBuilderState;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->$VALUES:[Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0}, [Lorg/jsoup/parser/HtmlTreeBuilderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/HtmlTreeBuilderState;

    return-object v0
.end method


# virtual methods
.method public abstract process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
.end method
