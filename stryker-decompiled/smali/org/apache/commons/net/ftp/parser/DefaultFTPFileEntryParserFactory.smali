.class public Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;


# static fields
.field private static final JAVA_IDENTIFIER:Ljava/lang/String; = "\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME:Ljava/lang/String; = "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 4

    .line 2
    const-string v0, " does not implement the interface org.apache.commons.net.ftp.FTPFileEntryParser."

    sget-object v1, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1

    :goto_0
    :try_start_2
    new-instance v1, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v2, "Error initializing parser"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v3, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    :cond_0
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_c

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNIX_LTRIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    const/4 p1, 0x1

    invoke-direct {v2, p2, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    goto/16 :goto_4

    :cond_1
    const-string v1, "UNIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    const/4 p1, 0x0

    invoke-direct {v2, p2, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    goto/16 :goto_4

    :cond_2
    const-string v1, "VMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto/16 :goto_4

    :cond_3
    const-string v1, "WINDOWS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v2

    goto :goto_4

    :cond_4
    const-string v1, "OS/2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v2, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_4

    :cond_5
    const-string v1, "OS/400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "AS/400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "MVS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v2, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    invoke-direct {v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    goto :goto_4

    :cond_7
    const-string v1, "NETWARE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v2, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_4

    :cond_8
    const-string v1, "MACOS PETER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v2, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_4

    :cond_9
    const-string v1, "TYPE: L8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v2, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_4

    :cond_a
    new-instance p2, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v0, "Unknown parser type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_3
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v2

    :cond_c
    :goto_4
    instance-of p1, v2, Lorg/apache/commons/net/ftp/Configurable;

    if-eqz p1, :cond_d

    move-object p1, v2

    check-cast p1, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {p1, p2}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :cond_d
    return-object v2
.end method

.method private createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 7

    .line 2
    if-eqz p1, :cond_0

    const-string v0, "WINDOWS"

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    new-instance v3, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-string v5, "UNIX_LTRIM"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move p1, v4

    :cond_2
    invoke-direct {v3, v0, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    return-object v1
.end method

.method private createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 7

    .line 2
    if-eqz p1, :cond_0

    const-string v0, "OS/400"

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    new-instance v3, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const-string v5, "UNIX_LTRIM"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move p1, v4

    :cond_2
    invoke-direct {v3, v0, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;Z)V

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    return-object v1
.end method


# virtual methods
.method public createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v0, "Parser key cannot be null"

    invoke-direct {p1, v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object p1

    return-object p1
.end method

.method public createMVSEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createNTFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createNetwareFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS2FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS400FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createUnixFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createVMSVersioningFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>()V

    return-object v0
.end method
