.class public Lorg/apache/commons/net/ftp/FTPClient;
.super Lorg/apache/commons/net/ftp/FTP;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/net/ftp/Configurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;,
        Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;,
        Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;,
        Lorg/apache/commons/net/ftp/FTPClient$CSL;
    }
.end annotation


# static fields
.field public static final ACTIVE_LOCAL_DATA_CONNECTION_MODE:I = 0x0

.field public static final ACTIVE_REMOTE_DATA_CONNECTION_MODE:I = 0x1

.field public static final FTP_IP_ADDRESS_FROM_PASV_RESPONSE:Ljava/lang/String; = "org.apache.commons.net.ftp.ipAddressFromPasvResponse"

.field public static final FTP_SYSTEM_TYPE:Ljava/lang/String; = "org.apache.commons.net.ftp.systemType"

.field public static final FTP_SYSTEM_TYPE_DEFAULT:Ljava/lang/String; = "org.apache.commons.net.ftp.systemType.default"

.field private static final PARMS_PAT:Ljava/util/regex/Pattern;

.field public static final PASSIVE_LOCAL_DATA_CONNECTION_MODE:I = 0x2

.field public static final PASSIVE_REMOTE_DATA_CONNECTION_MODE:I = 0x3

.field public static final SYSTEM_TYPE_PROPERTIES:Ljava/lang/String; = "/systemType.properties"


# instance fields
.field private activeExternalHost:Ljava/net/InetAddress;

.field private activeMaxPort:I

.field private activeMinPort:I

.field private autodetectEncoding:Z

.field private bufferSize:I

.field private configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

.field private controlKeepAliveReplyTimeout:Ljava/time/Duration;

.field private controlKeepAliveTimeout:Ljava/time/Duration;

.field private copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

