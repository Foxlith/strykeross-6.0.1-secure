.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sha256_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final sha256_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

.field public static final shake256_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;


# instance fields
.field private final engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/16 v4, 0x10

    const/16 v5, 0x16

    const/4 v6, 0x6

    const/16 v7, 0x21

    const/16 v8, 0x42

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v5, 0x7

    const/16 v6, 0xc

    const/16 v7, 0xe

    const/16 v8, 0x3f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/16 v3, 0x18

    const/16 v5, 0x16

    const/16 v6, 0x8

    const/16 v7, 0x21

    const/16 v8, 0x42

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v5, 0x7

    const/16 v6, 0xe

    const/16 v7, 0x11

    const/16 v8, 0x3f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/16 v3, 0x20

    const/16 v5, 0x11

    const/16 v6, 0x9

    const/16 v7, 0x23

    const/16 v8, 0x44

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/16 v5, 0x8

    const/16 v6, 0xe

    const/16 v7, 0x16

    const/16 v8, 0x40

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v5, 0x16

    const/4 v6, 0x6

    const/16 v7, 0x21

    const/16 v8, 0x42

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v5, 0x7

    const/16 v6, 0xc

    const/16 v7, 0xe

    const/16 v8, 0x3f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/16 v3, 0x18

    const/16 v5, 0x16

    const/16 v6, 0x8

    const/16 v7, 0x21

    const/16 v8, 0x42

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/4 v5, 0x7

    const/16 v6, 0xe

    const/16 v7, 0x11

    const/16 v8, 0x3f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/16 v3, 0x20

    const/16 v5, 0x11

    const/16 v6, 0x9

    const/16 v7, 0x23

    const/16 v8, 0x44

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;

    const/16 v5, 0x8

    const/16 v6, 0xe

    const/16 v7, 0x16

    const/16 v8, 0x40

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->sha256_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/16 v5, 0x16

    const/4 v6, 0x6

    const/16 v7, 0x21

    const/16 v8, 0x42

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_128f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v5, 0x7

    const/16 v6, 0xc

    const/16 v7, 0xe

    const/16 v8, 0x3f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_128s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v3, 0x18

    const/16 v5, 0x16

    const/16 v6, 0x8

    const/16 v7, 0x21

    const/16 v8, 0x42

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_192f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v5, 0x7

    const/16 v6, 0xe

    const/16 v7, 0x11

    const/16 v8, 0x3f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_192s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v3, 0x20

    const/16 v5, 0x11

    const/16 v6, 0x9

    const/16 v7, 0x23

    const/16 v8, 0x44

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_256f:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v5, 0x8

    const/16 v6, 0xe

    const/16 v7, 0x16

    const/16 v8, 0x40

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_256s:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v5, 0x16

    const/4 v6, 0x6

    const/16 v7, 0x21

    const/16 v8, 0x42

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_128f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v5, 0x7

    const/16 v6, 0xc

    const/16 v7, 0xe

    const/16 v8, 0x3f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_128s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v3, 0x18

    const/16 v5, 0x16

    const/16 v6, 0x8

    const/16 v7, 0x21

    const/16 v8, 0x42

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_192f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/4 v5, 0x7

    const/16 v6, 0xe

    const/16 v7, 0x11

    const/16 v8, 0x3f

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_192s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v3, 0x20

    const/16 v5, 0x11

    const/16 v6, 0x9

    const/16 v7, 0x23

    const/16 v8, 0x44

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_256f_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;

    const/16 v5, 0x8

    const/16 v6, 0xe

    const/16 v7, 0x16

    const/16 v8, 0x40

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;-><init>(ZIIIIII)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->shake256_256s_simple:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    return-void
.end method


# virtual methods
.method public getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    return-object v0
.end method
