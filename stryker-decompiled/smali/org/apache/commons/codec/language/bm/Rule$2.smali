.class final Lorg/apache/commons/codec/language/bm/Rule$2;
.super Lorg/apache/commons/codec/language/bm/Rule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final loc:Ljava/lang/String;

.field private final myLine:I

.field final synthetic val$cLine:I

.field final synthetic val$lCon:Ljava/lang/String;

.field final synthetic val$location:Ljava/lang/String;

.field final synthetic val$pat:Ljava/lang/String;

.field final synthetic val$rCon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p5, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$cLine:I

    iput-object p6, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$location:Ljava/lang/String;

    iput-object p7, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$pat:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$lCon:Ljava/lang/String;

    iput-object p9, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$rCon:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/codec/language/bm/Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;)V

    iput p5, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->myLine:I

    iput-object p6, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->loc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Rule{line="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->myLine:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", loc=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->loc:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', pat=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$pat:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', lcon=\'"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$lCon:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\', rcon=\'"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$rCon:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "\'}"

    .line 51
    .line 52
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
