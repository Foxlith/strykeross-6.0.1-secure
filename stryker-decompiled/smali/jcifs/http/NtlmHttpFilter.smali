.class public Ljcifs/http/NtlmHttpFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public doFilter(Lv4/j;Lv4/l;Lv4/a;)V
    .locals 1

    .line 1
    check-cast p1, Ljavax/servlet/http/c;

    check-cast p2, Ljavax/servlet/http/e;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/http/NtlmHttpFilter;->negotiate(Ljavax/servlet/http/c;Ljavax/servlet/http/e;Z)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljcifs/http/NtlmHttpServletRequest;

    invoke-direct {v0, p1, p2}, Ljcifs/http/NtlmHttpServletRequest;-><init>(Ljavax/servlet/http/c;Ljava/security/Principal;)V

    invoke-interface {p3}, Lv4/a;->a()V

    return-void
.end method

.method public getFilterConfig()Lv4/b;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lv4/b;)V
    .locals 3

    .line 1
    const-string v0, "jcifs.smb.client.soTimeout"

    const-string v1, "1800000"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.netbios.cachePolicy"

    const-string v1, "1200"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.smb.lmCompatibility"

    const-string v1, "0"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.smb.client.useExtendedSecurity"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lv4/b;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "jcifs."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lv4/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "jcifs.smb.client.domain"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    const-string p1, "jcifs.http.domainController"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    const-string p1, "jcifs.http.loadBalance"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    :cond_2
    const-string p1, "jcifs.http.enableBasic"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    const-string p1, "jcifs.http.insecureBasic"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    const-string p1, "jcifs.http.basicRealm"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "jCIFS"

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    :cond_3
    const-string p1, "jcifs.util.loglevel"

    const/4 v0, -0x1

    invoke-static {p1, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_4

    invoke-static {p1}, Ljcifs/util/LogStream;->setLevel(I)V

    :cond_4
    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x2

    if-le p1, v0, :cond_5

    :try_start_0
    sget-object p1, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    const-string v0, "JCIFS PROPERTIES"

    invoke-static {p1, v0}, Ljcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public negotiate(Ljavax/servlet/http/c;Ljavax/servlet/http/e;Z)Ljcifs/smb/NtlmPasswordAuthentication;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "NtlmHttpFilter: "

    const-string v0, "Authorization"

    invoke-interface {v2, v0}, Ljavax/servlet/http/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, v1, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    iget-boolean v5, v1, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    if-nez v5, :cond_0

    invoke-interface/range {p1 .. p1}, Lv4/j;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    const-string v9, "\""

    const-string v10, "Basic realm=\""

    const-string v11, "NTLM"

    const-string v12, "WWW-Authenticate"

    const/4 v13, 0x0

    if-eqz v0, :cond_2

    const-string v14, "NTLM "

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    if-eqz v5, :cond_2

    const-string v15, "Basic "

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    goto :goto_1

    :cond_2
    move v4, v7

    goto/16 :goto_8

    :cond_3
    :goto_1
    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getSession()Ljavax/servlet/http/f;

    iget-boolean v0, v1, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    invoke-static {v0, v6}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    invoke-static {v0}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/c;Ljavax/servlet/http/e;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v13

    :cond_4
    throw v13

    :cond_5
    throw v13

    :cond_6
    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x6

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v15, "US-ASCII"

    invoke-direct {v14, v0, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v15, -0x1

    if-eq v0, v15, :cond_7

    invoke-virtual {v14, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v16

    goto :goto_2

    :cond_7
    move-object v8, v14

    :goto_2
    if-eq v0, v15, :cond_8

    add-int/2addr v0, v6

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    const-string v0, ""

    :goto_3
    const/16 v14, 0x5c

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ne v14, v15, :cond_9

    const/16 v14, 0x2f

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    :cond_9
    if-eq v14, v15, :cond_a

    invoke-virtual {v8, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v7, v17

    goto :goto_4

    :cond_a
    iget-object v7, v1, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    :goto_4
    if-eq v14, v15, :cond_b

    add-int/2addr v14, v6

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_b
    new-instance v14, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v14, v7, v8, v0}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    invoke-static {v0, v6}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v0

    :try_start_0
    invoke-static {v0, v14}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V

    sget v7, Ljcifs/util/LogStream;->level:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_c

    sget-object v7, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " successfully authenticated against "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_c
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getSession()Ljavax/servlet/http/f;

    throw v13

    :goto_6
    sget v7, Ljcifs/util/LogStream;->level:I

    if-le v7, v6, :cond_d

    sget-object v6, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": 0x"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v4

    const/16 v8, 0x8

    invoke-static {v4, v8}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v0

    const v4, -0x3ffffffb    # -2.0000012f

    if-ne v0, v4, :cond_e

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljavax/servlet/http/c;->getSession(Z)Ljavax/servlet/http/f;

    :cond_e
    move-object v0, v3

    check-cast v0, Ljavax/servlet/http/h;

    invoke-virtual {v0, v12, v11}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/servlet/http/h;->a(Ljava/lang/String;)V

    :cond_f
    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Ljavax/servlet/http/h;->k(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljavax/servlet/http/h;->g(I)V

    :goto_7
    invoke-virtual {v0}, Ljavax/servlet/http/h;->c()V

    return-object v13

    :goto_8
    if-nez p3, :cond_11

    invoke-interface {v2, v4}, Ljavax/servlet/http/c;->getSession(Z)Ljavax/servlet/http/f;

    move-object v0, v3

    check-cast v0, Ljavax/servlet/http/h;

    invoke-virtual {v0, v12, v11}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/servlet/http/h;->a(Ljava/lang/String;)V

    :cond_10
    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Ljavax/servlet/http/h;->k(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/servlet/http/h;->g(I)V

    goto :goto_7

    :cond_11
    return-object v13
.end method

.method public setFilterConfig(Lv4/b;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/http/NtlmHttpFilter;->init(Lv4/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
