.class final Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field static final AfterHeadBody:[Ljava/lang/String;

.field static final BeforeHtmlToHead:[Ljava/lang/String;

.field static final DdDt:[Ljava/lang/String;

.field static final Headings:[Ljava/lang/String;

.field static final InBodyEndAdoptionFormatters:[Ljava/lang/String;

.field static final InBodyEndClosers:[Ljava/lang/String;

.field static final InBodyEndTableFosters:[Ljava/lang/String;

.field static final InBodyStartApplets:[Ljava/lang/String;

.field static final InBodyStartDrop:[Ljava/lang/String;

.field static final InBodyStartInputAttribs:[Ljava/lang/String;

.field static final InBodyStartLiBreakers:[Ljava/lang/String;

.field static final InBodyStartMedia:[Ljava/lang/String;

.field static final InBodyStartPClosers:[Ljava/lang/String;

.field static final InBodyStartToHead:[Ljava/lang/String;

.field static final InCaptionIgnore:[Ljava/lang/String;

.field static final InCellBody:[Ljava/lang/String;

.field static final InCellCol:[Ljava/lang/String;

.field static final InCellNames:[Ljava/lang/String;

.field static final InCellTable:[Ljava/lang/String;

.field static final InHeadEmpty:[Ljava/lang/String;

.field static final InHeadEnd:[Ljava/lang/String;

.field static final InHeadNoScriptHead:[Ljava/lang/String;

.field static final InHeadNoscriptIgnore:[Ljava/lang/String;

.field static final InHeadRaw:[Ljava/lang/String;

.field static final InRowIgnore:[Ljava/lang/String;

.field static final InRowMissing:[Ljava/lang/String;

.field static final InSelectEnd:[Ljava/lang/String;

.field static final InSelectTableEnd:[Ljava/lang/String;

.field static final InTableAddBody:[Ljava/lang/String;

.field static final InTableBodyEndIgnore:[Ljava/lang/String;

.field static final InTableBodyExit:[Ljava/lang/String;

.field static final InTableEndErr:[Ljava/lang/String;

.field static final InTableEndIgnore:[Ljava/lang/String;

.field static final InTableFoster:[Ljava/lang/String;

.field static final InTableToBody:[Ljava/lang/String;

.field static final InTableToHead:[Ljava/lang/String;

.field static final InTemplateToHead:[Ljava/lang/String;

.field static final InTemplateToTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    const-string v0, "command"

    const-string v1, "link"

    const-string v2, "base"

    const-string v3, "basefont"

    const-string v4, "bgsound"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEmpty:[Ljava/lang/String;

    const-string v0, "noframes"

    const-string v1, "style"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadRaw:[Ljava/lang/String;

    const-string v0, "body"

    const-string v2, "br"

    const-string v3, "html"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEnd:[Ljava/lang/String;

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->AfterHeadBody:[Ljava/lang/String;

    const-string v4, "head"

    filled-new-array {v0, v2, v4, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->BeforeHtmlToHead:[Ljava/lang/String;

    const-string v5, "basefont"

    const-string v6, "bgsound"

    const-string v7, "link"

    const-string v8, "meta"

    const-string v9, "noframes"

    const-string v10, "style"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoScriptHead:[Ljava/lang/String;

    const-string v5, "base"

    const-string v6, "basefont"

    const-string v7, "bgsound"

    const-string v8, "command"

    const-string v9, "link"

    const-string v10, "meta"

    const-string v11, "noframes"

    const-string v12, "script"

    const-string v13, "style"

    const-string v14, "template"

    const-string v15, "title"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    const-string v5, "address"

    const-string v6, "article"

    const-string v7, "aside"

    const-string v8, "blockquote"

    const-string v9, "center"

    const-string v10, "details"

    const-string v11, "dir"

    const-string v12, "div"

    const-string v13, "dl"

    const-string v14, "fieldset"

    const-string v15, "figcaption"

    const-string v16, "figure"

    const-string v17, "footer"

    const-string v18, "header"

    const-string v19, "hgroup"

    const-string v20, "menu"

    const-string v21, "nav"

    const-string v22, "ol"

    const-string v23, "p"

    const-string v24, "section"

    const-string v25, "summary"

    const-string v26, "ul"

    filled-new-array/range {v5 .. v26}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    const-string v5, "h1"

    const-string v6, "h2"

    const-string v7, "h3"

    const-string v8, "h4"

    const-string v9, "h5"

    const-string v10, "h6"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    const-string v2, "div"

    const-string v5, "p"

    const-string v6, "address"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    const-string v2, "dd"

    const-string v5, "dt"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    const-string v2, "marquee"

    const-string v5, "object"

    const-string v6, "applet"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    const-string v2, "source"

    const-string v5, "track"

    const-string v6, "param"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    const-string v2, "name"

    const-string v5, "prompt"

    const-string v6, "action"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    const-string v5, "caption"

    const-string v6, "col"

    const-string v7, "colgroup"

    const-string v8, "frame"

    const-string v9, "head"

    const-string v10, "tbody"

    const-string v11, "td"

    const-string v12, "tfoot"

    const-string v13, "th"

    const-string v14, "thead"

    const-string v15, "tr"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    const-string v5, "address"

    const-string v6, "article"

    const-string v7, "aside"

    const-string v8, "blockquote"

    const-string v9, "button"

    const-string v10, "center"

    const-string v11, "details"

    const-string v12, "dir"

    const-string v13, "div"

    const-string v14, "dl"

    const-string v15, "fieldset"

    const-string v16, "figcaption"

    const-string v17, "figure"

    const-string v18, "footer"

    const-string v19, "header"

    const-string v20, "hgroup"

    const-string v21, "listing"

    const-string v22, "menu"

    const-string v23, "nav"

    const-string v24, "ol"

    const-string v25, "pre"

    const-string v26, "section"

    const-string v27, "summary"

    const-string v28, "ul"

    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    const-string v5, "a"

    const-string v6, "b"

    const-string v7, "big"

    const-string v8, "code"

    const-string v9, "em"

    const-string v10, "font"

    const-string v11, "i"

    const-string v12, "nobr"

    const-string v13, "s"

    const-string v14, "small"

    const-string v15, "strike"

    const-string v16, "strong"

    const-string v17, "tt"

    const-string v18, "u"

    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    const-string v2, "table"

    const-string v5, "tbody"

    const-string v6, "tfoot"

    const-string v7, "thead"

    const-string v8, "tr"

    filled-new-array {v2, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToBody:[Ljava/lang/String;

    const-string v9, "td"

    const-string v10, "th"

    filled-new-array {v9, v10, v8}, [Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableAddBody:[Ljava/lang/String;

    const-string v11, "script"

    const-string v12, "template"

    filled-new-array {v11, v1, v12}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToHead:[Ljava/lang/String;

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellNames:[Ljava/lang/String;

    const-string v1, "caption"

    const-string v9, "col"

    const-string v10, "colgroup"

    filled-new-array {v0, v1, v9, v10, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellBody:[Ljava/lang/String;

    filled-new-array {v2, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellTable:[Ljava/lang/String;

    const-string v11, "caption"

    const-string v12, "col"

    const-string v13, "colgroup"

    const-string v14, "tbody"

    const-string v15, "td"

    const-string v16, "tfoot"

    const-string v17, "th"

    const-string v18, "thead"

    const-string v19, "tr"

    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellCol:[Ljava/lang/String;

    const-string v11, "body"

    const-string v12, "caption"

    const-string v13, "col"

    const-string v14, "colgroup"

    const-string v15, "html"

    const-string v16, "tbody"

    const-string v17, "td"

    const-string v18, "tfoot"

    const-string v19, "th"

    const-string v20, "thead"

    const-string v21, "tr"

    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndErr:[Ljava/lang/String;

    filled-new-array {v2, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    const-string v11, "caption"

    const-string v12, "col"

    const-string v13, "colgroup"

    const-string v14, "tbody"

    const-string v15, "tfoot"

    const-string v16, "thead"

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyExit:[Ljava/lang/String;

    const-string v11, "body"

    const-string v12, "caption"

    const-string v13, "col"

    const-string v14, "colgroup"

    const-string v15, "html"

    const-string v16, "td"

    const-string v17, "th"

    const-string v18, "tr"

    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyEndIgnore:[Ljava/lang/String;

    const-string v11, "caption"

    const-string v12, "col"

    const-string v13, "colgroup"

    const-string v14, "tbody"

    const-string v15, "tfoot"

    const-string v16, "thead"

    const-string v17, "tr"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowMissing:[Ljava/lang/String;

    const-string v11, "body"

    const-string v12, "caption"

    const-string v13, "col"

    const-string v14, "colgroup"

    const-string v15, "html"

    const-string v16, "td"

    const-string v17, "th"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowIgnore:[Ljava/lang/String;

    const-string v0, "keygen"

    const-string v2, "textarea"

    const-string v3, "input"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectEnd:[Ljava/lang/String;

    const-string v11, "caption"

    const-string v12, "table"

    const-string v13, "tbody"

    const-string v14, "td"

    const-string v15, "tfoot"

    const-string v16, "th"

    const-string v17, "thead"

    const-string v18, "tr"

    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectTableEnd:[Ljava/lang/String;

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndIgnore:[Ljava/lang/String;

    const-string v0, "noscript"

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoscriptIgnore:[Ljava/lang/String;

    const-string v11, "body"

    const-string v12, "col"

    const-string v13, "colgroup"

    const-string v14, "html"

    const-string v15, "tbody"

    const-string v16, "td"

    const-string v17, "tfoot"

    const-string v18, "th"

    const-string v19, "thead"

    const-string v20, "tr"

    filled-new-array/range {v11 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCaptionIgnore:[Ljava/lang/String;

    const-string v11, "base"

    const-string v12, "basefont"

    const-string v13, "bgsound"

    const-string v14, "link"

    const-string v15, "meta"

    const-string v16, "noframes"

    const-string v17, "script"

    const-string v18, "style"

    const-string v19, "template"

    const-string v20, "title"

    filled-new-array/range {v11 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToHead:[Ljava/lang/String;

    filled-new-array {v1, v10, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToTable:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
