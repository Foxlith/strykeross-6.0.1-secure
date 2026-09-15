.class public Ljcifs/http/NtlmSsp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljcifs/ntlmssp/NtlmFlags;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authenticate(Ljavax/servlet/http/c;Ljavax/servlet/http/e;[B)Ljcifs/smb/NtlmPasswordAuthentication;
    .locals 9

    .line 1
    const-string v0, "Authorization"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ljavax/servlet/http/c;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "WWW-Authenticate"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    const-string v3, "NTLM "

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_3

    .line 20
    .line 21
    const/4 v4, 0x5

    .line 22
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/16 v4, 0x8

    .line 31
    .line 32
    aget-byte v4, p0, v4

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-ne v4, v5, :cond_0

    .line 36
    .line 37
    new-instance v4, Ljcifs/ntlmssp/Type1Message;

    .line 38
    .line 39
    invoke-direct {v4, p0}, Ljcifs/ntlmssp/Type1Message;-><init>([B)V

    .line 40
    .line 41
    .line 42
    new-instance p0, Ljcifs/ntlmssp/Type2Message;

    .line 43
    .line 44
    invoke-direct {p0, v4, p2, v1}, Ljcifs/ntlmssp/Type2Message;-><init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->toByteArray()[B

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v3, p0}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x3

    .line 61
    if-ne v4, v0, :cond_4

    .line 62
    .line 63
    new-instance p1, Ljcifs/ntlmssp/Type3Message;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Ljcifs/ntlmssp/Type3Message;-><init>([B)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-nez p0, :cond_1

    .line 73
    .line 74
    new-array p0, v2, [B

    .line 75
    .line 76
    :cond_1
    move-object v7, p0

    .line 77
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-nez p0, :cond_2

    .line 82
    .line 83
    new-array p0, v2, [B

    .line 84
    .line 85
    :cond_2
    move-object v8, p0

    .line 86
    new-instance p0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    move-object v3, p0

    .line 97
    move-object v6, p2

    .line 98
    invoke-direct/range {v3 .. v8}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_3
    const-string p0, "NTLM"

    .line 103
    .line 104
    :goto_0
    move-object p2, p1

    .line 105
    check-cast p2, Ljavax/servlet/http/h;

    .line 106
    .line 107
    invoke-virtual {p2, v0, p0}, Ljavax/servlet/http/h;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_4
    check-cast p1, Ljavax/servlet/http/h;

    .line 111
    .line 112
    const/16 p0, 0x191

    .line 113
    .line 114
    invoke-virtual {p1, p0}, Ljavax/servlet/http/h;->k(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v2}, Ljavax/servlet/http/h;->g(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljavax/servlet/http/h;->c()V

    .line 121
    .line 122
    .line 123
    return-object v1
.end method


# virtual methods
.method public doAuthentication(Ljavax/servlet/http/c;Ljavax/servlet/http/e;[B)Ljcifs/smb/NtlmPasswordAuthentication;
    .locals 0

    invoke-static {p1, p2, p3}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/c;Ljavax/servlet/http/e;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object p1

    return-object p1
.end method
