.class public Ljcifs/http/NetworkExplorer;
.super Ljavax/servlet/http/b;
.source "SourceFile"


# static fields
.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private credentialsSupplied:Z

.field private defaultDomain:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private mimeMap:Ljcifs/util/MimeMap;

.field private ntlmSsp:Ljcifs/http/NtlmSsp;

.field private realm:Ljava/lang/String;

.field private style:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x100

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x2f

    if-ge v4, v2, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_2

    return-object v1

    :cond_2
    move v1, v3

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_3

    add-int/lit8 v7, v1, 0x1

    aput-char v6, v0, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v4, v2, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-ge v4, v2, :cond_6

    add-int/lit8 v6, v1, 0x1

    aput-char v5, v0, v1

    :goto_3
    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v6

    if-ge v7, v2, :cond_6

    if-ne v4, v5, :cond_5

    goto :goto_4

    :cond_5
    move v6, v1

    move v4, v7

    goto :goto_3

    :cond_6
    :goto_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method


# virtual methods
.method public compareDates(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .locals 4

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide p1

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method public compareNames(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .locals 2

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_1
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compareSizes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .locals 6

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    if-lez p1, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public compareTypes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .locals 4

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, ""

    if-ne v0, v3, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr p1, v2

    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    :cond_5
    return p1
.end method

.method public doDirectory(Ljavax/servlet/http/c;Ljavax/servlet/http/e;Ljcifs/smb/SmbFile;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/d/yy h:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v3

    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    sget-object v4, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " items listed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-string v6, "fmt"

    invoke-interface {v0, v6}, Lv4/j;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "col"

    :cond_1
    const-string v7, "sort"

    invoke-interface {v0, v7}, Lv4/j;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    const-string v10, "size"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v9

    goto :goto_1

    :cond_3
    const-string v10, "type"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v5

    goto :goto_1

    :cond_4
    const-string v10, "date"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v10, v7

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v10, 0x0

    :goto_1
    const/16 v0, 0x1c

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    array-length v0, v3

    if-ge v12, v0, :cond_11

    :try_start_0
    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v15, 0x10

    if-ne v0, v15, :cond_8

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :goto_3
    sget v15, Ljcifs/util/LogStream;->level:I

    if-le v15, v5, :cond_6

    sget-object v15, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_6
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v15

    const v8, -0x3fffffff    # -2.0000002f

    if-ne v15, v8, :cond_7

    goto :goto_5

    :cond_7
    throw v0

    :goto_4
    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v5, :cond_8

    sget-object v8, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_8
    :goto_5
    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v14, v14, 0x1

    :goto_6
    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v7, :cond_a

    sget-object v8, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_b

    move v11, v7

    :cond_b
    invoke-virtual {v4}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_7
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    if-nez v10, :cond_c

    aget-object v15, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareNames(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_f

    goto :goto_8

    :cond_c
    if-ne v10, v9, :cond_d

    aget-object v5, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v5, v0, v15}, Ljcifs/http/NetworkExplorer;->compareSizes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_f

    goto :goto_8

    :cond_d
    const/4 v5, 0x2

    if-ne v10, v5, :cond_e

    aget-object v5, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v5, v0, v15}, Ljcifs/http/NetworkExplorer;->compareTypes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_f

    goto :goto_8

    :cond_e
    const/4 v5, 0x3

    if-ne v10, v5, :cond_f

    aget-object v15, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareDates(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_f

    goto :goto_8

    :cond_f
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x2

    goto :goto_7

    :cond_10
    :goto_8
    aget-object v0, v3, v12

    invoke-virtual {v4, v8, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_9
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    goto/16 :goto_2

    :cond_11
    const/16 v0, 0x32

    if-le v11, v0, :cond_12

    move v11, v0

    :cond_12
    mul-int/lit8 v11, v11, 0x9

    move-object/from16 v0, p2

    check-cast v0, Ljavax/servlet/http/h;

    .line 1
    iget-object v5, v0, Ljavax/servlet/http/h;->c:Ljava/io/PrintWriter;

    if-nez v5, :cond_13

    .line 2
    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v7, v0, Ljavax/servlet/http/h;->b:Ljavax/servlet/http/g;

    invoke-virtual {v0}, Ljavax/servlet/http/h;->d()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v7, v0, Ljavax/servlet/http/h;->c:Ljava/io/PrintWriter;

    :cond_13
    iget-object v0, v0, Ljavax/servlet/http/h;->c:Ljava/io/PrintWriter;

    const-string v5, "text/html"

    move-object/from16 v7, p2

    check-cast v7, Ljavax/servlet/http/h;

    .line 3
    invoke-virtual {v7, v5}, Ljavax/servlet/http/h;->h(Ljava/lang/String;)V

    const-string v5, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<html><head><title>Network Explorer</title>"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<meta HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<style TYPE=\"text/css\">"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v1, Ljcifs/http/NetworkExplorer;->style:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v3, v3

    const/16 v5, 0xc8

    if-ge v3, v5, :cond_14

    const-string v3, "    a:hover {"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        background: #a2ff01;"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    }"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    const-string v3, "</STYLE>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "</head><body>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "<a class=\"sort\" style=\"width: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";\" href=\"?fmt=detail&sort=name\">Name</a>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "<a class=\"sort\" href=\"?fmt=detail&sort=size\">Size</a>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "<a class=\"sort\" href=\"?fmt=detail&sort=type\">Type</a>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "<a class=\"sort\" style=\"width: 180\" href=\"?fmt=detail&sort=date\">Modified</a><br clear=\'all\'><p>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x7

    if-ge v5, v7, :cond_15

    const-string v3, "<b><big>smb://</big></b><br>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "."

    goto :goto_a

    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "<b><big>"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</big></b><br>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "../"

    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int v7, v13, v14

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " objects ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " directories, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " files)<br>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<b><a class=\"plain\" href=\".\">normal</a> | <a class=\"plain\" href=\"?fmt=detail\">detailed</a></b>"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\'><tr><td>"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "<A style=\"width: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "; height: 18;\" HREF=\""

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "\"><b>&uarr;</b></a>"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "detail"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v12, "<br clear=\'all\'>"

    if-eqz v10, :cond_16

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v10, v9, :cond_17

    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->getType()I

    move-result v10

    const/4 v13, 0x2

    if-eq v10, v13, :cond_18

    :cond_17
    const-string v3, ""

    :cond_18
    invoke-virtual {v4}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljcifs/smb/SmbFile;

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v9, "</b></a>"

    const-string v15, "\"><b>"

    if-eqz v14, :cond_1b

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_19

    const-string v10, "?fmt=detail\"><b>"

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    :cond_19
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</b></a><div align=\'right\'>"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " KB </div><div>"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v9, 0x2e

    invoke-virtual {v13, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v14, 0x1

    add-int/2addr v9, v14

    if-le v9, v14, :cond_1a

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v9

    const/4 v14, 0x6

    if-ge v15, v14, :cond_1a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "</div class=\'ext\'>"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_d
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    :cond_1a
    const-string v9, "&nbsp;</div>"

    goto :goto_d

    :goto_e
    const-string v9, "<div style=\'width: 180\'>"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v13

    invoke-direct {v9, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</div>"

    goto :goto_c

    :goto_f
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_10
    const/4 v9, 0x1

    goto/16 :goto_b

    :cond_1b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_10

    :cond_1c
    const-string v9, ";\" HREF=\""

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</b><br><small>"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x400

    div-long/2addr v13, v15

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "KB <br>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v13

    invoke-direct {v9, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</small>"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</a>"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    :cond_1d
    const-string v2, "</td></tr></table>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "</BODY></HTML>"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public doFile(Ljavax/servlet/http/c;Ljavax/servlet/http/e;Ljcifs/smb/SmbFile;)V
    .locals 5

    .line 1
    const/16 p1, 0x2000

    .line 2
    .line 3
    new-array p1, p1, [B

    .line 4
    .line 5
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    .line 6
    .line 7
    invoke-direct {v0, p3}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    .line 8
    .line 9
    .line 10
    move-object v1, p2

    .line 11
    check-cast v1, Ljavax/servlet/http/h;

    .line 12
    .line 13
    iget-object v1, v1, Ljavax/servlet/http/h;->b:Ljavax/servlet/http/g;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast p2, Ljavax/servlet/http/h;

    .line 20
    .line 21
    const-string v3, "text/plain"

    .line 22
    .line 23
    invoke-virtual {p2, v3}, Ljavax/servlet/http/h;->h(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 v3, 0x2e

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_0

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    add-int/2addr v3, v4

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-le v3, v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x6

    .line 53
    if-ge v3, v4, :cond_0

    .line 54
    .line 55
    iget-object v3, p0, Ljcifs/http/NetworkExplorer;->mimeMap:Ljcifs/util/MimeMap;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljcifs/util/MimeMap;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p2, v2}, Ljavax/servlet/http/h;->h(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->length()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p3, ""

    .line 77
    .line 78
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    const-string v2, "Content-Length"

    .line 86
    .line 87
    invoke-virtual {p2, v2, p3}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string p3, "Accept-Ranges"

    .line 91
    .line 92
    const-string v2, "Bytes"

    .line 93
    .line 94
    invoke-virtual {p2, p3, v2}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-virtual {v0, p1}, Ljcifs/smb/SmbFileInputStream;->read([B)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    const/4 p3, -0x1

    .line 102
    if-eq p2, p3, :cond_1

    .line 103
    .line 104
    const/4 p3, 0x0

    .line 105
    invoke-virtual {v1, p1, p3, p2}, Ljavax/servlet/http/g;->write([BII)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method public doGet(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "smb:/"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljavax/servlet/http/c;->getSession(Z)Ljavax/servlet/http/f;

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    invoke-direct {v1, v5}, Ljcifs/http/NetworkExplorer;->parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    move v10, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v10, v8

    goto :goto_1

    :cond_1
    move-object v9, v7

    goto :goto_0

    :goto_1
    const-string v11, "Authorization"

    invoke-interface {v2, v11}, Ljavax/servlet/http/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, v1, Ljcifs/http/NetworkExplorer;->enableBasic:Z

    if-eqz v12, :cond_3

    iget-boolean v12, v1, Ljcifs/http/NetworkExplorer;->insecureBasic:Z

    if-nez v12, :cond_2

    invoke-interface/range {p1 .. p1}, Lv4/j;->isSecure()Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    move v12, v8

    goto :goto_2

    :cond_3
    move v12, v4

    :goto_2
    if-eqz v11, :cond_e

    const-string v13, "NTLM "

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    if-eqz v12, :cond_e

    const-string v14, "Basic "

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_4
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v5, :cond_6

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v9, v10}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    const-string v0, "\u0001\u0002__MSBROWSE__\u0002"

    invoke-static {v0, v8, v7}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v0

    :goto_4
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getSession()Ljavax/servlet/http/f;

    invoke-static {v0}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/c;Ljavax/servlet/http/e;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_7
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    const-string v5, "US-ASCII"

    invoke-direct {v0, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_8
    move-object v9, v0

    :goto_5
    if-eq v3, v5, :cond_9

    add-int/2addr v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    const-string v0, ""

    :goto_6
    const/16 v3, 0x5c

    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_a

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    :cond_a
    if-eq v3, v5, :cond_b

    invoke-virtual {v9, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_b
    iget-object v4, v1, Ljcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    :goto_7
    if-eq v3, v5, :cond_c

    add-int/2addr v3, v8

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_c
    new-instance v3, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v3, v4, v9, v0}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getSession()Ljavax/servlet/http/f;

    throw v7

    :cond_e
    iget-boolean v7, v1, Ljcifs/http/NetworkExplorer;->credentialsSupplied:Z

    const/16 v8, 0x191

    const-string v10, "close"

    const-string v11, "Connection"

    const-string v13, "\""

    const-string v14, "Basic realm=\""

    const-string v15, "NTLM"

    const-string v6, "WWW-Authenticate"

    if-nez v7, :cond_10

    move-object v0, v3

    check-cast v0, Ljavax/servlet/http/h;

    invoke-virtual {v0, v6, v15}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/servlet/http/h;->a(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0, v11, v10}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljavax/servlet/http/h;->k(I)V

    invoke-virtual {v0}, Ljavax/servlet/http/h;->c()V

    return-void

    :cond_10
    if-nez v9, :cond_11

    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    const-string v5, "smb://"

    invoke-direct {v0, v5}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_11
    new-instance v7, Ljcifs/smb/SmbFile;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    :goto_8
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v1, v2, v3, v0}, Ljcifs/http/NetworkExplorer;->doDirectory(Ljavax/servlet/http/c;Ljavax/servlet/http/e;Ljcifs/smb/SmbFile;)V

    goto :goto_9

    :cond_12
    invoke-virtual {v1, v2, v3, v0}, Ljcifs/http/NetworkExplorer;->doFile(Ljavax/servlet/http/c;Ljavax/servlet/http/e;Ljcifs/smb/SmbFile;)V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljcifs/smb/DfsReferral; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    return-void

    :goto_a
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getQueryString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getPathInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5, v4, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2f

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v6, :cond_13

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    check-cast v2, Ljavax/servlet/http/h;

    invoke-virtual {v2, v0}, Ljavax/servlet/http/h;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljavax/servlet/http/h;->c()V

    return-void

    :goto_b
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v0

    const v4, -0x3ffffffb    # -2.0000012f

    if-ne v0, v4, :cond_14

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    check-cast v2, Ljavax/servlet/http/h;

    invoke-virtual {v2, v0}, Ljavax/servlet/http/h;->f(Ljava/lang/String;)V

    return-void

    :cond_14
    move-object v0, v3

    check-cast v0, Ljavax/servlet/http/h;

    invoke-virtual {v0, v6, v15}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/servlet/http/h;->a(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v0, v11, v10}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljavax/servlet/http/h;->k(I)V

    invoke-virtual {v0}, Ljavax/servlet/http/h;->c()V

    return-void
.end method

.method public init()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x400

    .line 7
    .line 8
    new-array v1, v1, [B

    .line 9
    .line 10
    const-string v2, "jcifs.smb.client.soTimeout"

    .line 11
    .line 12
    const-string v3, "600000"

    .line 13
    .line 14
    invoke-static {v2, v3}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v2, "jcifs.smb.client.attrExpirationPeriod"

    .line 18
    .line 19
    const-string v3, "300000"

    .line 20
    .line 21
    invoke-static {v2, v3}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lv4/c;->getInitParameterNames()Ljava/util/Enumeration;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    .line 40
    const-string v4, "jcifs."

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lv4/c;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v3, v4}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v2, "jcifs.smb.client.username"

    .line 57
    .line 58
    invoke-static {v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    new-instance v2, Ljcifs/http/NtlmSsp;

    .line 65
    .line 66
    invoke-direct {v2}, Ljcifs/http/NtlmSsp;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Ljcifs/http/NetworkExplorer;->ntlmSsp:Ljcifs/http/NtlmSsp;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    const/4 v2, 0x1

    .line 73
    iput-boolean v2, p0, Ljcifs/http/NetworkExplorer;->credentialsSupplied:Z

    .line 74
    .line 75
    :goto_1
    :try_start_0
    new-instance v2, Ljcifs/util/MimeMap;

    .line 76
    .line 77
    invoke-direct {v2}, Ljcifs/util/MimeMap;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Ljcifs/http/NetworkExplorer;->mimeMap:Ljcifs/util/MimeMap;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "jcifs/http/ne.css"

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    :goto_2
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const/4 v4, 0x0

    .line 101
    const/4 v5, -0x1

    .line 102
    if-eq v3, v5, :cond_3

    .line 103
    .line 104
    new-instance v5, Ljava/lang/String;

    .line 105
    .line 106
    const-string v6, "ISO8859_1"

    .line 107
    .line 108
    invoke-direct {v5, v1, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catch_0
    move-exception v0

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->style:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    const-string v0, "jcifs.http.enableBasic"

    .line 124
    .line 125
    invoke-static {v0, v4}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput-boolean v0, p0, Ljcifs/http/NetworkExplorer;->enableBasic:Z

    .line 130
    .line 131
    const-string v0, "jcifs.http.insecureBasic"

    .line 132
    .line 133
    invoke-static {v0, v4}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput-boolean v0, p0, Ljcifs/http/NetworkExplorer;->insecureBasic:Z

    .line 138
    .line 139
    const-string v0, "jcifs.http.basicRealm"

    .line 140
    .line 141
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    .line 146
    .line 147
    if-nez v0, :cond_4

    .line 148
    .line 149
    const-string v0, "jCIFS"

    .line 150
    .line 151
    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    .line 152
    .line 153
    :cond_4
    const-string v0, "jcifs.smb.client.domain"

    .line 154
    .line 155
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    .line 160
    .line 161
    const-string v0, "jcifs.util.loglevel"

    .line 162
    .line 163
    invoke-static {v0, v5}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eq v0, v5, :cond_5

    .line 168
    .line 169
    invoke-static {v0}, Ljcifs/util/LogStream;->setLevel(I)V

    .line 170
    .line 171
    .line 172
    :cond_5
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 173
    .line 174
    const/4 v1, 0x2

    .line 175
    if-le v0, v1, :cond_6

    .line 176
    .line 177
    :try_start_1
    sget-object v0, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    .line 178
    .line 179
    const-string v1, "JCIFS PROPERTIES"

    .line 180
    .line 181
    invoke-static {v0, v1}, Ljcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .line 183
    .line 184
    :catch_1
    :cond_6
    return-void

    .line 185
    :goto_3
    new-instance v1, Lv4/g;

    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v1
.end method
