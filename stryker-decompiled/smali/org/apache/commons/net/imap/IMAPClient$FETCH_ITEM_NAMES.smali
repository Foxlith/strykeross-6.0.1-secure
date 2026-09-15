.class public final enum Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FETCH_ITEM_NAMES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum ALL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum BODY:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum BODYSTRUCTURE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum ENVELOPE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum FAST:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum FLAGS:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum FULL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum INTERNALDATE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum RFC822:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ALL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    new-instance v1, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v2, "FAST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FAST:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    new-instance v2, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v3, "FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FULL:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    new-instance v3, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v4, "BODY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODY:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    new-instance v4, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v5, "BODYSTRUCTURE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->BODYSTRUCTURE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    new-instance v5, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v6, "ENVELOPE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->ENVELOPE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    new-instance v6, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v7, "FLAGS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->FLAGS:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    new-instance v7, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v8, "INTERNALDATE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->INTERNALDATE:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    new-instance v8, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v9, "RFC822"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->RFC822:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    new-instance v9, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    const-string v10, "UID"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->UID:Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    filled-new-array/range {v0 .. v9}, [Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
    .locals 1

    const-class v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPClient$FETCH_ITEM_NAMES;

    return-object v0
.end method
