.class public Ljcifs/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEFAULT_OEM_ENCODING:Ljava/lang/String;

.field private static log:Ljcifs/util/LogStream;

.field private static prp:Ljava/util/Properties;

.field public static socketCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    const-string v0, "Cp850"

    sput-object v0, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    :try_start_0
    const-string v0, "jcifs.properties"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljcifs/Config;->load(Ljava/io/InputStream;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget v1, Ljcifs/util/LogStream;->level:I

    if-lez v1, :cond_1

    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    :goto_2
    const-string v0, "jcifs.util.loglevel"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Ljcifs/util/LogStream;->setLevel(I)V

    :cond_2
    :try_start_1
    const-string v0, ""

    sget-object v1, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WARNING: The default OEM encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not appear to be supported by this JRE. The default encoding will be US-ASCII."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    const-string v0, "US-ASCII"

    sput-object v0, Ljcifs/Config;->DEFAULT_OEM_ENCODING:Ljava/lang/String;

    :goto_3
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    :try_start_2
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    const-string v2, "JCIFS PROPERTIES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :cond_0
    return p1
.end method

.method public static getInetAddress(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 2

    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lez v1, :cond_0

    sget-object v1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    :goto_0
    return-object p1
.end method

.method public static getInetAddressArray(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 4

    invoke-static {p0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p1, p0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    aput-object v3, p1, v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lez p1, :cond_0

    sget-object p1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    return-object p2

    :cond_1
    return-object p1

    :cond_2
    return-object p2
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lez v0, :cond_0

    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 2
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lez v0, :cond_0

    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    :goto_0
    return p1
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .locals 4

    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    const-string v1, "jcifs.smb.client.laddr"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_0

    sget-object v2, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    const-string v3, "Ignoring jcifs.smb.client.laddr address: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lez v0, :cond_0

    sget-object v0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    :goto_0
    return-wide p1
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static list(Ljava/io/PrintStream;)V
    .locals 1

    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->list(Ljava/io/PrintStream;)V

    return-void
.end method

.method public static load(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_0
    :try_start_0
    sget-object p0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p0, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    sget-object p0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    const-string v0, "SecurityException: jcifs will ignore System properties"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static registerSmbURLHandler()V
    .locals 4

    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1.2."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "java.protocol.handler.pkgs"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jcifs"

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v2, "|jcifs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "jcifs-0.7.0b4+ requires Java 1.3 or above. You are running "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    sput-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p0, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    sget-object p0, Ljcifs/Config;->log:Ljcifs/util/LogStream;

    const-string v0, "SecurityException: jcifs will ignore System properties"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljcifs/Config;->prp:Ljava/util/Properties;

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method
