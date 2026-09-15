.class public final enum Lorg/apache/commons/net/imap/IMAPCommand;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAPCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum COPY:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LIST:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STORE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;


# instance fields
.field private final imapCommand:Ljava/lang/String;

.field private final maxParamCount:I

.field private final minParamCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v1, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v0, v1

    const-string v2, "CAPABILITY"

    const/4 v15, 0x0

    invoke-direct {v1, v2, v15, v15}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/commons/net/imap/IMAPCommand;->CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v2, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v1, v2

    const-string v3, "NOOP"

    const/4 v14, 0x1

    invoke-direct {v2, v3, v14, v15}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v3, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v2, v3

    const-string v4, "LOGOUT"

    const/4 v13, 0x2

    invoke-direct {v3, v4, v13, v15}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/commons/net/imap/IMAPCommand;->LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v4, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v3, v4

    const-string v5, "STARTTLS"

    const/4 v12, 0x3

    invoke-direct {v4, v5, v12, v15}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/commons/net/imap/IMAPCommand;->STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v5, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v4, v5

    const-string v6, "AUTHENTICATE"

    const/4 v11, 0x4

    invoke-direct {v5, v6, v11, v14}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v6, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v5, v6

    const-string v7, "LOGIN"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v13}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/commons/net/imap/IMAPCommand;->LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v7, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v6, v7

    const-string v8, "XOAUTH"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v14}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/commons/net/imap/IMAPCommand;->XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v8, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v7, v8

    const-string v9, "SELECT"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v14}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/commons/net/imap/IMAPCommand;->SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v9, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v8, v9

    const-string v10, "EXAMINE"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v14}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/commons/net/imap/IMAPCommand;->EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v10, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v9, v10

    const-string v11, "CREATE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v14}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/commons/net/imap/IMAPCommand;->CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v11, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v10, v11

    const-string v12, "DELETE"

    const/16 v15, 0xa

    invoke-direct {v11, v12, v15, v14}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/commons/net/imap/IMAPCommand;->DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v12, Lorg/apache/commons/net/imap/IMAPCommand;

    const/4 v15, 0x4

    move-object v11, v12

    const-string v15, "RENAME"

    const/16 v14, 0xb

    invoke-direct {v12, v15, v14, v13}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/commons/net/imap/IMAPCommand;->RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v14, Lorg/apache/commons/net/imap/IMAPCommand;

    const/4 v15, 0x3

    move-object v12, v14

    const-string v13, "SUBSCRIBE"

    const/16 v15, 0xc

    move-object/from16 v26, v0

    const/4 v0, 0x1

    invoke-direct {v14, v13, v15, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/commons/net/imap/IMAPCommand;->SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v14, Lorg/apache/commons/net/imap/IMAPCommand;

    const/4 v15, 0x2

    move-object v13, v14

    const-string v15, "UNSUBSCRIBE"

    move-object/from16 v27, v1

    const/16 v1, 0xd

    invoke-direct {v14, v15, v1, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/commons/net/imap/IMAPCommand;->UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v1, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object v14, v1

    const-string v15, "LIST"

    const/16 v0, 0xe

    move-object/from16 v28, v2

    const/4 v2, 0x2

    invoke-direct {v1, v15, v0, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/commons/net/imap/IMAPCommand;->LIST:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const/4 v1, 0x4

    move-object v15, v0

    const-string v1, "LSUB"

    move-object/from16 v29, v3

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v16, v0

    const-string v1, "STATUS"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v17, v0

    const-string v1, "APPEND"

    const/16 v3, 0x11

    move-object/from16 v30, v4

    const/4 v4, 0x4

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v18, v0

    const-string v1, "CHECK"

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v19, v0

    const-string v1, "CLOSE"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v20, v0

    const-string v1, "EXPUNGE"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v21, v0

    const-string v1, "SEARCH"

    const/16 v3, 0x15

    const v4, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v22, v0

    const-string v1, "FETCH"

    const/16 v2, 0x16

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v23, v0

    const-string v1, "STORE"

    const/16 v2, 0x17

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STORE:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v24, v0

    const-string v1, "COPY"

    const/16 v2, 0x18

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->COPY:Lorg/apache/commons/net/imap/IMAPCommand;

    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v25, v0

    const-string v1, "UID"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UID:Lorg/apache/commons/net/imap/IMAPCommand;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    filled-new-array/range {v0 .. v25}, [Lorg/apache/commons/net/imap/IMAPCommand;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->$VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 3
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/commons/net/imap/IMAPCommand;->imapCommand:Ljava/lang/String;

    iput p4, p0, Lorg/apache/commons/net/imap/IMAPCommand;->minParamCount:I

    iput p5, p0, Lorg/apache/commons/net/imap/IMAPCommand;->maxParamCount:I

    return-void
.end method

.method public static final getCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPCommand;->getIMAPCommand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 1

    const-class v0, Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/net/imap/IMAPCommand;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->$VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPCommand;

    return-object v0
.end method


# virtual methods
.method public getIMAPCommand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPCommand;->imapCommand:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
