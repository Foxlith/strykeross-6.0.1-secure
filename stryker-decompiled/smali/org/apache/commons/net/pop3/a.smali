.class public final synthetic Lorg/apache/commons/net/pop3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ListIterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ListIterator;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/apache/commons/net/pop3/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/commons/net/pop3/a;->b:Ljava/util/ListIterator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/net/pop3/a;->a:I

    iget-object v1, p0, Lorg/apache/commons/net/pop3/a;->b:Ljava/util/ListIterator;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1, p1}, Lorg/apache/commons/net/pop3/POP3Client;->a(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {v1, p1}, Lorg/apache/commons/net/pop3/POP3Client;->b(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
