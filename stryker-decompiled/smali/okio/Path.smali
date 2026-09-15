.class public final Lokio/Path;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Path$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lokio/Path;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lokio/Path$Companion;

.field public static final DIRECTORY_SEPARATOR:Ljava/lang/String;


# instance fields
.field private final bytes:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/Path$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/Path$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "separator"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/Path;->bytes:Lokio/ByteString;

    return-void
.end method

.method public static final get(Ljava/io/File;)Lokio/Path;
    .locals 1

    .line 1
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0}, Lokio/Path$Companion;->get(Ljava/io/File;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/io/File;Z)Lokio/Path;
    .locals 1

    .line 2
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/Path$Companion;->get(Ljava/io/File;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/lang/String;)Lokio/Path;
    .locals 1

    .line 3
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0}, Lokio/Path$Companion;->get(Ljava/lang/String;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/lang/String;Z)Lokio/Path;
    .locals 1

    .line 4
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/Path$Companion;->get(Ljava/lang/String;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/nio/file/Path;)Lokio/Path;
    .locals 1

    .line 5
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0}, Lokio/Path$Companion;->get(Ljava/nio/file/Path;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Ljava/nio/file/Path;Z)Lokio/Path;
    .locals 1

    .line 6
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/Path$Companion;->get(Ljava/nio/file/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resolve$default(Lokio/Path;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Path;->resolve(Ljava/lang/String;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resolve$default(Lokio/Path;Lokio/ByteString;ZILjava/lang/Object;)Lokio/Path;
    .locals 0

    .line 2
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Path;->resolve(Lokio/ByteString;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic resolve$default(Lokio/Path;Lokio/Path;ZILjava/lang/Object;)Lokio/Path;
    .locals 0

    .line 3
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Path;->resolve(Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lokio/Path;

    invoke-virtual {p0, p1}, Lokio/Path;->compareTo(Lokio/Path;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lokio/Path;)I
    .locals 1

    .line 2
    const-string v0, "other"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lokio/Path;

    if-eqz v0, :cond_0

    check-cast p1, Lokio/Path;

    invoke-virtual {p1}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-static {p1, v0}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getBytes$okio()Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lokio/Path;->bytes:Lokio/ByteString;

    return-object v0
.end method

.method public final getRoot()Lokio/Path;
    .locals 4

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final getSegments()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x5c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-ne v5, v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lg5/i;->b0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v1
.end method

.method public final getSegmentsBytes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x5c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v1}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-ne v5, v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAbsolute()Z
    .locals 2

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRelative()Z
    .locals 2

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRoot()Z
    .locals 2

    invoke-static {p0}, Lokio/internal/-Path;->access$rootLength(Lokio/Path;)I

    move-result v0

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lokio/Path;->nameBytes()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final nameBytes()Lokio/ByteString;
    .locals 5

    invoke-static {p0}, Lokio/internal/-Path;->access$getIndexOfLastSlash(Lokio/Path;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v2, v4}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final normalized()Lokio/Path;
    .locals 3

    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lokio/Path$Companion;->get(Ljava/lang/String;Z)Lokio/Path;

    move-result-object v0

    return-object v0
.end method

.method public final parent()Lokio/Path;
    .locals 7

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/-Path;->access$getDOT$p()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/-Path;->access$getSLASH$p()Lokio/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/-Path;->access$getBACKSLASH$p()Lokio/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p0}, Lokio/internal/-Path;->access$lastSegmentIsDotDot(Lokio/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0}, Lokio/internal/-Path;->access$getIndexOfLastSlash(Lokio/Path;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-static {v5, v3, v2, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/Path;-><init>(Lokio/ByteString;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-static {}, Lokio/internal/-Path;->access$getBACKSLASH$p()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    if-ne v0, v5, :cond_5

    invoke-virtual {p0}, Lokio/Path;->volumeLetter()Ljava/lang/Character;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-static {v5, v3, v2, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/Path;-><init>(Lokio/ByteString;)V

    goto :goto_0

    :cond_5
    if-ne v0, v5, :cond_6

    new-instance v1, Lokio/Path;

    invoke-static {}, Lokio/internal/-Path;->access$getDOT$p()Lokio/ByteString;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v2

    invoke-static {v2, v3, v4, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/Path;-><init>(Lokio/ByteString;)V

    goto :goto_0

    :cond_7
    new-instance v2, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v5

    invoke-static {v5, v3, v0, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    invoke-direct {v2, v0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    move-object v1, v2

    :cond_8
    :goto_1
    return-object v1
.end method

.method public final relativeTo(Lokio/Path;)Lokio/Path;
    .locals 8

    const-string v0, "other"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->getRoot()Lokio/Path;

    move-result-object v0

    invoke-virtual {p1}, Lokio/Path;->getRoot()Lokio/Path;

    move-result-object v1

    invoke-static {v0, v1}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " and "

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lokio/Path;->getSegmentsBytes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lokio/Path;->getSegmentsBytes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Li5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v5, v3, :cond_1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {p1}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    if-ne v3, v6, :cond_1

    sget-object p1, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v0, "."

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v4, v2, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p1

    goto :goto_3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lokio/internal/-Path;->access$getDOT_DOT$p()Lokio/ByteString;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-static {p1}, Lokio/internal/-Path;->access$getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lokio/internal/-Path;->access$getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lokio/Path;->DIRECTORY_SEPARATOR:Ljava/lang/String;

    invoke-static {p1}, Lokio/internal/-Path;->access$toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v5

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-static {}, Lokio/internal/-Path;->access$getDOT_DOT$p()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v1, v6}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v5, v2, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v1, v3}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v1, v4}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Impossible relative path to resolve: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Paths of different roots cannot be relative to each other: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resolve(Ljava/lang/String;)Lokio/Path;
    .locals 1

    .line 1
    const-string v0, "child"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method public final resolve(Ljava/lang/String;Z)Lokio/Path;
    .locals 1

    .line 2
    const-string v0, "child"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method public final resolve(Lokio/ByteString;)Lokio/Path;
    .locals 1

    .line 3
    const-string v0, "child"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method public final resolve(Lokio/ByteString;Z)Lokio/Path;
    .locals 1

    .line 4
    const-string v0, "child"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/-Path;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method public final resolve(Lokio/Path;)Lokio/Path;
    .locals 1

    .line 5
    const-string v0, "child"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method public final resolve(Lokio/Path;Z)Lokio/Path;
    .locals 1

    .line 6
    const-string v0, "child"

    invoke-static {p1, v0}, Li5/a;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lokio/internal/-Path;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method public final toFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toNioPath()Ljava/nio/file/Path;
    .locals 2

    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lc3/a;->k(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Li5/a;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final volumeLetter()Ljava/lang/Character;
    .locals 5

    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/-Path;->access$getSLASH$p()Lokio/ByteString;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lokio/Path;->getBytes$okio()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v2}, Lokio/ByteString;->getByte(I)B

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_3

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x41

    if-gt v1, v0, :cond_4

    const/16 v1, 0x5b

    if-ge v0, v1, :cond_4

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    :cond_4
    :goto_1
    return-object v4
.end method
