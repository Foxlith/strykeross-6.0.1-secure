.class public Lorg/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AttributeEvals:[Ljava/lang/String;

.field private static final NTH_AB:Ljava/util/regex/Pattern;

.field private static final NTH_B:Ljava/util/regex/Pattern;

.field private static final combinators:[C


# instance fields
.field private final evals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/select/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Ljava/lang/String;

.field private final tq:Lorg/jsoup/parser/TokenQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/select/QueryParser;->combinators:[C

    const-string v1, "="

    const-string v2, "!="

    const-string v3, "^="

    const-string v4, "$="

    const-string v5, "*="

    const-string v6, "~="

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x2cs
        0x3es
        0x2bs
        0x7es
        0x20s
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    return-void
.end method

.method private allElements()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$AllElements;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$AllElements;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private byAttribute()V
    .locals 4

    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consumeToAny([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "^"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$AttributeStarting;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Attribute;

    invoke-direct {v2, v1}, Lorg/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v2, "!="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "^="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "$="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "*="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v2, "~="

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v3, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    goto :goto_1

    :goto_2
    return-void

    :cond_7
    new-instance v1, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private byClass()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Class;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private byId()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Id;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private byTag()V
    .locals 8

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeElementSelector()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    const-string v1, "*|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v6, Lorg/jsoup/select/CombiningEvaluator$Or;

    new-array v2, v2, [Lorg/jsoup/select/Evaluator;

    new-instance v7, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v7, v4}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v7, v2, v4

    new-instance v4, Lorg/jsoup/select/Evaluator$TagEndsWith;

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/jsoup/select/Evaluator$TagEndsWith;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    aput-object v4, v2, v0

    invoke-direct {v6, v2}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>([Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$Tag;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private combinator(C)V
    .locals 10

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeSubQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/select/Evaluator;

    instance-of v5, v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    if-eqz v5, :cond_0

    if-eq p1, v2, :cond_0

    move-object v5, v1

    check-cast v5, Lorg/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {v5}, Lorg/jsoup/select/CombiningEvaluator;->rightMostEvaluator()Lorg/jsoup/select/Evaluator;

    move-result-object v5

    move v6, v4

    move-object v9, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_1

    :cond_0
    :goto_0
    move-object v5, v1

    move v6, v3

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/jsoup/select/CombiningEvaluator$And;

    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v1, v5}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :goto_1
    iget-object v7, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/16 v7, 0x20

    const/4 v8, 0x2

    if-eq p1, v7, :cond_7

    const/16 v7, 0x3e

    if-eq p1, v7, :cond_6

    const/16 v7, 0x7e

    if-eq p1, v7, :cond_5

    const/16 v7, 0x2b

    if-eq p1, v7, :cond_4

    if-ne p1, v2, :cond_3

    instance-of p1, v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    if-eqz p1, :cond_2

    check-cast v1, Lorg/jsoup/select/CombiningEvaluator$Or;

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$Or;

    invoke-direct {p1}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>()V

    invoke-virtual {p1, v1}, Lorg/jsoup/select/CombiningEvaluator$Or;->add(Lorg/jsoup/select/Evaluator;)V

    move-object v1, p1

    :goto_2
    invoke-virtual {v1, v0}, Lorg/jsoup/select/CombiningEvaluator$Or;->add(Lorg/jsoup/select/Evaluator;)V

    goto :goto_4

    :cond_3
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unknown combinator \'%s\'"

    invoke-direct {v0, v1, p1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lorg/jsoup/select/Evaluator;

    new-instance v7, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    invoke-direct {v7, v1}, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    :goto_3
    move-object v1, p1

    goto :goto_4

    :cond_5
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lorg/jsoup/select/Evaluator;

    new-instance v7, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    invoke-direct {v7, v1}, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lorg/jsoup/select/Evaluator;

    new-instance v7, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;

    invoke-direct {v7, v1}, Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    goto :goto_3

    :cond_7
    new-instance p1, Lorg/jsoup/select/CombiningEvaluator$And;

    new-array v2, v8, [Lorg/jsoup/select/Evaluator;

    new-instance v7, Lorg/jsoup/select/StructuralEvaluator$Parent;

    invoke-direct {v7, v1}, Lorg/jsoup/select/StructuralEvaluator$Parent;-><init>(Lorg/jsoup/select/Evaluator;)V

    aput-object v7, v2, v3

    aput-object v0, v2, v4

    invoke-direct {p1, v2}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>([Lorg/jsoup/select/Evaluator;)V

    goto :goto_3

    :goto_4
    if-eqz v6, :cond_8

    move-object p1, v5

    check-cast p1, Lorg/jsoup/select/CombiningEvaluator$Or;

    invoke-virtual {p1, v1}, Lorg/jsoup/select/CombiningEvaluator;->replaceRightMostEvaluator(Lorg/jsoup/select/Evaluator;)V

    goto :goto_5

    :cond_8
    move-object v5, v1

    :goto_5
    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private consumeIndex()I
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private consumeSubQuery()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v2, Lorg/jsoup/select/QueryParser;->combinators:[C

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    :goto_2
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private contains(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v0, ":contains"

    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(text) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsOwnText;

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsText;

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private containsData()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":containsData"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":containsData(text) query must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/Evaluator$ContainsData;

    invoke-direct {v2, v0}, Lorg/jsoup/select/Evaluator$ContainsData;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private containsWholeText(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ":containsWholeOwnText"

    goto :goto_0

    :cond_0
    const-string v0, ":containsWholeText"

    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(text) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsWholeOwnText;

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsWholeOwnText;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsWholeText;

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsWholeText;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cssNthChild(ZZ)V
    .locals 8

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->chompTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/select/QueryParser;->NTH_AB:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, Lorg/jsoup/select/QueryParser;->NTH_B:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "odd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "even"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v6

    :goto_2
    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance p2, Lorg/jsoup/select/Evaluator$IsNthLastOfType;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/Evaluator$IsNthLastOfType;-><init>(II)V

    :goto_3
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance p2, Lorg/jsoup/select/Evaluator$IsNthOfType;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/Evaluator$IsNthOfType;-><init>(II)V

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance p2, Lorg/jsoup/select/Evaluator$IsNthLastChild;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/Evaluator$IsNthLastChild;-><init>(II)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance p2, Lorg/jsoup/select/Evaluator$IsNthChild;

    invoke-direct {p2, v4, v5}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(II)V

    goto :goto_3

    :goto_4
    return-void

    :cond_8
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    const-string p2, "Could not parse nth-index \'%s\': unexpected format"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private findElements()V
    .locals 4

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byId()V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byClass()V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "*|"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byAttribute()V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->allElements()V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexLessThan()V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexGreaterThan()V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->indexEquals()V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->has()V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-direct {p0, v1}, Lorg/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v2, ":containsOwn("

    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    invoke-direct {p0, v2}, Lorg/jsoup/select/QueryParser;->contains(Z)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":containsWholeText("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v1}, Lorg/jsoup/select/QueryParser;->containsWholeText(Z)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":containsWholeOwnText("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v2}, Lorg/jsoup/select/QueryParser;->containsWholeText(Z)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":containsData("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->containsData()V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":matches("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, v1}, Lorg/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":matchesOwn("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, v2}, Lorg/jsoup/select/QueryParser;->matches(Z)V

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":matchesWholeText("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v1}, Lorg/jsoup/select/QueryParser;->matchesWholeText(Z)V

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":matchesWholeOwnText("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v2}, Lorg/jsoup/select/QueryParser;->matchesWholeText(Z)V

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":not("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->not()V

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":nth-child("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, v1, v1}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":nth-last-child("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v2, v1}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v3, ":nth-of-type("

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, v1, v2}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":nth-last-of-type("

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v2, v2}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)V

    goto/16 :goto_2

    :cond_16
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":first-child"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsFirstChild;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsFirstChild;-><init>()V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_17
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":last-child"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsLastChild;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsLastChild;-><init>()V

    goto :goto_0

    :cond_18
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":first-of-type"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsFirstOfType;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsFirstOfType;-><init>()V

    goto :goto_0

    :cond_19
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":last-of-type"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsLastOfType;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsLastOfType;-><init>()V

    goto :goto_0

    :cond_1a
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":only-child"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsOnlyChild;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsOnlyChild;-><init>()V

    goto :goto_0

    :cond_1b
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":only-of-type"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsOnlyOfType;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsOnlyOfType;-><init>()V

    goto :goto_0

    :cond_1c
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":empty"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsEmpty;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsEmpty;-><init>()V

    goto :goto_0

    :cond_1d
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":root"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IsRoot;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>()V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":matchText"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$MatchText;

    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$MatchText;-><init>()V

    goto/16 :goto_0

    :cond_1f
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v2, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_20
    :goto_1
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->byTag()V

    :goto_2
    return-void
.end method

.method private has()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":has"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":has(selector) sub-select must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Has;

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jsoup/select/StructuralEvaluator$Has;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private indexEquals()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IndexEquals;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private indexGreaterThan()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IndexGreaterThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private indexLessThan()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/Evaluator$IndexLessThan;

    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private matches(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v0, ":matches"

    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(regex) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/jsoup/select/Evaluator$MatchesOwn;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$Matches;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private matchesWholeText(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ":matchesWholeOwnText"

    goto :goto_0

    :cond_0
    const-string v0, ":matchesWholeText"

    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(regex) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    if-eqz p1, :cond_1

    new-instance p1, Lorg/jsoup/select/Evaluator$MatchesWholeOwnText;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$MatchesWholeOwnText;-><init>(Ljava/util/regex/Pattern;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$MatchesWholeText;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$MatchesWholeText;-><init>(Ljava/util/regex/Pattern;)V

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private not()V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const-string v1, ":not"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->consume(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Not;

    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/jsoup/select/StructuralEvaluator$Not;-><init>(Lorg/jsoup/select/Evaluator;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;
    .locals 1

    .line 2
    :try_start_0
    new-instance v0, Lorg/jsoup/select/QueryParser;

    invoke-direct {v0, p0}, Lorg/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->parse()Lorg/jsoup/select/Evaluator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse()Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v1, Lorg/jsoup/select/QueryParser;->combinators:[C

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$Root;

    invoke-direct {v1}, Lorg/jsoup/select/StructuralEvaluator$Root;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    move-result v0

    :goto_1
    invoke-direct {p0, v0}, Lorg/jsoup/select/QueryParser;->combinator(C)V

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lorg/jsoup/select/QueryParser;->findElements()V

    :goto_2
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    move-result v0

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    sget-object v2, Lorg/jsoup/select/QueryParser;->combinators:[C

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/Evaluator;

    return-object v0

    :cond_3
    new-instance v0, Lorg/jsoup/select/CombiningEvaluator$And;

    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->evals:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    return-object v0
.end method
