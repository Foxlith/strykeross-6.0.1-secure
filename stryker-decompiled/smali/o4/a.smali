.class public final Lo4/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:I

.field public final d:Ll4/l;


# direct methods
.method public constructor <init>(Ll4/l;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "/data/data/com.zalexdev.stryker/files/chroot_exec "

    iput-object v0, p0, Lo4/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lo4/a;->c:I

    iput-object p1, p0, Lo4/a;->d:Ll4/l;

    iput-object p2, p0, Lo4/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Device name:"

    const-string v3, "Model:"

    const-string v4, "primary channel:"

    const-string v5, "DS Parameter set: channel"

    const-string v6, "\\x"

    const-string v7, "signal:"

    const-string v8, "SSID:"

    const-string v9, ""

    new-instance v10, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-direct {v10}, Lcom/zalexdev/stryker/custom/WiFINetwork;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    iput v12, v0, Lo4/a;->c:I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v14, v12

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_18

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v12, "*"

    invoke-virtual {v15, v12, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "BSS"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    iget-object v1, v0, Lo4/a;->d:Ll4/l;

    if-eqz v15, :cond_3

    :try_start_1
    const-string v15, "wlan"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "Load"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "width"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "scan"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-virtual {v15, v13}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setInfo(Ljava/util/ArrayList;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v13, v15

    goto :goto_2

    :catch_0
    :goto_1
    move-object/from16 v19, v7

    goto/16 :goto_12

    :cond_0
    :goto_2
    :try_start_2
    const-string v15, "((\\w{2}:){5}\\w{2})"

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v18, :cond_1

    :try_start_3
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    move-object/from16 v18, v13

    goto :goto_4

    :cond_1
    move-object v15, v9

    goto :goto_3

    :goto_4
    :try_start_4
    iget v13, v0, Lo4/a;->c:I

    const/16 v17, 0x1

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Lo4/a;->c:I

    invoke-virtual {v10, v15}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setMac(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ll4/l;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    :goto_5
    invoke-virtual {v10, v13}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setVendor(Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-object/from16 v19, v7

    move-object/from16 v13, v18

    goto/16 :goto_12

    :cond_2
    const-string v13, "Unknown"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :goto_6
    move-object/from16 v19, v7

    move-object/from16 v13, v18

    goto/16 :goto_f

    :catch_2
    move-object/from16 v18, v13

    goto :goto_1

    :cond_3
    :try_start_5
    invoke-virtual {v12, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    const-string v18, "\\d+"

    if-eqz v15, :cond_5

    :try_start_6
    invoke-virtual {v12, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v19, v7

    :try_start_7
    const-string v7, "dBm"

    invoke-virtual {v15, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPower(I)V

    :cond_4
    iget v7, v0, Lo4/a;->c:I

    const/4 v15, 0x1

    add-int/2addr v7, v15

    iput v7, v0, Lo4/a;->c:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move-object/from16 v20, v13

    goto/16 :goto_e

    :cond_5
    move-object/from16 v19, v7

    :try_start_8
    invoke-virtual {v12, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v15, :cond_9

    move-object/from16 v20, v13

    :try_start_9
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v8, 0x0

    :goto_d1
    if-ge v8, v13, :cond_d2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v4, 0x5c

    if-ne v5, v4, :cond_d5

    add-int/lit8 v5, v8, 0x3

    if-le v5, v13, :cond_d4

    invoke-virtual {v15, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d1

    :cond_d4
    const/16 v4, 0x10

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_d6

    add-int/lit8 v5, v8, 0x2

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_d6

    add-int/lit8 v5, v8, 0x1

    add-int/lit8 v4, v8, 0x3

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x10

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x3

    goto :goto_d1

    :cond_d5
    const/16 v4, 0xff

    and-int v5, v5, v4

    invoke-virtual {v15, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d1

    :cond_d6
    const/16 v4, 0x5c

    invoke-virtual {v15, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d1

    :cond_d2
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v4, "UTF-8"

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v7, v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_7

    :catch_3
    :goto_7
    :cond_7
    :try_start_b
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x2

    if-lt v13, v15, :goto_8

    const/4 v8, 0x0

    :goto_d7
    if-ge v8, v13, :cond_d8

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v4, 0x20

    if-lt v5, v4, :goto_d9

    const/16 v4, 0x7f

    if-eq v5, v4, :goto_d9

    add-int/lit8 v8, v8, 0x1

    goto :goto_d7

    :cond_d8
    goto :cond_a

    :goto_d9
    goto :goto_8

    :catch_5
    move-object/from16 v13, v20

    goto/16 :goto_12

    :cond_8
    :goto_8
    const-string v7, "Unsupported name"

    goto :goto_9

    :cond_9
    move-object/from16 v20, v13

    :cond_a
    :goto_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_b

    :goto_a
    invoke-virtual {v10, v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setSsid(Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    const-string v7, "Hidden network"

    goto :goto_a

    :goto_b
    iget v7, v0, Lo4/a;->c:I

    const/4 v13, 0x1

    :goto_c
    add-int/2addr v7, v13

    iput v7, v0, Lo4/a;->c:I

    goto :goto_e

    :catch_6
    :goto_d
    move-object/from16 v20, v13

    goto/16 :goto_12

    :cond_c
    move-object/from16 v20, v13

    invoke-virtual {v12, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v13, 0x3

    if-eqz v7, :cond_e

    iget v7, v0, Lo4/a;->c:I

    if-ne v7, v13, :cond_e

    invoke-virtual {v12, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setChannel(I)V

    :cond_d
    iget v7, v0, Lo4/a;->c:I

    const/4 v13, 0x1

    goto :goto_c

    :cond_e
    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget v7, v0, Lo4/a;->c:I

    if-ne v7, v13, :cond_10

    invoke-virtual {v12, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v13}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setIs5hhz(Ljava/lang/Boolean;)V

    invoke-static/range {v18 .. v18}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v10, v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setChannel(I)V

    :cond_f
    iget v7, v0, Lo4/a;->c:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    const/4 v13, 0x1

    goto :goto_c

    :cond_10
    :goto_e
    move-object/from16 v13, v20

    :goto_f
    :try_start_c
    iget v7, v0, Lo4/a;->c:I

    const/4 v15, 0x4

    if-ne v7, v15, :cond_11

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    iput v7, v0, Lo4/a;->c:I

    new-instance v15, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-direct {v15}, Lcom/zalexdev/stryker/custom/WiFINetwork;-><init>()V

    move-object v10, v15

    goto :goto_10

    :cond_11
    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_17

    const-string v15, "WPS:"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_12

    const-string v15, "Version"

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zalexdev/stryker/custom/WiFINetwork;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v12}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setWps(Ljava/lang/Boolean;)V

    goto/16 :goto_12

    :cond_12
    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_15

    invoke-virtual {v12, v3, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-virtual {v15, v12}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setModel(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-virtual {v1, v12}, Ll4/l;->f(Ljava/lang/String;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setVulnerable(Ljava/lang/Boolean;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 1
    invoke-static {v12}, Ll4/l;->Z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_14

    sget-object v15, Ll4/l;->l:Ljava/util/HashSet;

    if-nez v15, :cond_13

    .line 2
    new-instance v15, Ljava/util/HashSet;

    const-string v0, "pixie_verified.txt"

    invoke-virtual {v1, v0}, Ll4/l;->f0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v15, Ll4/l;->l:Ljava/util/HashSet;

    .line 3
    :cond_13
    invoke-virtual {v15, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v12, 0x1

    goto :goto_11

    :cond_14
    const/4 v12, 0x0

    .line 4
    :goto_11
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setVulnVerified(Ljava/lang/Boolean;)V

    goto :goto_12

    :cond_15
    const-string v0, "0x01"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zalexdev/stryker/custom/WiFINetwork;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setBlocked(Ljava/lang/Boolean;)V

    goto :goto_12

    :cond_16
    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v12, v2, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zalexdev/stryker/custom/WiFINetwork;

    invoke-virtual {v1, v0}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setName(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_12

    :catch_7
    move-object/from16 v19, v7

    goto/16 :goto_d

    :catch_8
    :cond_17
    :goto_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, v19

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    .line 5
    invoke-static {v11, v0}, Landroid/support/v4/media/session/a;->j(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/zalexdev/stryker/custom/WiFINetwork;

    move-object/from16 v13, v20

    invoke-virtual {v0, v13}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setInfo(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_19
    return-object v11
.end method

.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, " scan\'&&echo SCANFINISHED\n"

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lo4/a;->d:Ll4/l;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lorg/bouncycastle/math/ec/a;->a(Ll4/l;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lo4/a;->b:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v2, :cond_f

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v0, "iw dev "

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " scan 2>&1"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ll4/l;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lo4/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_e

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v3, 0x0

    .line 71
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_d

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 82
    .line 83
    if-nez v4, :cond_1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v6, "*"

    .line 91
    .line 92
    const-string v7, ""

    .line 93
    .line 94
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-string v6, "BSS "

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_5

    .line 109
    .line 110
    const-string v6, ":"

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_5

    .line 117
    .line 118
    if-eqz v3, :cond_2

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-eqz v4, :cond_2

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_2

    .line 135
    .line 136
    invoke-virtual {v3, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setInfo(Ljava/util/ArrayList;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :cond_2
    new-instance v2, Lcom/zalexdev/stryker/custom/WiFINetwork;

    .line 143
    .line 144
    invoke-direct {v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v3, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v4, "((\\w{2}:){5}\\w{2})"

    .line 153
    .line 154
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_4

    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v2, v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setMac(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v1, v4}, Ll4/l;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_3

    .line 188
    .line 189
    const-string v4, "Unknown"

    .line 190
    .line 191
    :cond_3
    invoke-virtual {v2, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setVendor(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_4
    const-string v4, "Hidden network"

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setSsid(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    move-object v9, v3

    .line 200
    move-object v3, v2

    .line 201
    move-object v2, v9

    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_5
    if-eqz v3, :cond_0

    .line 205
    .line 206
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    const-string v4, "SSID:"

    .line 210
    .line 211
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_6

    .line 216
    .line 217
    const/4 v4, 0x5

    .line 218
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-nez v5, :cond_0

    .line 231
    .line 232
    const-string v5, "\\x"

    .line 233
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_0

    .line 239
    .line 240
    invoke-virtual {v3, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setSsid(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_6
    const-string v4, "signal:"

    .line 246
    .line 247
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    const-string v8, "\\d+"

    .line 252
    .line 253
    if-eqz v6, :cond_7

    .line 254
    .line 255
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    const-string v5, "dBm"

    .line 264
    .line 265
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_0

    .line 278
    .line 279
    :try_start_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    invoke-virtual {v3, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setPower(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :cond_7
    const-string v4, "WPS:"

    .line 293
    .line 294
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_8

    .line 299
    .line 300
    const-string v4, "Version"

    .line 301
    .line 302
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-eqz v4, :cond_8

    .line 307
    .line 308
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 309
    .line 310
    invoke-virtual {v3, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setWps(Ljava/lang/Boolean;)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_8
    const-string v4, "primary channel:"

    .line 316
    .line 317
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    if-eqz v6, :cond_9

    .line 322
    .line 323
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 324
    .line 325
    invoke-virtual {v3, v6}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setIs5hhz(Ljava/lang/Boolean;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    if-eqz v5, :cond_0

    .line 345
    .line 346
    :try_start_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    invoke-virtual {v3, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setChannel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 355
    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_9
    const-string v4, "DS Parameter set: channel"

    .line 360
    .line 361
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-eqz v6, :cond_a

    .line 366
    .line 367
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_0

    .line 384
    .line 385
    :try_start_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 389
    goto :goto_1

    .line 390
    :cond_a
    const-string v4, "Model:"

    .line 391
    .line 392
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    if-eqz v6, :cond_0

    .line 397
    .line 398
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {v3, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setModel(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v4}, Ll4/l;->f(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    invoke-virtual {v3, v5}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setVulnerable(Ljava/lang/Boolean;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v4}, Ll4/l;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    if-nez v5, :cond_c

    .line 429
    .line 430
    sget-object v5, Ll4/l;->l:Ljava/util/HashSet;

    .line 431
    .line 432
    if-nez v5, :cond_b

    .line 433
    .line 434
    new-instance v5, Ljava/util/HashSet;

    .line 435
    .line 436
    const-string v6, "pixie_verified.txt"

    .line 437
    .line 438
    invoke-virtual {v1, v6}, Ll4/l;->f0(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 439
    .line 440
    .line 441
    move-result-object v6

    .line 442
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 443
    .line 444
    .line 445
    sput-object v5, Ll4/l;->l:Ljava/util/HashSet;

    .line 446
    .line 447
    :cond_b
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    if-eqz v4, :cond_c

    .line 452
    .line 453
    const/4 v4, 0x1

    .line 454
    goto :goto_2

    .line 455
    :cond_c
    const/4 v4, 0x0

    .line 456
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-virtual {v3, v4}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setVulnVerified(Ljava/lang/Boolean;)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_0

    .line 464
    .line 465
    :cond_d
    if-eqz v3, :cond_e

    .line 466
    .line 467
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    if-eqz p1, :cond_e

    .line 472
    .line 473
    invoke-virtual {v3}, Lcom/zalexdev/stryker/custom/WiFINetwork;->getMac()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 478
    .line 479
    .line 480
    move-result p1

    .line 481
    if-nez p1, :cond_e

    .line 482
    .line 483
    invoke-virtual {v3, v2}, Lcom/zalexdev/stryker/custom/WiFINetwork;->setInfo(Ljava/util/ArrayList;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    :cond_e
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_5

    .line 493
    .line 494
    :cond_f
    :try_start_3
    invoke-virtual {v1}, Ll4/l;->w()Ljava/lang/Process;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    new-instance v6, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    iget-object v7, p0, Lo4/a;->a:Ljava/lang/String;

    .line 516
    .line 517
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v7, "\'iw dev "

    .line 521
    .line 522
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object p1

    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 546
    .line 547
    .line 548
    new-instance p1, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .line 552
    .line 553
    new-instance v2, Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .line 557
    .line 558
    new-instance v3, Ljava/io/BufferedReader;

    .line 559
    .line 560
    new-instance v6, Ljava/io/InputStreamReader;

    .line 561
    .line 562
    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 563
    .line 564
    .line 565
    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 566
    .line 567
    .line 568
    :cond_10
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v5

    .line 572
    if-eqz v5, :cond_11

    .line 573
    .line 574
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    const-string v6, "SCANFINISHED"

    .line 578
    .line 579
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 580
    .line 581
    .line 582
    move-result v5

    .line 583
    if-eqz v5, :cond_10

    .line 584
    .line 585
    invoke-virtual {p0, p1}, Lo4/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    goto :goto_3

    .line 593
    :cond_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 594
    .line 595
    .line 596
    new-instance p1, Ljava/io/BufferedReader;

    .line 597
    .line 598
    new-instance v3, Ljava/io/InputStreamReader;

    .line 599
    .line 600
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 601
    .line 602
    .line 603
    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 604
    .line 605
    .line 606
    :goto_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    if-eqz v3, :cond_12

    .line 611
    .line 612
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    goto :goto_4

    .line 616
    :cond_12
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 623
    .line 624
    .line 625
    :catch_1
    :goto_5
    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x0

    iput v0, p0, Lo4/a;->c:I

    return-void
.end method

.method public final onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
