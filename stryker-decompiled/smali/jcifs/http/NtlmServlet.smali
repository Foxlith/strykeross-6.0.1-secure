.class public abstract Ljcifs/http/NtlmServlet;
.super Ljavax/servlet/http/b;
.source "SourceFile"


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public init(Lv4/e;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lv4/c;->init(Lv4/e;)V

    const-string v0, "jcifs.smb.client.soTimeout"

    const-string v1, "300000"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.netbios.cachePolicy"

    const-string v1, "600"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lv4/e;->getInitParameterNames()Ljava/util/Enumeration;

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

    invoke-interface {p1, v1}, Lv4/e;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p1, "jcifs.smb.client.domain"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    const-string p1, "jcifs.http.domainController"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const-string p1, "jcifs.http.loadBalance"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    :cond_2
    const-string p1, "jcifs.http.enableBasic"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    const-string p1, "jcifs.http.insecureBasic"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    const-string p1, "jcifs.http.basicRealm"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string p1, "jCIFS"

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public service(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    if-nez v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lv4/j;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const-string v6, "Authorization"

    invoke-interface {v1, v6}, Ljavax/servlet/http/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\""

    const-string v9, "Basic realm=\""

    const-string v10, "NTLM"

    const-string v11, "WWW-Authenticate"

    if-eqz v6, :cond_d

    const-string v12, "NTLM "

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    if-eqz v3, :cond_d

    const-string v13, "Basic "

    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    :cond_2
    iget-boolean v13, v0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    const/4 v14, 0x0

    if-eqz v13, :cond_3

    new-instance v13, Ljcifs/UniAddress;

    iget-object v15, v0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const/16 v7, 0x1c

    invoke-static {v15, v7, v14}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v7

    invoke-direct {v13, v7}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v7, v0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    invoke-static {v7, v5}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v13

    :goto_1
    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v13}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v4

    invoke-static {v1, v2, v4}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/c;Ljavax/servlet/http/e;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v4

    if-nez v4, :cond_a

    return-void

    :cond_4
    new-instance v7, Ljava/lang/String;

    const/4 v12, 0x6

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    const-string v12, "US-ASCII"

    invoke-direct {v7, v6, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v6, 0x3a

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v12, -0x1

    if-eq v6, v12, :cond_5

    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_5
    move-object v15, v7

    :goto_2
    if-eq v6, v12, :cond_6

    add-int/2addr v6, v5

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_6
    const-string v6, ""

    :goto_3
    const/16 v7, 0x5c

    invoke-virtual {v15, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v12, :cond_7

    const/16 v7, 0x2f

    invoke-virtual {v15, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    :cond_7
    if-eq v7, v12, :cond_8

    invoke-virtual {v15, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_8
    iget-object v4, v0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    :goto_4
    if-eq v7, v12, :cond_9

    add-int/2addr v7, v5

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_9
    new-instance v5, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v5, v4, v15, v6}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    :cond_a
    :try_start_0
    invoke-static {v13, v4}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/c;->getSession()Ljavax/servlet/http/f;

    throw v14

    :catch_0
    move-object v1, v2

    check-cast v1, Ljavax/servlet/http/h;

    invoke-virtual {v1, v11, v10}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/servlet/http/h;->a(Ljava/lang/String;)V

    :cond_b
    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v1, v2, v3}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Ljavax/servlet/http/h;->k(I)V

    invoke-virtual {v1}, Ljavax/servlet/http/h;->c()V

    return-void

    :cond_d
    invoke-interface {v1, v4}, Ljavax/servlet/http/c;->getSession(Z)Ljavax/servlet/http/f;

    move-object v1, v2

    check-cast v1, Ljavax/servlet/http/h;

    invoke-virtual {v1, v11, v10}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/servlet/http/h;->a(Ljava/lang/String;)V

    goto :goto_5
.end method