.field private cslDebug:[I

.field private dataConnectionMode:I

.field private dataTimeout:Ljava/time/Duration;

.field private entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private entryParserKey:Ljava/lang/String;

.field private featuresMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private fileFormat:I

.field private fileStructure:I

.field private fileTransferMode:I

.field private fileType:I

.field private ipAddressFromPasvResponse:Z

.field private listHiddenFiles:Z

.field private parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

.field private passiveHost:Ljava/lang/String;

.field private passiveLocalHost:Ljava/net/InetAddress;

.field private passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

.field private passivePort:I

.field private final random:Ljava/util/Random;

.field private receiveDataSocketBufferSize:I

.field private remoteVerificationEnabled:Z

.field private reportActiveExternalHost:Ljava/net/InetAddress;

.field private restartOffset:J

.field private sendDataSocketBufferSize:I

.field private systemName:Ljava/lang/String;

.field private useEPSVwithIPv4:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/FTPClient;->PARMS_PAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;-><init>()V

    invoke-static {}, Lf4/b;->l()Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    invoke-static {}, Lf4/b;->A()Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;-><init>(Lorg/apache/commons/net/ftp/FTPClient;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

    const-string v0, "org.apache.commons.net.ftp.ipAddressFromPasvResponse"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->ipAddressFromPasvResponse:Z

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initDefaults()V

    invoke-static {}, Lf4/b;->D()Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->remoteVerificationEnabled:Z

    new-instance v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->listHiddenFiles:Z

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->useEPSVwithIPv4:Z

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->random:Ljava/util/Random;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPClient;->lambda$initFeatureMap$0(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/BufferedInputStream;

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/BufferedOutputStream;

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private static getOverrideProperties()Ljava/util/Properties;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPClient$PropertiesSingleton;->PROPERTIES:Ljava/util/Properties;

    return-object v0
.end method

.method private initDefaults()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeExternalHost:Ljava/net/InetAddress;

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->reportActiveExternalHost:Ljava/net/InetAddress;

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMinPort:I

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMaxPort:I

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    const/4 v0, 0x7

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileStructure:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileFormat:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileTransferMode:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParserKey:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    return-void
.end method

.method private initFeatureMap()Z
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->feat()I

    move-result v0

    const/16 v2, 0x212

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    return v3

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    new-instance v5, Lcom/google/android/material/color/utilities/o;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lcom/google/android/material/color/utilities/o;-><init>(I)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method private initiateListParsing(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 2

    .line 4
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->LIST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->getListArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p2

    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    throw p1
.end method

.method private static synthetic lambda$initFeatureMap$0(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Lorg/apache/commons/net/io/CopyStreamAdapter;

    invoke-direct {v0}, Lorg/apache/commons/net/io/CopyStreamAdapter;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V

    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V

    return-object v0
.end method

.method public static parsePathname(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/ftp/FTPClient;->_storeFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method private storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_storeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public _connectAction_()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_connectAction_(Ljava/io/Reader;)V

    return-void
.end method

.method public _connectAction_(Ljava/io/Reader;)V
    .locals 5

    .line 2
    invoke-super {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->_connectAction_(Ljava/io/Reader;)V

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initDefaults()V

    iget-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->autodetectEncoding:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "UTF-8"

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/FTP;->setControlEncoding(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_input_:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    :cond_2
    return-void
.end method

.method public _openDataConnection_(ILjava/lang/String;)Ljava/net/Socket;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public _openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 9

    .line 2
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    invoke-static {v2}, Lorg/apache/commons/net/ftp/DurationUtils;->toMillisInt(Ljava/time/Duration;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const-wide/16 v4, 0x0

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/apache/commons/net/SocketClient;->_serverSocketFactory_:Ljavax/net/ServerSocketFactory;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getActivePort()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Ljavax/net/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object v3

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReportHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/net/ftp/FTP;->eprt(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getReportHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v6

    invoke-virtual {p0, v0, v6}, Lorg/apache/commons/net/ftp/FTP;->port(Ljava/net/InetAddress;I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    return-object v1

    :cond_2
    :try_start_2
    iget-wide v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_3
    return-object v1

    :cond_4
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    :cond_5
    return-object v1

    :cond_6
    if-ltz v2, :cond_7

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    :cond_7
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object p1

    if-ltz v2, :cond_8

    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_8
    iget p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->receiveDataSocketBufferSize:I

    if-lez p2, :cond_9

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_9
    iget p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->sendDataSocketBufferSize:I

    if-lez p2, :cond_a

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    goto/16 :goto_3

    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v3, :cond_b

    :try_start_6
    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_1
    throw p2

    :cond_c
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->isUseEPSVwithIPv4()Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_d

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->epsv()I

    move-result v3

    const/16 v7, 0xe5

    if-ne v3, v7, :cond_e

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parseExtendedPassiveModeReply(Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    if-eqz v0, :cond_f

    return-object v1

    :cond_f
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->pasv()I

    move-result v0

    const/16 v3, 0xe3

    if-eq v0, v3, :cond_10

    return-object v1

    :cond_10
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lorg/apache/commons/net/SocketClient;->_socketFactory_:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->receiveDataSocketBufferSize:I

    if-lez v3, :cond_11

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_11
    iget v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->sendDataSocketBufferSize:I

    if-lez v3, :cond_12

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    :cond_12
    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    if-eqz v3, :cond_13

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    invoke-direct {v3, v7, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_13
    if-ltz v2, :cond_14

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_14
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    iget v6, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    invoke-direct {v2, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v3, p0, Lorg/apache/commons/net/SocketClient;->connectTimeout:I

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-wide v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_15

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->restart(J)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-object v1

    :cond_15
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    if-nez p1, :cond_16

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-object v1

    :cond_16
    move-object p1, v0

    :goto_3
    iget-boolean p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->remoteVerificationEnabled:Z

    if-eqz p2, :cond_18

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/SocketClient;->verifyRemote(Ljava/net/Socket;)Z

    move-result p2

    if-eqz p2, :cond_17

    goto :goto_4

    :cond_17
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Host attempting data connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not same as server "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_4
    return-object p1
.end method

.method public _openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public _parseExtendedPassiveModeReply(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "Could not parse extended passive host information.\nServer Reply: "

    if-ne v0, v2, :cond_0

    if-ne v2, v3, :cond_0

    if-ne v3, v4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    return-void

    :catch_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public _parsePassiveModeReply(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "[Replacing PASV mode reply address "

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/net/ftp/FTPClient;->PARMS_PAT:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "Could not parse passive host information.\nServer Reply: "

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    const-string v2, "0,0,0,0"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/16 v4, 0x2c

    .line 46
    .line 47
    const/16 v5, 0x2e

    .line 48
    .line 49
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :goto_0
    const/4 v4, 0x2

    .line 54
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x3

    .line 63
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    shl-int/lit8 v4, v4, 0x8

    .line 72
    .line 73
    or-int/2addr v1, v4

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->isIpAddressFromPasvResponse()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    iget-object v4, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

    .line 81
    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    :try_start_1
    invoke-interface {v4, v2}, Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;->resolve(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, " with "

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, "]\n"

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/net/SocketClient;->fireReplyReceived(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    .line 124
    .line 125
    move-object v2, v4

    .line 126
    goto :goto_1

    .line 127
    :catch_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 128
    .line 129
    invoke-static {v3, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v0

    .line 137
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/SocketClient;->_socket_:Ljava/net/Socket;

    .line 138
    .line 139
    if-nez p1, :cond_2

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    :cond_3
    :goto_1
    iput-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    .line 152
    .line 153
    iput v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    .line 154
    .line 155
    return-void

    .line 156
    :catch_1
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 157
    .line 158
    const-string v1, "Could not parse passive port information.\nServer Reply: "

    .line 159
    .line 160
    invoke-static {v1, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_4
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 169
    .line 170
    invoke-static {v3, p1}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0
.end method

.method public _retrieveFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 9

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception p3

    move-object v0, p3

    move-object p3, p2

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    invoke-static {v1}, Lorg/apache/commons/net/ftp/DurationUtils;->isPositive(Ljava/time/Duration;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/commons/net/ftp/FTPClient$CSL;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient$CSL;-><init>(Lorg/apache/commons/net/ftp/FTPClient;Ljava/time/Duration;Ljava/time/Duration;)V

    move-object p2, v1

    goto :goto_1

    :catchall_1
    move-exception p3

    move-object v8, p3

    move-object p3, p2

    move-object p2, v0

    move-object v0, v8

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    :cond_3
    return p3

    :catchall_2
    move-exception p3

    goto :goto_3

    :goto_2
    :try_start_3
    invoke-static {p2}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p2

    move-object v8, p3

    move-object p3, p2

    move-object p2, v8

    :goto_3
    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    :cond_4
    throw p3
.end method

.method public _retrieveFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    if-nez p2, :cond_1

    new-instance p2, Lorg/apache/commons/net/io/FromNetASCIIInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/net/io/FromNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    :goto_0
    new-instance v0, Lorg/apache/commons/net/io/SocketInputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/net/io/SocketInputStream;-><init>(Ljava/net/Socket;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public _storeFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    if-nez p2, :cond_1

    new-instance p2, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    invoke-static {v0}, Lorg/apache/commons/net/ftp/DurationUtils;->isPositive(Ljava/time/Duration;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient$CSL;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/net/ftp/FTPClient$CSL;-><init>(Lorg/apache/commons/net/ftp/FTPClient;Ljava/time/Duration;Ljava/time/Duration;)V

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferSize()I

    move-result v2

    const-wide/16 v3, -0x1

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/FTPClient;->mergeListeners(Lorg/apache/commons/net/io/CopyStreamListener;)Lorg/apache/commons/net/io/CopyStreamListener;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/net/io/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;IJLorg/apache/commons/net/io/CopyStreamListener;Z)J

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()[I

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p3

    :try_start_1
    invoke-static {p2}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lorg/apache/commons/net/ftp/FTPClient$CSL;->cleanUp()[I

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    :cond_4
    throw p1
.end method

.method public _storeFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    if-nez p2, :cond_1

    new-instance p2, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->getBufferedOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/net/io/ToNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    :goto_0
    new-instance v0, Lorg/apache/commons/net/io/SocketOutputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/net/io/SocketOutputStream;-><init>(Ljava/net/Socket;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public abort()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->abor()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public allocate(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->allo(I)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public allocate(II)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->allo(II)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public allocate(J)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->allo(J)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public allocate(JI)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/net/ftp/FTP;->allo(JI)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public appendFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->APPE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public appendFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->APPE:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public changeToParentDirectory()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->cdup()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public changeWorkingDirectory(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->cwd(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public completePendingCommand()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    return-void
.end method

.method public createParser(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParserKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    :goto_1
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParserKey:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "org.apache.commons.net.ftp.systemType"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getSystemType()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/apache/commons/net/ftp/FTPClient;->getOverrideProperties()Ljava/util/Properties;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object p1, v0

    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    new-instance v1, Lorg/apache/commons/net/ftp/FTPClientConfig;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-direct {v1, p1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->dele(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public disconnect()V
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/net/ftp/FTP;->disconnect()V

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initDefaults()V

    return-void
.end method

.method public doCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public doCommandAsStrings(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyStrings()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public enterLocalActiveMode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    return-void
.end method

.method public enterLocalPassiveMode()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    return-void
.end method

.method public enterRemoteActiveMode(Ljava/net/InetAddress;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->port(Ljava/net/InetAddress;I)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    const/4 p2, -0x1

    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public enterRemotePassiveMode()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->pasv()I

    move-result v0

    const/16 v1, 0xe3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->_parsePassiveModeReply(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public featureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->featureValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public featureValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_1

    sget-object v0, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public features()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->feat()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public getActivePort()I
    .locals 3

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMinPort:I

    if-lez v0, :cond_1

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMaxPort:I

    if-lt v1, v0, :cond_1

    if-ne v1, v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->random:Ljava/util/Random;

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMinPort:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getAutodetectUTF8()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->autodetectEncoding:Z

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    return v0
.end method

.method public getControlKeepAliveReplyTimeout()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    invoke-static {v0}, Lorg/apache/commons/net/ftp/DurationUtils;->toMillisInt(Ljava/time/Duration;)I

    move-result v0

    return v0
.end method

.method public getControlKeepAliveReplyTimeoutDuration()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    return-object v0
.end method

.method public getControlKeepAliveTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    invoke-static {v0}, Lf4/b;->x(Ljava/time/Duration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getControlKeepAliveTimeoutDuration()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    return-object v0
.end method

.method public getCopyStreamListener()Lorg/apache/commons/net/io/CopyStreamListener;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    return-object v0
.end method

.method public getCslDebug()[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->cslDebug:[I

    return-object v0
.end method

.method public getDataConnectionMode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    return v0
.end method

.method public getDataTimeout()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    return-object v0
.end method

.method public getEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    return-object v0
.end method

.method public getHostAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeExternalHost:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/SocketClient;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getListArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getListHiddenFiles()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, 0x3

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const-string v1, "-a "

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_0
    const-string p1, "-a"

    .line 28
    .line 29
    :cond_1
    return-object p1
.end method

.method public getListHiddenFiles()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->listHiddenFiles:Z

    return v0
.end method

.method public getModificationTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->mdtm(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->getReplyString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPassiveHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPassiveLocalIPAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPassivePort()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->passivePort:I

    return v0
.end method

.method public getReceiveDataSocketBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->receiveDataSocketBufferSize:I

    return v0
.end method

.method public getReportHostAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->reportActiveExternalHost:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRestartOffset()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    return-wide v0
.end method

.method public getSendDataSocketBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->sendDataSocketBufferSize:I

    return v0
.end method

.method public getSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->size(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->getReplyString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->stat()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->stat(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->syst()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0
.end method

.method public getSystemType()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->syst()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string v0, "org.apache.commons.net.ftp.systemType.default"

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "Unable to determine system type - response: "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->systemName:Ljava/lang/String;

    .line 66
    .line 67
    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initFeatureMap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->featuresMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public hasFeature(Lorg/apache/commons/net/ftp/FTPCmd;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public initiateListParsing()Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    return-object v0
.end method

.method public initiateListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    return-object p1
.end method

.method public initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->createParser(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->entryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    return-object p1
.end method

.method public initiateMListParsing()Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object v0

    return-object v0
.end method

.method public initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;
    .locals 3

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLSD:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    invoke-static {}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPClient;->configuration:Lorg/apache/commons/net/ftp/FTPClientConfig;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lorg/apache/commons/net/io/Util;->closeQuietly(Ljava/net/Socket;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    throw v0
.end method

.method public isIpAddressFromPasvResponse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->ipAddressFromPasvResponse:Z

    return v0
.end method

.method public isRemoteVerificationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->remoteVerificationEnabled:Z

    return v0
.end method

.method public isUseEPSVwithIPv4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->useEPSVwithIPv4:Z

    return v0
.end method

.method public listDirectories()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listDirectories(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->DIRECTORIES:Lorg/apache/commons/net/ftp/FTPFileFilter;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method public listFiles()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method public listFiles(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateListParsing(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method public listHelp()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->help()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public listHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->help(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public listNames()[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->listNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/apache/commons/net/ftp/FTPCmd;->NLST:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getListArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_openDataConnection_(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_3
    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_7
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->user(Ljava/lang/String;)I

    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTP;->pass(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->user(Ljava/lang/String;)I

    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTP;->pass(Ljava/lang/String;)I

    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget p1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p3}, Lorg/apache/commons/net/ftp/FTP;->acct(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public logout()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->quit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public makeDirectory(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->mkd(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public mdtmCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getModificationTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public mdtmFile(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getModificationTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public mdtmInstant(Ljava/lang/String;)Ljava/time/Instant;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->getModificationTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGmtInstant(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public mlistDir()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPClient;->mlistDir(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public mlistDir(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method public mlistDir(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->initiateMListParsing(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPListParseEngine;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method public mlistFile(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->MLST:Lorg/apache/commons/net/ftp/FTPCmd;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->getReplyString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    const-string v0, " "

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x3

    .line 38
    if-lt v0, v1, :cond_1

    .line 39
    .line 40
    const-string v0, "^\\s+"

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_1
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    .line 54
    .line 55
    const-string v1, "Invalid server reply (MLST): \'"

    .line 56
    .line 57
    const-string v2, "\'"

    .line 58
    .line 59
    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/ec/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_2
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method

.method public printWorkingDirectory()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->pwd()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x101

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPClient;->parsePathname(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public reinitialize()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->rein()I

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPClient;->initDefaults()V

    const/4 v0, 0x1

    return v0
.end method

.method public remoteAppend(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->appe(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    return p1
.end method

.method public remoteRetrieve(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->retr(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    return p1
.end method

.method public remoteStore(Ljava/lang/String;)Z
    .locals 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->stor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    return p1
.end method

.method public remoteStoreUnique()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->stou()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    return v0
.end method

.method public remoteStoreUnique(Ljava/lang/String;)Z
    .locals 2

    .line 2
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataConnectionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->stou(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result p1

    return p1
.end method

.method public removeDirectory(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->rmd(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->rnfr(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/FTP;->rnto(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public restart(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->rest(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveIntermediate(I)Z

    move-result p1

    return p1
.end method

.method public retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RETR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->_retrieveFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->RETR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPCmd;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->_retrieveFileStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public sendNoOp()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->noop()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public sendSiteCommand(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->site(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public setActiveExternalIPAddress(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeExternalHost:Ljava/net/InetAddress;

    return-void
.end method

.method public setActivePortRange(II)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMinPort:I

    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->activeMaxPort:I

    return-void
.end method

.method public setAutodetectUTF8(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->autodetectEncoding:Z

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->bufferSize:I

    return-void
.end method

.method public setControlKeepAliveReplyTimeout(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    int-to-long v0, p1

    invoke-static {v0, v1}, Lf4/b;->m(J)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    return-void
.end method

.method public setControlKeepAliveReplyTimeout(Ljava/time/Duration;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/commons/net/ftp/DurationUtils;->zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveReplyTimeout:Ljava/time/Duration;

    return-void
.end method

.method public setControlKeepAliveTimeout(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lf4/b;->B(J)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    return-void
.end method

.method public setControlKeepAliveTimeout(Ljava/time/Duration;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/commons/net/ftp/DurationUtils;->zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->controlKeepAliveTimeout:Ljava/time/Duration;

    return-void
.end method

.method public setCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->copyStreamListener:Lorg/apache/commons/net/io/CopyStreamListener;

    return-void
.end method

.method public setDataTimeout(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    int-to-long v0, p1

    invoke-static {v0, v1}, Lf4/b;->m(J)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    return-void
.end method

.method public setDataTimeout(Ljava/time/Duration;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/commons/net/ftp/DurationUtils;->zeroIfNull(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->dataTimeout:Ljava/time/Duration;

    return-void
.end method

.method public setFileStructure(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->stru(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileStructure:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFileTransferMode(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->mode(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileTransferMode:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFileType(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->type(I)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    const/4 p1, 0x4

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileFormat:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFileType(II)Z
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->type(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileType:I

    iput p2, p0, Lorg/apache/commons/net/ftp/FTPClient;->fileFormat:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setIpAddressFromPasvResponse(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->ipAddressFromPasvResponse:Z

    return-void
.end method

.method public setListHiddenFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->listHiddenFiles:Z

    return-void
.end method

.method public setModificationTime(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->mfmt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method

.method public setParserFactory(Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->parserFactory:Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;

    return-void
.end method

.method public setPassiveLocalIPAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    return-void
.end method

.method public setPassiveLocalIPAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveLocalHost:Ljava/net/InetAddress;

    return-void
.end method

.method public setPassiveNatWorkaround(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;

    invoke-direct {p1, p0}, Lorg/apache/commons/net/ftp/FTPClient$NatServerResolverImpl;-><init>(Lorg/apache/commons/net/ftp/FTPClient;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

    return-void
.end method

.method public setPassiveNatWorkaroundStrategy(Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->passiveNatWorkaroundStrategy:Lorg/apache/commons/net/ftp/FTPClient$HostnameResolver;

    return-void
.end method

.method public setReceieveDataSocketBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->receiveDataSocketBufferSize:I

    return-void
.end method

.method public setRemoteVerificationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->remoteVerificationEnabled:Z

    return-void
.end method

.method public setReportActiveExternalIPAddress(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->reportActiveExternalHost:Ljava/net/InetAddress;

    return-void
.end method

.method public setRestartOffset(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->restartOffset:J

    :cond_0
    return-void
.end method

.method public setSendDataSocketBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->sendDataSocketBufferSize:I

    return-void
.end method

.method public setUseEPSVwithIPv4(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClient;->useEPSVwithIPv4:Z

    return-void
.end method

.method public storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOR:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public storeUniqueFile(Ljava/io/InputStream;)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public storeUniqueFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public storeUniqueFileStream()Ljava/io/OutputStream;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public storeUniqueFileStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCmd;->STOU:Lorg/apache/commons/net/ftp/FTPCmd;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Lorg/apache/commons/net/ftp/FTPCmd;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public structureMount(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTP;->smnt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result p1

    return p1
.end method
