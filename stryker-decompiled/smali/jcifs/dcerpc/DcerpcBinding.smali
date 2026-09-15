.class public Ljcifs/dcerpc/DcerpcBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INTERFACES:Ljava/util/HashMap;


# instance fields
.field endpoint:Ljava/lang/String;

.field major:I

.field minor:I

.field options:Ljava/util/HashMap;

.field proto:Ljava/lang/String;

.field server:Ljava/lang/String;

.field uuid:Ljcifs/dcerpc/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "srvsvc"

    invoke-static {}, Ljcifs/dcerpc/msrpc/srvsvc;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "lsarpc"

    invoke-static {}, Ljcifs/dcerpc/msrpc/lsarpc;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "samr"

    invoke-static {}, Ljcifs/dcerpc/msrpc/samr;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    const-string v1, "netdfs"

    invoke-static {}, Ljcifs/dcerpc/msrpc/netdfs;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    return-void
.end method

.method public static addInterface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "endpoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "endpoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const-string p2, "\\pipe\\"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    iget-object p2, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    new-instance v2, Ljcifs/dcerpc/UUID;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljcifs/dcerpc/UUID;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ljcifs/dcerpc/DcerpcBinding;->major:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/DcerpcBinding;->minor:I

    return-void

    :cond_0
    new-instance p1, Ljcifs/dcerpc/DcerpcException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bad endpoint: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    :cond_2
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "["

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ","

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, "="

    .line 80
    .line 81
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    const-string v1, "]"

    .line 93
    .line 94
    invoke-static {v0, v1}, Lo/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method
