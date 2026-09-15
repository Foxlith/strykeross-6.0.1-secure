.class public abstract Ljavax/servlet/http/b;
.super Lv4/c;
.source "SourceFile"


# static fields
.field private static final HEADER_IFMODSINCE:Ljava/lang/String; = "If-Modified-Since"

.field private static final HEADER_LASTMOD:Ljava/lang/String; = "Last-Modified"

.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field private static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field private static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field private static final METHOD_POST:Ljava/lang/String; = "POST"

.field private static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field private static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field static synthetic class$javax$servlet$http$HttpServlet:Ljava/lang/Class;

.field private static lStrings:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/b;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public static a(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 4

    .line 1
    sget-object v0, Ljavax/servlet/http/b;->class$javax$servlet$http$HttpServlet:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.servlet.http.HttpServlet"

    invoke-static {v0}, Ljavax/servlet/http/b;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/b;->class$javax$servlet$http$HttpServlet:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljavax/servlet/http/b;->a(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/reflect/Method;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    :cond_2
    return-object p0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doDelete(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 2

    invoke-interface {p1}, Lv4/j;->getProtocol()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljavax/servlet/http/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v1, "http.method_delete_not_supported"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x195

    :goto_0
    check-cast p2, Ljavax/servlet/http/h;

    invoke-virtual {p2, p1, v0}, Ljavax/servlet/http/h;->e(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x190

    goto :goto_0

    :goto_1
    return-void
.end method

.method public doGet(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 2

    invoke-interface {p1}, Lv4/j;->getProtocol()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljavax/servlet/http/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v1, "http.method_get_not_supported"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x195

    :goto_0
    check-cast p2, Ljavax/servlet/http/h;

    invoke-virtual {p2, p1, v0}, Ljavax/servlet/http/h;->e(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x190

    goto :goto_0

    :goto_1
    return-void
.end method

.method public doHead(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 3

    .line 1
    new-instance v0, Ljavax/servlet/http/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, v0, Ljavax/servlet/http/h;->a:Ljavax/servlet/http/e;

    .line 7
    .line 8
    new-instance v1, Ljavax/servlet/http/g;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/io/OutputStream;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, v1, Ljavax/servlet/http/g;->b:I

    .line 15
    .line 16
    iput-object v1, v0, Ljavax/servlet/http/h;->b:Ljavax/servlet/http/g;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Ljavax/servlet/http/b;->doGet(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p1, v0, Ljavax/servlet/http/h;->d:Z

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget p1, v1, Ljavax/servlet/http/g;->b:I

    .line 26
    .line 27
    check-cast p2, Ljavax/servlet/http/h;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljavax/servlet/http/h;->g(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public doOptions(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljavax/servlet/http/b;->a(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_4

    aget-object v6, p1, v0

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "doGet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    move v1, v8

    move v2, v1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "doPost"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v8

    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "doPut"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v8

    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "doDelete"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v8

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const-string p1, "GET"

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eqz v2, :cond_7

    if-nez p1, :cond_6

    const-string p1, "HEAD"

    goto :goto_2

    :cond_6
    const-string v0, ", HEAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_7
    :goto_2
    if-eqz v3, :cond_9

    if-nez p1, :cond_8

    const-string p1, "POST"

    goto :goto_3

    :cond_8
    const-string v0, ", POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_9
    :goto_3
    if-eqz v4, :cond_b

    if-nez p1, :cond_a

    const-string p1, "PUT"

    goto :goto_4

    :cond_a
    const-string v0, ", PUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_b
    :goto_4
    if-eqz v5, :cond_d

    if-nez p1, :cond_c

    const-string p1, "DELETE"

    goto :goto_5

    :cond_c
    const-string v0, ", DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_d
    :goto_5
    if-nez p1, :cond_e

    const-string p1, "TRACE"

    goto :goto_6

    :cond_e
    const-string v0, ", TRACE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    if-nez p1, :cond_f

    const-string p1, "OPTIONS"

    goto :goto_7

    :cond_f
    const-string v0, ", OPTIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_7
    const-string v0, "Allow"

    check-cast p2, Ljavax/servlet/http/h;

    invoke-virtual {p2, v0, p1}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doPost(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 2

    invoke-interface {p1}, Lv4/j;->getProtocol()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljavax/servlet/http/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v1, "http.method_post_not_supported"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x195

    :goto_0
    check-cast p2, Ljavax/servlet/http/h;

    invoke-virtual {p2, p1, v0}, Ljavax/servlet/http/h;->e(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x190

    goto :goto_0

    :goto_1
    return-void
.end method

.method public doPut(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 2

    invoke-interface {p1}, Lv4/j;->getProtocol()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljavax/servlet/http/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v1, "http.method_put_not_supported"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x195

    :goto_0
    check-cast p2, Ljavax/servlet/http/h;

    invoke-virtual {p2, p1, v0}, Ljavax/servlet/http/h;->e(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 p1, 0x190

    goto :goto_0

    :goto_1
    return-void
.end method

.method public doTrace(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "TRACE "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljavax/servlet/http/c;->getRequestURI()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lv4/j;->getProtocol()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1}, Ljavax/servlet/http/c;->getHeaderNames()Ljava/util/Enumeration;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v3, "\r\n"

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuffer;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    const-string v0, ": "

    .line 64
    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v2}, Ljavax/servlet/http/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/StringBuffer;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    check-cast p2, Ljavax/servlet/http/h;

    .line 100
    .line 101
    const-string v1, "message/http"

    .line 102
    .line 103
    invoke-virtual {p2, v1}, Ljavax/servlet/http/h;->h(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v0}, Ljavax/servlet/http/h;->g(I)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p2, Ljavax/servlet/http/h;->b:Ljavax/servlet/http/g;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v1, 0x0

    .line 119
    :goto_1
    if-ge v1, v0, :cond_2

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    const v3, 0xff00

    .line 126
    .line 127
    .line 128
    and-int/2addr v3, v2

    .line 129
    if-nez v3, :cond_1

    .line 130
    .line 131
    invoke-virtual {p2, v2}, Ljavax/servlet/http/g;->write(I)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    sget-object p1, Lv4/i;->a:Ljava/util/ResourceBundle;

    .line 138
    .line 139
    const-string p2, "err.not_iso8859_1"

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance p2, Ljava/lang/Character;

    .line 146
    .line 147
    invoke-direct {p2, v2}, Ljava/lang/Character;-><init>(C)V

    .line 148
    .line 149
    .line 150
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    new-instance p2, Ljava/io/CharConversionException;

    .line 159
    .line 160
    invoke-direct {p2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p2

    .line 164
    :cond_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public getLastModified(Ljavax/servlet/http/c;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public service(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V
    .locals 10

    invoke-interface {p1}, Ljavax/servlet/http/c;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Ljavax/servlet/http/b;->getLastModified(Ljavax/servlet/http/c;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/b;->doGet(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    goto/16 :goto_2

    :cond_0
    const-string v4, "If-Modified-Since"

    invoke-interface {p1, v4}, Ljavax/servlet/http/c;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v8, v0, v6

    mul-long/2addr v8, v6

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    move-object v4, p2

    check-cast v4, Ljavax/servlet/http/h;

    .line 1
    invoke-virtual {v4}, Ljavax/servlet/http/h;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    invoke-virtual {v4, v0, v1}, Ljavax/servlet/http/h;->i(J)V

    .line 2
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/b;->doGet(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    goto/16 :goto_2

    :cond_3
    const/16 p1, 0x130

    check-cast p2, Ljavax/servlet/http/h;

    invoke-virtual {p2, p1}, Ljavax/servlet/http/h;->k(I)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Ljavax/servlet/http/b;->getLastModified(Ljavax/servlet/http/c;)J

    move-result-wide v0

    move-object v4, p2

    check-cast v4, Ljavax/servlet/http/h;

    .line 3
    invoke-virtual {v4}, Ljavax/servlet/http/h;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    invoke-virtual {v4, v0, v1}, Ljavax/servlet/http/h;->i(J)V

    .line 4
    :cond_6
    :goto_1
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/b;->doHead(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    goto :goto_2

    :cond_7
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/b;->doPost(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    goto :goto_2

    :cond_8
    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/b;->doPut(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    goto :goto_2

    :cond_9
    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/b;->doDelete(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    goto :goto_2

    :cond_a
    const-string v1, "OPTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/b;->doOptions(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    goto :goto_2

    :cond_b
    const-string v1, "TRACE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/b;->doTrace(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    goto :goto_2

    :cond_c
    sget-object p1, Ljavax/servlet/http/b;->lStrings:Ljava/util/ResourceBundle;

    const-string v1, "http.method_not_implemented"

    invoke-virtual {p1, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1f5

    check-cast p2, Ljavax/servlet/http/h;

    invoke-virtual {p2, v0, p1}, Ljavax/servlet/http/h;->e(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public service(Lv4/j;Lv4/l;)V
    .locals 0

    :try_start_0
    check-cast p1, Ljavax/servlet/http/c;

    check-cast p2, Ljavax/servlet/http/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/b;->service(Ljavax/servlet/http/c;Ljavax/servlet/http/e;)V

    return-void

    :catch_0
    new-instance p1, Lv4/g;

    const-string p2, "non-HTTP request or response"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    throw p1
.end method
