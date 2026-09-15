.class public final Li/k;
.super Landroid/view/MenuInflater;
.source "SourceFile"


# static fields
.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Li/k;->e:[Ljava/lang/Class;

    sput-object v0, Li/k;->f:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Li/k;->c:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Li/k;->a:[Ljava/lang/Object;

    iput-object p1, p0, Li/k;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Li/k;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Li/j;

    move-object/from16 v3, p3

    invoke-direct {v2, v0, v3}, Li/j;-><init>(Li/k;Landroid/view/Menu;)V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    const-string v5, "menu"

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expecting menu, got "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v4, :cond_18

    :goto_1
    const/4 v7, 0x0

    move v9, v7

    move v10, v9

    const/4 v11, 0x0

    :goto_2
    if-nez v9, :cond_17

    if-eq v3, v4, :cond_16

    const-string v12, "item"

    const-string v13, "group"

    const/4 v14, 0x3

    if-eq v3, v6, :cond_8

    if-eq v3, v14, :cond_3

    :cond_2
    :goto_3
    move-object/from16 v8, p1

    move v6, v4

    goto/16 :goto_4

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_4

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v8, p1

    move v6, v4

    move v10, v7

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_10

    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iput v7, v2, Li/j;->b:I

    iput v7, v2, Li/j;->c:I

    iput v7, v2, Li/j;->d:I

    iput v7, v2, Li/j;->e:I

    iput-boolean v4, v2, Li/j;->f:Z

    iput-boolean v4, v2, Li/j;->g:Z

    goto :goto_3

    .line 1
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-boolean v3, v2, Li/j;->h:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Li/j;->z:Landroidx/appcompat/view/menu/r;

    if-eqz v3, :cond_6

    .line 2
    iget-object v3, v3, Landroidx/appcompat/view/menu/r;->a:Landroid/view/ActionProvider;

    .line 3
    invoke-virtual {v3}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v4, v2, Li/j;->h:Z

    iget v3, v2, Li/j;->b:I

    iget v12, v2, Li/j;->i:I

    iget v13, v2, Li/j;->j:I

    iget-object v14, v2, Li/j;->k:Ljava/lang/CharSequence;

    iget-object v15, v2, Li/j;->a:Landroid/view/Menu;

    .line 4
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/j;->b(Landroid/view/MenuItem;)V

    goto :goto_3

    :cond_6
    iput-boolean v4, v2, Li/j;->h:Z

    iget v3, v2, Li/j;->b:I

    iget v12, v2, Li/j;->i:I

    iget v13, v2, Li/j;->j:I

    iget-object v14, v2, Li/j;->k:Ljava/lang/CharSequence;

    iget-object v15, v2, Li/j;->a:Landroid/view/Menu;

    .line 5
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Li/j;->b(Landroid/view/MenuItem;)V

    goto :goto_3

    .line 6
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v8, p1

    move v6, v4

    move v9, v6

    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_8
    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v15, 0x5

    const/4 v8, 0x4

    iget-object v6, v2, Li/j;->E:Li/k;

    if-eqz v13, :cond_a

    .line 7
    iget-object v3, v6, Li/k;->c:Landroid/content/Context;

    sget-object v6, Le/a;->q:[I

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v2, Li/j;->b:I

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v2, Li/j;->c:I

    invoke-virtual {v3, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v2, Li/j;->d:I

    invoke-virtual {v3, v15, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v2, Li/j;->e:I

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v2, Li/j;->f:Z

    invoke-virtual {v3, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v2, Li/j;->g:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_3

    .line 8
    :cond_a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 9
    iget-object v3, v6, Li/k;->c:Landroid/content/Context;

    sget-object v12, Le/a;->r:[I

    .line 10
    invoke-virtual {v3, v1, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    const/4 v13, 0x2

    .line 11
    invoke-virtual {v12, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v2, Li/j;->i:I

    iget v4, v2, Li/j;->c:I

    .line 12
    invoke-virtual {v12, v15, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget v15, v2, Li/j;->d:I

    const/4 v13, 0x6

    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    const/high16 v15, -0x10000

    and-int/2addr v4, v15

    const v15, 0xffff

    and-int/2addr v13, v15

    or-int/2addr v4, v13

    iput v4, v2, Li/j;->j:I

    const/4 v4, 0x7

    .line 13
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Li/j;->k:Ljava/lang/CharSequence;

    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Li/j;->l:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v12, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v2, Li/j;->m:I

    const/16 v4, 0x9

    .line 15
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v4, v7

    goto :goto_5

    .line 16
    :cond_b
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_5
    iput-char v4, v2, Li/j;->n:C

    const/16 v4, 0x10

    const/16 v13, 0x1000

    .line 17
    invoke-virtual {v12, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Li/j;->o:I

    const/16 v4, 0xa

    .line 18
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    move v4, v7

    goto :goto_6

    .line 19
    :cond_c
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    iput-char v4, v2, Li/j;->p:C

    const/16 v4, 0x14

    .line 20
    invoke-virtual {v12, v4, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Li/j;->q:I

    const/16 v4, 0xb

    .line 21
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 22
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    :goto_7
    iput v4, v2, Li/j;->r:I

    goto :goto_8

    :cond_d
    iget v4, v2, Li/j;->e:I

    goto :goto_7

    :goto_8
    invoke-virtual {v12, v14, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v2, Li/j;->s:Z

    iget-boolean v4, v2, Li/j;->f:Z

    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v2, Li/j;->t:Z

    iget-boolean v4, v2, Li/j;->g:Z

    const/4 v8, 0x1

    invoke-virtual {v12, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v2, Li/j;->u:Z

    const/16 v4, 0x15

    const/4 v8, -0x1

    .line 23
    invoke-virtual {v12, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Li/j;->v:I

    const/16 v4, 0xc

    .line 24
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Li/j;->y:Ljava/lang/String;

    const/16 v4, 0xd

    .line 25
    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v2, Li/j;->w:I

    const/16 v4, 0xf

    .line 26
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Li/j;->x:Ljava/lang/String;

    const/16 v4, 0xe

    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    const/4 v13, 0x1

    goto :goto_9

    :cond_e
    move v13, v7

    :goto_9
    if-eqz v13, :cond_f

    iget v14, v2, Li/j;->w:I

    if-nez v14, :cond_f

    iget-object v14, v2, Li/j;->x:Ljava/lang/String;

    if-nez v14, :cond_f

    sget-object v13, Li/k;->f:[Ljava/lang/Class;

    .line 27
    iget-object v6, v6, Li/k;->b:[Ljava/lang/Object;

    invoke-virtual {v2, v4, v13, v6}, Li/j;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/r;

    :goto_a
    iput-object v4, v2, Li/j;->z:Landroidx/appcompat/view/menu/r;

    goto :goto_b

    :cond_f
    if-eqz v13, :cond_10

    const-string v4, "SupportMenuInflater"

    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v4, 0x0

    goto :goto_a

    :goto_b
    const/16 v4, 0x11

    .line 28
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Li/j;->A:Ljava/lang/CharSequence;

    const/16 v4, 0x16

    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Li/j;->B:Ljava/lang/CharSequence;

    const/16 v4, 0x13

    .line 29
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 30
    invoke-virtual {v12, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v6, v2, Li/j;->D:Landroid/graphics/PorterDuff$Mode;

    .line 31
    invoke-static {v4, v6}, Landroidx/appcompat/widget/b2;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    :goto_c
    iput-object v4, v2, Li/j;->D:Landroid/graphics/PorterDuff$Mode;

    goto :goto_d

    :cond_11
    const/4 v4, 0x0

    goto :goto_c

    :goto_d
    const/16 v4, 0x12

    .line 32
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 33
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v12, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v6, :cond_12

    .line 34
    invoke-static {v3, v6}, Lx/g;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_12

    goto :goto_e

    .line 35
    :cond_12
    invoke-virtual {v12, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_e
    iput-object v3, v2, Li/j;->C:Landroid/content/res/ColorStateList;

    const/4 v4, 0x0

    goto :goto_f

    :cond_13
    const/4 v4, 0x0

    iput-object v4, v2, Li/j;->C:Landroid/content/res/ColorStateList;

    .line 36
    :goto_f
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v7, v2, Li/j;->h:Z

    move-object/from16 v8, p1

    const/4 v6, 0x1

    goto :goto_10

    :cond_14
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    iput-boolean v6, v2, Li/j;->h:Z

    iget v3, v2, Li/j;->b:I

    iget v8, v2, Li/j;->i:I

    iget v12, v2, Li/j;->j:I

    iget-object v13, v2, Li/j;->k:Ljava/lang/CharSequence;

    iget-object v14, v2, Li/j;->a:Landroid/view/Menu;

    .line 38
    invoke-interface {v14, v3, v8, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v8

    invoke-virtual {v2, v8}, Li/j;->b(Landroid/view/MenuItem;)V

    move-object/from16 v8, p1

    .line 39
    invoke-virtual {v0, v8, v1, v3}, Li/k;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto :goto_10

    :cond_15
    move-object/from16 v8, p1

    const/4 v6, 0x1

    move-object v11, v3

    move v10, v6

    :goto_10
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v6

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected end of document"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    return-void

    :cond_18
    move-object/from16 v8, p1

    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 3

    .line 1
    const-string v0, "Error inflating menu XML"

    instance-of v1, p2, Lb0/a;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Li/k;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p2}, Li/k;->b(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    :try_start_1
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Landroid/view/InflateException;

    invoke-direct {p2, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw p1
.end method
