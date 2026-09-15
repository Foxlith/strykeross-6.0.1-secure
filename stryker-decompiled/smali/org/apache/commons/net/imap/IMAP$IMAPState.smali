.class public final enum Lorg/apache/commons/net/imap/IMAP$IMAPState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMAPState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAP$IMAPState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field public static final enum AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field public static final enum DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field public static final enum LOGOUT_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

.field public static final enum NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    const-string v1, "DISCONNECTED_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAP$IMAPState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->DISCONNECTED_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    new-instance v1, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    const-string v2, "NOT_AUTH_STATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/net/imap/IMAP$IMAPState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/net/imap/IMAP$IMAPState;->NOT_AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    new-instance v2, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    const-string v3, "AUTH_STATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/net/imap/IMAP$IMAPState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/net/imap/IMAP$IMAPState;->AUTH_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    new-instance v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    const-string v4, "LOGOUT_STATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/net/imap/IMAP$IMAPState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/net/imap/IMAP$IMAPState;->LOGOUT_STATE:Lorg/apache/commons/net/imap/IMAP$IMAPState;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/commons/net/imap/IMAP$IMAPState;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->$VALUES:[Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAP$IMAPState;
    .locals 1

    const-class v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAP$IMAPState;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAP$IMAPState;->$VALUES:[Lorg/apache/commons/net/imap/IMAP$IMAPState;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAP$IMAPState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAP$IMAPState;

    return-object v0
.end method
