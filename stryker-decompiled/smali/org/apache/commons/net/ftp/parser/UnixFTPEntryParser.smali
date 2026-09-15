.class public Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "SourceFile"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM d yyyy"

.field private static final DEFAULT_DATE_FORMAT_JA:Ljava/lang/String; = "M\'\u6708\' d\'\u65e5\' yyyy\'\u5e74\'"

.field static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM d HH:mm"

.field private static final DEFAULT_RECENT_DATE_FORMAT_JA:Ljava/lang/String; = "M\'\u6708\' d\'\u65e5\' HH:mm"

.field private static final JA_DAY:Ljava/lang/String; = "\u65e5"

.field private static final JA_MONTH:Ljava/lang/String; = "\u6708"

.field private static final JA_YEAR:Ljava/lang/String; = "\u5e74"

.field public static final NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

.field static final NUMERIC_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final REGEX:Ljava/lang/String; = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}\u6708\\s+\\d{1,2}\u65e5))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}\u5e74))\\s(.*)"


# instance fields
.field final trimLeadingSpaces:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "yyyy-MM-dd HH:mm"

    const/4 v2, 0x0

    const-string v3, "UNIX"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V
    .locals 1

    .line 3
    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}\u6708\\s+\\d{1,2}\u65e5))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}\u5e74))\\s(.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    iput-boolean p2, p0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->trimLeadingSpaces:Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->lambda$preParse$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$preParse$0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^total \\d+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "MMM d yyyy"

    const-string v2, "MMM d HH:mm"

    const-string v3, "UNIX"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12

    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x13

    invoke-virtual {v0, v9}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x14

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x15

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->trimLeadingSpaces:Z

    if-eqz v11, :cond_0

    const-string v11, "^\\s+"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_0
    :try_start_0
    invoke-virtual {v0, v9}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v9

    const-string v11, "\u6708"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    invoke-direct {v9}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    new-instance v11, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v12, "UNIX"

    const-string v13, "M\'\u6708\' d\'\u65e5\' yyyy\'\u5e74\'"

    const-string v14, "M\'\u6708\' d\'\u65e5\' HH:mm"

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    invoke-virtual {v9, v8}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    :goto_0
    invoke-virtual {v1, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    goto :goto_1

    :cond_1
    invoke-super {v0, v8}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x2d

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v3, v9, :cond_3

    const/16 v9, 0x6c

    if-eq v3, v9, :cond_2

    packed-switch v3, :pswitch_data_0

    move v9, v8

    move v3, v11

    goto :goto_2

    :cond_2
    :pswitch_0
    move v9, v8

    move v3, v12

    goto :goto_2

    :pswitch_1
    move v3, v2

    move v9, v8

    goto :goto_2

    :pswitch_2
    move v9, v2

    move v3, v8

    goto :goto_2

    :cond_3
    :pswitch_3
    move v3, v8

    move v9, v3

    :goto_2
    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    move v14, v8

    const/4 v15, 0x4

    :goto_3
    if-ge v14, v11, :cond_5

    invoke-virtual {v0, v15}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "-"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v2

    invoke-virtual {v1, v14, v8, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v11, v15, 0x1

    invoke-virtual {v0, v11}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v2

    invoke-virtual {v1, v14, v2, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v11, v15, 0x2

    invoke-virtual {v0, v11}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v11

    if-nez v11, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move v11, v8

    :goto_4
    invoke-virtual {v1, v14, v12, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x4

    const/4 v11, 0x3

    goto :goto_3

    :cond_5
    if-nez v9, :cond_6

    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setHardLinkCount(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    :try_start_2
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    if-ne v3, v12, :cond_8

    const-string v2, " -> "

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v10, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setLink(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {v1, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    :goto_6
    return-object v1

    :cond_9
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Linet/ipaddr/format/util/h;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Linet/ipaddr/format/util/h;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p1
.end method
