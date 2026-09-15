.class public final enum Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEARCH_CRITERIA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum ALL:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum ANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum BCC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum BEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum BODY:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum CC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum DELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum DRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum FLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum FROM:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum HEADER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum KEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum LARGER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum NEW:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum NOT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum OLD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum ON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum OR:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum RECENT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SENTBEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SENTON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SENTSINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SMALLER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum SUBJECT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum TEXT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum TO:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNDELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNDRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNFLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNKEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

.field public static final enum UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    new-instance v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v0, v1

    const-string v2, "ALL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ALL:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v1, v2

    const-string v3, "ANSWERED"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v3, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v2, v3

    const-string v4, "BCC"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BCC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v4, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v3, v4

    const-string v5, "BEFORE"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v5, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v4, v5

    const-string v6, "BODY"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->BODY:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v6, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v5, v6

    const-string v7, "CC"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->CC:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v7, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v6, v7

    const-string v8, "DELETED"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v8, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v7, v8

    const-string v9, "DRAFT"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->DRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v9, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v8, v9

    const-string v10, "FLAGGED"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v10, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v9, v10

    const-string v11, "FROM"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->FROM:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v11, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v10, v11

    const-string v12, "HEADER"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->HEADER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v12, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v11, v12

    const-string v13, "KEYWORD"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->KEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v13, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v12, v13

    const-string v14, "LARGER"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->LARGER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v14, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v13, v14

    const-string v15, "NEW"

    move-object/from16 v35, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NEW:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v14, v0

    const-string v15, "NOT"

    move-object/from16 v36, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->NOT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object v15, v0

    const-string v1, "OLD"

    move-object/from16 v37, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OLD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v16, v0

    const-string v1, "ON"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->ON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v17, v0

    const-string v1, "OR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->OR:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v18, v0

    const-string v1, "RECENT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->RECENT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v19, v0

    const-string v1, "SEEN"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v20, v0

    const-string v1, "SENTBEFORE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTBEFORE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v21, v0

    const-string v1, "SENTON"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTON:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v22, v0

    const-string v1, "SENTSINCE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SENTSINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v23, v0

    const-string v1, "SINCE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SINCE:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v24, v0

    const-string v1, "SMALLER"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SMALLER:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v25, v0

    const-string v1, "SUBJECT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->SUBJECT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v26, v0

    const-string v1, "TEXT"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TEXT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v27, v0

    const-string v1, "TO"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->TO:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v28, v0

    const-string v1, "UID"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UID:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v29, v0

    const-string v1, "UNANSWERED"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNANSWERED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v30, v0

    const-string v1, "UNDELETED"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDELETED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v31, v0

    const-string v1, "UNDRAFT"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNDRAFT:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v32, v0

    const-string v1, "UNFLAGGED"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNFLAGGED:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v33, v0

    const-string v1, "UNKEYWORD"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNKEYWORD:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v34, v0

    const-string v1, "UNSEEN"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    filled-new-array/range {v0 .. v34}, [Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;
    .locals 1

    const-class v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPClient$SEARCH_CRITERIA;

    return-object v0
.end method
