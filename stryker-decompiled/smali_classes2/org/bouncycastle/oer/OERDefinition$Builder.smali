.class public Lorg/bouncycastle/oer/OERDefinition$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected final baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/bouncycastle/oer/OERDefinition$Builder;",
            ">;"
        }
    .end annotation
.end field

.field protected defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

.field protected enumValue:Ljava/math/BigInteger;

.field protected explicit:Z

.field protected label:Ljava/lang/String;

.field protected lowerBound:Ljava/math/BigInteger;

.field protected placeholderValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field protected upperBound:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-void
.end method

.method private wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    instance-of v0, p2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    check-cast p2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, p2}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to wrap item in builder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lorg/bouncycastle/oer/OERDefinition$Element;
    .locals 11

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 7
    .line 8
    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    move v1, v3

    .line 19
    move v4, v1

    .line 20
    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-ge v1, v5, :cond_2

    .line 27
    .line 28
    iget-object v5, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 35
    .line 36
    iget-object v6, v5, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    .line 37
    .line 38
    if-nez v6, :cond_0

    .line 39
    .line 40
    int-to-long v6, v4

    .line 41
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iput-object v6, v5, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    :cond_0
    iget-object v6, v5, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    .line 50
    .line 51
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    iget-object v5, v5, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    .line 58
    .line 59
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v2, "duplicate enum value at index "

    .line 68
    .line 69
    invoke-static {v2, v1}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    move v7, v3

    .line 84
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v4, 0x1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 96
    .line 97
    if-nez v7, :cond_4

    .line 98
    .line 99
    iget-object v5, v1, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 100
    .line 101
    sget-object v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 102
    .line 103
    if-ne v5, v6, :cond_4

    .line 104
    .line 105
    iget-object v5, v1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_3

    .line 112
    .line 113
    iget-object v5, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 114
    .line 115
    sget-object v6, Lorg/bouncycastle/oer/OERDefinition$BaseType;->CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 116
    .line 117
    if-eq v5, v6, :cond_3

    .line 118
    .line 119
    move v7, v4

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    move v7, v4

    .line 122
    :cond_4
    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/OERDefinition$Element;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    new-instance v10, Lorg/bouncycastle/oer/OERDefinition$Element;

    .line 131
    .line 132
    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    .line 133
    .line 134
    iget-object v9, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 135
    .line 136
    if-nez v9, :cond_6

    .line 137
    .line 138
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    .line 139
    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    move v3, v4

    .line 143
    :cond_6
    iget-object v4, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v5, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    .line 146
    .line 147
    iget-object v6, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    .line 148
    .line 149
    iget-object v8, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    .line 150
    .line 151
    move-object v0, v10

    .line 152
    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/oer/OERDefinition$Element;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;Ljava/util/List;ZLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    .line 154
    .line 155
    return-object v10
.end method

.method public copy()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 4

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    iget-object v3, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    iput-boolean v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public defaultValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public enumValue(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    return-object v0
.end method

.method public fixedSize(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public varargs items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_3

    aget-object v3, p1, v2

    instance-of v4, v3, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    goto :goto_2

    :cond_1
    iget-object v4, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {p0, v5, v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    :cond_0
    iget-boolean p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    return-object v0
.end method

.method public labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, " "

    .line 6
    .line 7
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    .line 21
    .line 22
    return-object v0
.end method

.method public range(JJLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iput-object p5, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object p2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public rangeToMAXFrom(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public rangeZeroTo(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public unbounded()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method
