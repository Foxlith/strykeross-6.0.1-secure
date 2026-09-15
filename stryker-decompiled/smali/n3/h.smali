.class public abstract Ln3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    const-string v0, "ssh"

    const-string v1, "ftp"

    const-string v2, "ftps"

    const-string v3, "telnet"

    const-string v4, "smb"

    const-string v5, "rdp"

    const-string v6, "mysql"

    const-string v7, "mssql"

    const-string v8, "postgres"

    const-string v9, "vnc"

    const-string v10, "snmp"

    const-string v11, "redis"

    const-string v12, "pop3"

    const-string v13, "pop3s"

    const-string v14, "imap"

    const-string v15, "imaps"

    const-string v16, "smtp"

    const-string v17, "smtps"

    const-string v18, "rexec"

    const-string v19, "rlogin"

    const-string v20, "cisco"

    const-string v21, "cisco-enable"

    const-string v22, "ldap2"

    const-string v23, "ldap2s"

    const-string v24, "ldap3"

    const-string v25, "asterisk"

    const-string v26, "svn"

    const-string v27, "xmpp"

    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/h;->a:[Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Ln3/h;->b:Ljava/util/LinkedHashMap;

    const-string v1, "ssh"

    const-string v2, "22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ftp"

    const-string v2, "21"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ftps"

    const-string v2, "990"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "telnet"

    const-string v2, "23"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "smb"

    const-string v2, "445"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rdp"

    const-string v2, "3389"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mysql"

    const-string v2, "3306"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mssql"

    const-string v2, "1433"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "postgres"

    const-string v2, "5432"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vnc"

    const-string v2, "5900"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "snmp"

    const-string v2, "161"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "redis"

    const-string v2, "6379"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pop3"

    const-string v2, "110"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imap"

    const-string v2, "143"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "smtp"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
