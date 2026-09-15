.class public Ljcifs/util/MimeMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IN_SIZE:I = 0x1b58

.field private static final ST_COMM:I = 0x2

.field private static final ST_EXT:I = 0x5

.field private static final ST_GAP:I = 0x4

.field private static final ST_START:I = 0x1

.field private static final ST_TYPE:I = 0x3


# instance fields
.field private in:[B

.field private inLen:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1b58

    new-array v1, v0, [B

    iput-object v1, p0, Ljcifs/util/MimeMap;->in:[B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "jcifs/util/mime.map"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, p0, Ljcifs/util/MimeMap;->inLen:I

    :goto_0
    iget-object v2, p0, Ljcifs/util/MimeMap;->in:[B

    iget v3, p0, Ljcifs/util/MimeMap;->inLen:I

    rsub-int v4, v3, 0x1b58

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v3, p0, Ljcifs/util/MimeMap;->inLen:I

    add-int/2addr v3, v2

    iput v3, p0, Ljcifs/util/MimeMap;->inLen:I

    goto :goto_0

    :cond_0
    iget v2, p0, Ljcifs/util/MimeMap;->inLen:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    if-eq v2, v0, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error reading jcifs/util/mime.map resource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "application/octet-stream"

    invoke-virtual {p0, p1, v0}, Ljcifs/util/MimeMap;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 2
    move-object/from16 v0, p0

    const/16 v1, 0x80

    new-array v1, v1, [B

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v5, 0x1

    move v8, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v11, v0, Ljcifs/util/MimeMap;->inLen:I

    if-ge v7, v11, :cond_10

    iget-object v11, v0, Ljcifs/util/MimeMap;->in:[B

    aget-byte v11, v11, v7

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v15, 0x2

    const/16 v6, 0x9

    const/16 v14, 0x20

    if-eq v8, v5, :cond_9

    const/16 v5, 0xa

    if-eq v8, v15, :cond_8

    if-eq v8, v13, :cond_c

    const/4 v13, 0x5

    if-eq v8, v12, :cond_0

    if-eq v8, v13, :cond_2

    goto/16 :goto_4

    :cond_0
    if-eq v11, v14, :cond_f

    if-ne v11, v6, :cond_1

    goto/16 :goto_4

    :cond_1
    move v8, v13

    :cond_2
    if-eq v11, v6, :cond_3

    if-eq v11, v5, :cond_3

    if-eq v11, v14, :cond_3

    const/16 v6, 0x23

    if-eq v11, v6, :cond_3

    add-int/lit8 v5, v9, 0x1

    aput-byte v11, v2, v9

    move v9, v5

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_4

    array-length v12, v3

    if-ne v9, v12, :cond_4

    aget-byte v12, v2, v6

    aget-byte v13, v3, v6

    if-ne v12, v13, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    array-length v9, v3

    if-ne v6, v9, :cond_5

    new-instance v2, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v2, v1, v13, v10, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    :cond_5
    const/16 v6, 0x23

    const/4 v13, 0x0

    if-ne v11, v6, :cond_6

    move v8, v15

    goto :goto_2

    :cond_6
    if-ne v11, v5, :cond_7

    move v10, v13

    const/4 v8, 0x1

    :cond_7
    :goto_2
    move v9, v13

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    if-ne v11, v5, :cond_f

    move v9, v13

    move v10, v9

    const/4 v8, 0x1

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    if-eq v11, v14, :cond_f

    if-ne v11, v6, :cond_a

    goto :goto_4

    :cond_a
    const/16 v5, 0x23

    if-ne v11, v5, :cond_b

    move v8, v15

    goto :goto_4

    :cond_b
    move v8, v13

    :cond_c
    if-eq v11, v14, :cond_e

    if-ne v11, v6, :cond_d

    goto :goto_3

    :cond_d
    add-int/lit8 v5, v10, 0x1

    aput-byte v11, v1, v10

    move v10, v5

    goto :goto_4

    :cond_e
    :goto_3
    move v8, v12

    :cond_f
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_10
    return-object p2
.end method
