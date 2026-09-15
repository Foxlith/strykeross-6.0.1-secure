.class public final Landroidx/constraintlayout/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[I

.field public static final e:Landroid/util/SparseIntArray;

.field public static final f:Landroid/util/SparseIntArray;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Z

.field public final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/o;->d:[I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/o;->e:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Landroidx/constraintlayout/widget/o;->f:Landroid/util/SparseIntArray;

    const/16 v4, 0x19

    const/16 v5, 0x52

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1a

    const/16 v6, 0x53

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1d

    const/16 v7, 0x55

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x56

    const/16 v8, 0x1e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5c

    const/16 v8, 0x24

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5b

    const/16 v8, 0x23

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x3f

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x3e

    const/4 v8, 0x3

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x1

    const/16 v8, 0x3a

    invoke-virtual {v0, v8, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5b

    const/16 v9, 0x3c

    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5c

    const/16 v10, 0x3b

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x65

    const/4 v11, 0x6

    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x66

    const/4 v12, 0x7

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x11

    const/16 v13, 0x46

    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x12

    const/16 v14, 0x47

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x13

    const/16 v15, 0x48

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x63

    const/16 v7, 0x36

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x0

    const/16 v6, 0x1b

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x20

    const/16 v6, 0x57

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x58

    const/16 v5, 0x21

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0xa

    const/16 v5, 0x45

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x9

    const/16 v15, 0x44

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6a

    const/16 v14, 0xd

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6d

    const/16 v13, 0x10

    invoke-virtual {v0, v4, v13}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6b

    const/16 v5, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x68

    const/16 v15, 0xb

    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6c

    const/16 v15, 0xf

    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x69

    const/16 v10, 0xc

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x28

    const/16 v10, 0x5f

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x50

    const/16 v8, 0x27

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4f

    const/16 v8, 0x29

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5e

    const/16 v8, 0x2a

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4e

    const/16 v8, 0x14

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5d

    const/16 v8, 0x25

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x43

    const/4 v8, 0x5

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x51

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5a

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x54

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x3d

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x39

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x5

    const/16 v8, 0x18

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1c

    invoke-virtual {v0, v12, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x17

    const/16 v8, 0x1f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x18

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x22

    invoke-virtual {v0, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x3

    const/16 v8, 0x17

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x15

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x60

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x49

    const/16 v8, 0x60

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x2

    const/16 v8, 0x16

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x2b

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1a

    const/16 v8, 0x2c

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x15

    const/16 v8, 0x2d

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x16

    const/16 v8, 0x2e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x12

    const/16 v8, 0x2f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x13

    const/16 v8, 0x30

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x31

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x32

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x33

    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x11

    const/16 v8, 0x34

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x19

    const/16 v8, 0x35

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x61

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4a

    const/16 v8, 0x37

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x62

    const/16 v8, 0x38

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4b

    const/16 v8, 0x39

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x63

    const/16 v8, 0x3a

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4c

    const/16 v8, 0x3b

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x40

    const/16 v8, 0x3d

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x42

    const/16 v8, 0x3e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x41

    const/16 v8, 0x3f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1c

    const/16 v8, 0x40

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x79

    const/16 v8, 0x41

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x23

    const/16 v8, 0x42

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x7a

    const/16 v8, 0x43

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x71

    const/16 v8, 0x4f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x1

    const/16 v8, 0x26

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x70

    const/16 v8, 0x44

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x64

    const/16 v8, 0x45

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4d

    const/16 v8, 0x46

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6f

    const/16 v8, 0x61

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x20

    const/16 v8, 0x47

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1e

    const/16 v8, 0x48

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1f

    const/16 v8, 0x49

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x21

    const/16 v8, 0x4a

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1d

    const/16 v8, 0x4b

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x72

    const/16 v8, 0x4c

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x59

    const/16 v8, 0x4d

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x7b

    const/16 v8, 0x4e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x38

    const/16 v8, 0x50

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x37

    const/16 v8, 0x51

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x74

    const/16 v8, 0x52

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x78

    const/16 v8, 0x53

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x77

    const/16 v8, 0x54

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x76

    const/16 v8, 0x55

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x75

    const/16 v7, 0x56

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v3, v8, v12}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x0

    const/16 v4, 0x1b

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x59

    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5c

    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5a

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0xb

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5b

    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x58

    const/16 v4, 0xc

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4e

    const/16 v4, 0x28

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x27

    const/16 v4, 0x47

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x29

    const/16 v4, 0x46

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4d

    const/16 v4, 0x2a

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x14

    const/16 v4, 0x45

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4c

    const/16 v4, 0x25

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x5

    invoke-virtual {v3, v9, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x48

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4b

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x49

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x39

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x38

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x5

    const/16 v4, 0x18

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1c

    invoke-virtual {v3, v12, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x17

    const/16 v4, 0x1f

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x18

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x22

    invoke-virtual {v3, v11, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x2

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x3

    const/16 v2, 0x17

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x15

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4f

    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x40

    const/16 v1, 0x60

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x2

    const/16 v1, 0x16

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x2b

    invoke-virtual {v3, v14, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1a

    const/16 v1, 0x2c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x15

    const/16 v1, 0x2d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x16

    const/16 v1, 0x2e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x14

    invoke-virtual {v3, v0, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x12

    const/16 v1, 0x2f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x13

    const/16 v1, 0x30

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x31

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x32

    invoke-virtual {v3, v15, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x33

    invoke-virtual {v3, v13, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x11

    const/16 v1, 0x34

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x19

    const/16 v1, 0x35

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x50

    const/16 v1, 0x36

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x41

    const/16 v1, 0x37

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x51

    const/16 v1, 0x38

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x42

    const/16 v1, 0x39

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x52

    const/16 v1, 0x3a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x43

    const/16 v2, 0x3b

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x3e

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x3f

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1c

    const/16 v1, 0x40

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x69

    const/16 v1, 0x41

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x22

    const/16 v1, 0x42

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x6a

    const/16 v1, 0x43

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x60

    const/16 v1, 0x4f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x1

    const/16 v1, 0x26

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x61

    const/16 v1, 0x62

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x44

    invoke-virtual {v3, v10, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x53

    const/16 v2, 0x45

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x46

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x20

    const/16 v1, 0x47

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1e

    const/16 v1, 0x48

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1f

    const/16 v1, 0x49

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x21

    const/16 v1, 0x4a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1d

    const/16 v1, 0x4b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x62

    const/16 v1, 0x4c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4a

    const/16 v1, 0x4d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x6b

    const/16 v1, 0x4e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x37

    const/16 v1, 0x50

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x51

    const/16 v1, 0x36

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x64

    const/16 v1, 0x52

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x68

    const/16 v1, 0x53

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x67

    const/16 v1, 0x54

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x66

    const/16 v1, 0x55

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x65

    const/16 v1, 0x56

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5e

    const/16 v1, 0x61

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/o;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/o;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/o;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static c(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I
    .locals 9

    .line 1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-class v6, Landroidx/constraintlayout/widget/r;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v6, v2

    :goto_1
    if-nez v6, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v7, v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_1
    add-int/lit8 v5, v4, 0x1

    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_2
    array-length p0, p1

    if-eq v4, p0, :cond_3

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/j;
    .locals 21

    new-instance v0, Landroidx/constraintlayout/widget/j;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/j;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Landroidx/constraintlayout/widget/s;->c:[I

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/constraintlayout/widget/s;->a:[I

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/o;->d:[I

    sget-object v3, Landroidx/constraintlayout/widget/o;->e:Landroid/util/SparseIntArray;

    sget-object v4, Lp/a;->a:[Ljava/lang/String;

    iget-object v6, v0, Landroidx/constraintlayout/widget/j;->b:Landroidx/constraintlayout/widget/m;

    iget-object v7, v0, Landroidx/constraintlayout/widget/j;->e:Landroidx/constraintlayout/widget/n;

    iget-object v8, v0, Landroidx/constraintlayout/widget/j;->c:Landroidx/constraintlayout/widget/l;

    iget-object v9, v0, Landroidx/constraintlayout/widget/j;->d:Landroidx/constraintlayout/widget/k;

    const-string v12, "CURRENTLY UNSUPPORTED"

    const-string v13, "/"

    const-string v14, "unused attribute 0x"

    const-string v15, "Unknown attribute 0x"

    const-string v11, "   "

    const-string v5, "ConstraintSet"

    if-eqz p2, :cond_7

    .line 1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    move-object/from16 v16, v2

    new-instance v2, Landroidx/constraintlayout/widget/i;

    .line 2
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v4

    const/16 v4, 0xa

    move-object/from16 v18, v12

    new-array v12, v4, [I

    iput-object v12, v2, Landroidx/constraintlayout/widget/i;->a:[I

    new-array v12, v4, [I

    iput-object v12, v2, Landroidx/constraintlayout/widget/i;->b:[I

    const/4 v12, 0x0

    iput v12, v2, Landroidx/constraintlayout/widget/i;->c:I

    new-array v12, v4, [I

    iput-object v12, v2, Landroidx/constraintlayout/widget/i;->d:[I

    new-array v4, v4, [F

    iput-object v4, v2, Landroidx/constraintlayout/widget/i;->e:[F

    const/4 v4, 0x0

    iput v4, v2, Landroidx/constraintlayout/widget/i;->f:I

    const/4 v12, 0x5

    new-array v4, v12, [I

    iput-object v4, v2, Landroidx/constraintlayout/widget/i;->g:[I

    new-array v4, v12, [Ljava/lang/String;

    iput-object v4, v2, Landroidx/constraintlayout/widget/i;->h:[Ljava/lang/String;

    const/4 v4, 0x0

    iput v4, v2, Landroidx/constraintlayout/widget/i;->i:I

    const/4 v12, 0x4

    new-array v4, v12, [I

    iput-object v4, v2, Landroidx/constraintlayout/widget/i;->j:[I

    new-array v4, v12, [Z

    iput-object v4, v2, Landroidx/constraintlayout/widget/i;->k:[Z

    const/4 v4, 0x0

    iput v4, v2, Landroidx/constraintlayout/widget/i;->l:I

    .line 3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_f

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v12

    move/from16 v19, v10

    sget-object v10, Landroidx/constraintlayout/widget/o;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v15

    :goto_3
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    const/4 v15, 0x5

    goto/16 :goto_d

    :pswitch_1
    move-object/from16 v20, v15

    iget-boolean v10, v9, Landroidx/constraintlayout/widget/k;->g:Z

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v12, 0x63

    :goto_5
    invoke-virtual {v2, v12, v10}, Landroidx/constraintlayout/widget/i;->d(IZ)V

    goto :goto_4

    :pswitch_2
    move-object/from16 v20, v15

    sget v10, Ls/a;->a:I

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    iget v10, v10, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v10, v15, :cond_2

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_4

    :cond_2
    iget v10, v0, Landroidx/constraintlayout/widget/j;->a:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v0, Landroidx/constraintlayout/widget/j;->a:I

    goto :goto_4

    :pswitch_3
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->o0:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v12, 0x61

    :goto_6
    invoke-virtual {v2, v12, v10}, Landroidx/constraintlayout/widget/i;->b(II)V

    goto :goto_4

    :pswitch_4
    move-object/from16 v20, v15

    const/4 v10, 0x1

    :goto_7
    invoke-static {v2, v1, v12, v10}, Landroidx/constraintlayout/widget/o;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto :goto_4

    :pswitch_5
    move-object/from16 v20, v15

    const/4 v10, 0x0

    goto :goto_7

    :pswitch_6
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->S:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x5e

    goto :goto_6

    :pswitch_7
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->L:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x5d

    goto :goto_6

    :pswitch_8
    move-object/from16 v20, v15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_9
    move-object/from16 v20, v15

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    iget v10, v10, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x1

    if-ne v10, v15, :cond_3

    const/4 v15, -0x1

    invoke-virtual {v1, v12, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v8, Landroidx/constraintlayout/widget/l;->i:I

    const/16 v12, 0x59

    invoke-virtual {v2, v12, v10}, Landroidx/constraintlayout/widget/i;->b(II)V

    iget v10, v8, Landroidx/constraintlayout/widget/l;->i:I

    if-eq v10, v15, :cond_1

    const/4 v10, -0x2

    const/16 v12, 0x58

    goto :goto_6

    :cond_3
    const/4 v15, 0x3

    if-ne v10, v15, :cond_5

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroidx/constraintlayout/widget/l;->h:Ljava/lang/String;

    const/16 v15, 0x5a

    invoke-virtual {v2, v15, v10}, Landroidx/constraintlayout/widget/i;->c(ILjava/lang/String;)V

    iget-object v10, v8, Landroidx/constraintlayout/widget/l;->h:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_4

    const/4 v10, -0x1

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v8, Landroidx/constraintlayout/widget/l;->i:I

    const/16 v15, 0x59

    invoke-virtual {v2, v15, v12}, Landroidx/constraintlayout/widget/i;->b(II)V

    const/4 v12, -0x2

    const/16 v15, 0x58

    invoke-virtual {v2, v15, v12}, Landroidx/constraintlayout/widget/i;->b(II)V

    goto/16 :goto_4

    :cond_4
    const/4 v10, -0x1

    const/16 v15, 0x58

    :goto_8
    invoke-virtual {v2, v15, v10}, Landroidx/constraintlayout/widget/i;->b(II)V

    goto/16 :goto_4

    :cond_5
    const/16 v15, 0x58

    iget v10, v8, Landroidx/constraintlayout/widget/l;->i:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    goto :goto_8

    :pswitch_a
    move-object/from16 v20, v15

    iget v10, v8, Landroidx/constraintlayout/widget/l;->f:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x55

    :goto_9
    invoke-virtual {v2, v10, v12}, Landroidx/constraintlayout/widget/i;->a(FI)V

    goto/16 :goto_4

    :pswitch_b
    move-object/from16 v20, v15

    iget v10, v8, Landroidx/constraintlayout/widget/l;->g:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    const/16 v12, 0x54

    goto/16 :goto_6

    :pswitch_c
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->h:I

    invoke-static {v1, v12, v10}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v10

    const/16 v12, 0x53

    goto/16 :goto_6

    :pswitch_d
    move-object/from16 v20, v15

    iget v10, v8, Landroidx/constraintlayout/widget/l;->b:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    const/16 v12, 0x52

    goto/16 :goto_6

    :pswitch_e
    move-object/from16 v20, v15

    iget-boolean v10, v9, Landroidx/constraintlayout/widget/k;->m0:Z

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v12, 0x51

    goto/16 :goto_5

    :pswitch_f
    move-object/from16 v20, v15

    iget-boolean v10, v9, Landroidx/constraintlayout/widget/k;->l0:Z

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v12, 0x50

    goto/16 :goto_5

    :pswitch_10
    move-object/from16 v20, v15

    iget v10, v8, Landroidx/constraintlayout/widget/l;->d:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x4f

    goto :goto_9

    :pswitch_11
    move-object/from16 v20, v15

    iget v10, v6, Landroidx/constraintlayout/widget/m;->b:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v12, 0x4e

    goto/16 :goto_6

    :pswitch_12
    move-object/from16 v20, v15

    const/16 v10, 0x4d

    :goto_a
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v10, v12}, Landroidx/constraintlayout/widget/i;->c(ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_13
    move-object/from16 v20, v15

    iget v10, v8, Landroidx/constraintlayout/widget/l;->c:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v12, 0x4c

    goto/16 :goto_6

    :pswitch_14
    move-object/from16 v20, v15

    iget-boolean v10, v9, Landroidx/constraintlayout/widget/k;->n0:Z

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v12, 0x4b

    goto/16 :goto_5

    :pswitch_15
    move-object/from16 v20, v15

    const/16 v10, 0x4a

    goto :goto_a

    :pswitch_16
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->g0:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x49

    goto/16 :goto_6

    :pswitch_17
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->f0:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v12, 0x48

    goto/16 :goto_6

    :pswitch_18
    move-object/from16 v20, v15

    move-object/from16 v10, v18

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_19
    move-object/from16 v20, v15

    move-object/from16 v10, v18

    const/16 v15, 0x46

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_b
    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    invoke-virtual {v2, v12, v15}, Landroidx/constraintlayout/widget/i;->a(FI)V

    goto/16 :goto_4

    :pswitch_1a
    move-object/from16 v20, v15

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v15, 0x45

    goto :goto_b

    :pswitch_1b
    move-object/from16 v20, v15

    iget v10, v6, Landroidx/constraintlayout/widget/m;->d:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x44

    goto/16 :goto_9

    :pswitch_1c
    move-object/from16 v20, v15

    iget v10, v8, Landroidx/constraintlayout/widget/l;->e:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x43

    goto/16 :goto_9

    :pswitch_1d
    move-object/from16 v20, v15

    const/16 v10, 0x42

    const/4 v15, 0x0

    invoke-virtual {v1, v12, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    invoke-virtual {v2, v10, v12}, Landroidx/constraintlayout/widget/i;->b(II)V

    goto/16 :goto_4

    :pswitch_1e
    move-object/from16 v20, v15

    const/4 v15, 0x0

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v10

    iget v10, v10, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x3

    if-ne v10, v15, :cond_6

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x41

    :goto_c
    invoke-virtual {v2, v15, v10}, Landroidx/constraintlayout/widget/i;->c(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const/4 v10, 0x0

    const/16 v15, 0x41

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    aget-object v10, v17, v12

    goto :goto_c

    :pswitch_1f
    move-object/from16 v20, v15

    iget v10, v8, Landroidx/constraintlayout/widget/l;->a:I

    invoke-static {v1, v12, v10}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v10

    const/16 v12, 0x40

    goto/16 :goto_6

    :pswitch_20
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->B:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x3f

    goto/16 :goto_9

    :pswitch_21
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->A:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x3e

    goto/16 :goto_6

    :pswitch_22
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->a:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x3c

    goto/16 :goto_9

    :pswitch_23
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->c0:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x3b

    goto/16 :goto_6

    :pswitch_24
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->b0:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x3a

    goto/16 :goto_6

    :pswitch_25
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->a0:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x39

    goto/16 :goto_6

    :pswitch_26
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->Z:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x38

    goto/16 :goto_6

    :pswitch_27
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->Y:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v12, 0x37

    goto/16 :goto_6

    :pswitch_28
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->X:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v12, 0x36

    goto/16 :goto_6

    :pswitch_29
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->k:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v12, 0x35

    goto/16 :goto_9

    :pswitch_2a
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->j:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v12, 0x34

    goto/16 :goto_9

    :pswitch_2b
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->i:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v12, 0x33

    goto/16 :goto_9

    :pswitch_2c
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->g:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v12, 0x32

    goto/16 :goto_9

    :pswitch_2d
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->f:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v12, 0x31

    goto/16 :goto_9

    :pswitch_2e
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->e:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x30

    goto/16 :goto_9

    :pswitch_2f
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->d:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x2f

    goto/16 :goto_9

    :pswitch_30
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->c:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x2e

    goto/16 :goto_9

    :pswitch_31
    move-object/from16 v20, v15

    iget v10, v7, Landroidx/constraintlayout/widget/n;->b:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x2d

    goto/16 :goto_9

    :pswitch_32
    move-object/from16 v20, v15

    const/16 v10, 0x2c

    const/4 v15, 0x1

    invoke-virtual {v2, v10, v15}, Landroidx/constraintlayout/widget/i;->d(IZ)V

    iget v15, v7, Landroidx/constraintlayout/widget/n;->m:F

    invoke-virtual {v1, v12, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    invoke-virtual {v2, v12, v10}, Landroidx/constraintlayout/widget/i;->a(FI)V

    goto/16 :goto_4

    :pswitch_33
    move-object/from16 v20, v15

    iget v10, v6, Landroidx/constraintlayout/widget/m;->c:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x2b

    goto/16 :goto_9

    :pswitch_34
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->W:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v12, 0x2a

    goto/16 :goto_6

    :pswitch_35
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->V:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v12, 0x29

    goto/16 :goto_6

    :pswitch_36
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->T:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x28

    goto/16 :goto_9

    :pswitch_37
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->U:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x27

    goto/16 :goto_9

    :pswitch_38
    move-object/from16 v20, v15

    iget v10, v0, Landroidx/constraintlayout/widget/j;->a:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v0, Landroidx/constraintlayout/widget/j;->a:I

    const/16 v12, 0x26

    goto/16 :goto_6

    :pswitch_39
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->x:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x25

    goto/16 :goto_9

    :pswitch_3a
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->H:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x22

    goto/16 :goto_6

    :pswitch_3b
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->K:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x1f

    goto/16 :goto_6

    :pswitch_3c
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->G:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x1c

    goto/16 :goto_6

    :pswitch_3d
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->E:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v12, 0x1b

    goto/16 :goto_6

    :pswitch_3e
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->F:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x18

    goto/16 :goto_6

    :pswitch_3f
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->b:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v10

    const/16 v12, 0x17

    goto/16 :goto_6

    :pswitch_40
    move-object/from16 v20, v15

    iget v10, v6, Landroidx/constraintlayout/widget/m;->a:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    aget v10, v16, v10

    const/16 v12, 0x16

    goto/16 :goto_6

    :pswitch_41
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->c:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v10

    const/16 v12, 0x15

    goto/16 :goto_6

    :pswitch_42
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->w:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x14

    goto/16 :goto_9

    :pswitch_43
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->f:F

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v12, 0x13

    goto/16 :goto_9

    :pswitch_44
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->e:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    const/16 v12, 0x12

    goto/16 :goto_6

    :pswitch_45
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->d:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    const/16 v12, 0x11

    goto/16 :goto_6

    :pswitch_46
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->N:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x10

    goto/16 :goto_6

    :pswitch_47
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->R:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0xf

    goto/16 :goto_6

    :pswitch_48
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->O:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0xe

    goto/16 :goto_6

    :pswitch_49
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->M:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0xd

    goto/16 :goto_6

    :pswitch_4a
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->Q:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0xc

    goto/16 :goto_6

    :pswitch_4b
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->P:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0xb

    goto/16 :goto_6

    :pswitch_4c
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->J:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v12, 0x8

    goto/16 :goto_6

    :pswitch_4d
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->D:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    const/4 v12, 0x7

    goto/16 :goto_6

    :pswitch_4e
    move-object/from16 v20, v15

    iget v10, v9, Landroidx/constraintlayout/widget/k;->C:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    const/4 v12, 0x6

    goto/16 :goto_6

    :pswitch_4f
    move-object/from16 v20, v15

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x5

    invoke-virtual {v2, v15, v10}, Landroidx/constraintlayout/widget/i;->c(ILjava/lang/String;)V

    goto :goto_d

    :pswitch_50
    move-object/from16 v20, v15

    const/4 v15, 0x5

    iget v10, v9, Landroidx/constraintlayout/widget/k;->I:I

    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/4 v12, 0x2

    invoke-virtual {v2, v12, v10}, Landroidx/constraintlayout/widget/i;->b(II)V

    :goto_d
    add-int/lit8 v4, v4, 0x1

    move/from16 v10, v19

    move-object/from16 v15, v20

    goto/16 :goto_2

    :cond_7
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v12

    move-object/from16 v20, v15

    .line 4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v2, :cond_e

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_8

    const/16 v10, 0x17

    const/16 v15, 0x18

    if-eq v10, v4, :cond_9

    if-eq v15, v4, :cond_9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_f

    :cond_8
    const/16 v10, 0x17

    const/16 v15, 0x18

    :cond_9
    :goto_f
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v19

    packed-switch v19, :pswitch_data_1

    :pswitch_51
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v15, v20

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 p2, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_10
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_11
    move-object/from16 v10, v18

    :goto_12
    move-object/from16 v18, v3

    const/4 v3, 0x3

    goto/16 :goto_15

    :pswitch_52
    move/from16 p2, v2

    move-object/from16 v15, v20

    iget v2, v9, Landroidx/constraintlayout/widget/k;->o0:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->o0:I

    goto :goto_11

    :pswitch_53
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, 0x1

    :goto_13
    invoke-static {v9, v1, v4, v2}, Landroidx/constraintlayout/widget/o;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto :goto_11

    :pswitch_54
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, 0x0

    goto :goto_13

    :pswitch_55
    move/from16 p2, v2

    move-object/from16 v15, v20

    iget v2, v9, Landroidx/constraintlayout/widget/k;->S:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->S:I

    goto :goto_11

    :pswitch_56
    move/from16 p2, v2

    move-object/from16 v15, v20

    iget v2, v9, Landroidx/constraintlayout/widget/k;->L:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->L:I

    goto :goto_11

    :pswitch_57
    move/from16 p2, v2

    move-object/from16 v15, v20

    iget v2, v9, Landroidx/constraintlayout/widget/k;->r:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->r:I

    goto :goto_11

    :pswitch_58
    move/from16 p2, v2

    move-object/from16 v15, v20

    iget v2, v9, Landroidx/constraintlayout/widget/k;->q:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->q:I

    goto :goto_11

    :pswitch_59
    move/from16 p2, v2

    move-object/from16 v15, v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :pswitch_5a
    move/from16 p2, v2

    move-object/from16 v15, v20

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_b

    const/4 v10, -0x1

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v8, Landroidx/constraintlayout/widget/l;->i:I

    goto/16 :goto_11

    :cond_b
    const/4 v10, 0x3

    if-ne v2, v10, :cond_c

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Landroidx/constraintlayout/widget/l;->h:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a

    const/4 v2, -0x1

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v8, Landroidx/constraintlayout/widget/l;->i:I

    goto/16 :goto_11

    :cond_c
    const/4 v2, -0x1

    iget v10, v8, Landroidx/constraintlayout/widget/l;->i:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    goto/16 :goto_11

    :pswitch_5b
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget v10, v8, Landroidx/constraintlayout/widget/l;->f:F

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v8, Landroidx/constraintlayout/widget/l;->f:F

    goto/16 :goto_11

    :pswitch_5c
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget v10, v8, Landroidx/constraintlayout/widget/l;->g:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v8, Landroidx/constraintlayout/widget/l;->g:I

    goto/16 :goto_11

    :pswitch_5d
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget v10, v7, Landroidx/constraintlayout/widget/n;->h:I

    invoke-static {v1, v4, v10}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, v7, Landroidx/constraintlayout/widget/n;->h:I

    goto/16 :goto_11

    :pswitch_5e
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget v10, v8, Landroidx/constraintlayout/widget/l;->b:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v8, Landroidx/constraintlayout/widget/l;->b:I

    goto/16 :goto_11

    :pswitch_5f
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget-boolean v10, v9, Landroidx/constraintlayout/widget/k;->m0:Z

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v9, Landroidx/constraintlayout/widget/k;->m0:Z

    goto/16 :goto_11

    :pswitch_60
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget-boolean v10, v9, Landroidx/constraintlayout/widget/k;->l0:Z

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v9, Landroidx/constraintlayout/widget/k;->l0:Z

    goto/16 :goto_11

    :pswitch_61
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget v10, v8, Landroidx/constraintlayout/widget/l;->d:F

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v8, Landroidx/constraintlayout/widget/l;->d:F

    goto/16 :goto_11

    :pswitch_62
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget v10, v6, Landroidx/constraintlayout/widget/m;->b:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v6, Landroidx/constraintlayout/widget/m;->b:I

    goto/16 :goto_11

    :pswitch_63
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Landroidx/constraintlayout/widget/k;->k0:Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_64
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget v10, v8, Landroidx/constraintlayout/widget/l;->c:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v8, Landroidx/constraintlayout/widget/l;->c:I

    goto/16 :goto_11

    :pswitch_65
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget-boolean v10, v9, Landroidx/constraintlayout/widget/k;->n0:Z

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v9, Landroidx/constraintlayout/widget/k;->n0:Z

    goto/16 :goto_11

    :pswitch_66
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Landroidx/constraintlayout/widget/k;->j0:Ljava/lang/String;

    goto/16 :goto_11

    :pswitch_67
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget v10, v9, Landroidx/constraintlayout/widget/k;->g0:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v9, Landroidx/constraintlayout/widget/k;->g0:I

    goto/16 :goto_11

    :pswitch_68
    move/from16 p2, v2

    move-object/from16 v15, v20

    const/4 v2, -0x1

    iget v10, v9, Landroidx/constraintlayout/widget/k;->f0:I

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v9, Landroidx/constraintlayout/widget/k;->f0:I

    goto/16 :goto_11

    :pswitch_69
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    const/4 v2, -0x1

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_6a
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v9, Landroidx/constraintlayout/widget/k;->e0:F

    goto/16 :goto_12

    :pswitch_6b
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, v9, Landroidx/constraintlayout/widget/k;->d0:F

    goto/16 :goto_12

    :pswitch_6c
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    iget v2, v6, Landroidx/constraintlayout/widget/m;->d:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v6, Landroidx/constraintlayout/widget/m;->d:F

    goto/16 :goto_12

    :pswitch_6d
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    iget v2, v8, Landroidx/constraintlayout/widget/l;->e:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v8, Landroidx/constraintlayout/widget/l;->e:F

    goto/16 :goto_12

    :pswitch_6e
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_12

    :pswitch_6f
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    move-object/from16 v18, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    :goto_14
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_15

    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    aget-object v4, v17, v4

    goto :goto_14

    :pswitch_70
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v8, Landroidx/constraintlayout/widget/l;->a:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v8, Landroidx/constraintlayout/widget/l;->a:I

    goto/16 :goto_15

    :pswitch_71
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->B:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->B:F

    goto/16 :goto_15

    :pswitch_72
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->A:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->A:I

    goto/16 :goto_15

    :pswitch_73
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->z:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->z:I

    goto/16 :goto_15

    :pswitch_74
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->a:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->a:F

    goto/16 :goto_15

    :pswitch_75
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->c0:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->c0:I

    goto/16 :goto_15

    :pswitch_76
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->b0:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->b0:I

    goto/16 :goto_15

    :pswitch_77
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->a0:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->a0:I

    goto/16 :goto_15

    :pswitch_78
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->Z:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->Z:I

    goto/16 :goto_15

    :pswitch_79
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->Y:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->Y:I

    goto/16 :goto_15

    :pswitch_7a
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->X:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->X:I

    goto/16 :goto_15

    :pswitch_7b
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->k:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->k:F

    goto/16 :goto_15

    :pswitch_7c
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->j:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->j:F

    goto/16 :goto_15

    :pswitch_7d
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->i:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->i:F

    goto/16 :goto_15

    :pswitch_7e
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->g:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->g:F

    goto/16 :goto_15

    :pswitch_7f
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->f:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->f:F

    goto/16 :goto_15

    :pswitch_80
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->e:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->e:F

    goto/16 :goto_15

    :pswitch_81
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->d:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->d:F

    goto/16 :goto_15

    :pswitch_82
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->c:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->c:F

    goto/16 :goto_15

    :pswitch_83
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v7, Landroidx/constraintlayout/widget/n;->b:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->b:F

    goto/16 :goto_15

    :pswitch_84
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    const/4 v2, 0x1

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iput-boolean v2, v7, Landroidx/constraintlayout/widget/n;->l:Z

    iget v2, v7, Landroidx/constraintlayout/widget/n;->m:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v7, Landroidx/constraintlayout/widget/n;->m:F

    goto/16 :goto_15

    :pswitch_85
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v6, Landroidx/constraintlayout/widget/m;->c:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v6, Landroidx/constraintlayout/widget/m;->c:F

    goto/16 :goto_15

    :pswitch_86
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->W:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->W:I

    goto/16 :goto_15

    :pswitch_87
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->V:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->V:I

    goto/16 :goto_15

    :pswitch_88
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->T:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->T:F

    goto/16 :goto_15

    :pswitch_89
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->U:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->U:F

    goto/16 :goto_15

    :pswitch_8a
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v0, Landroidx/constraintlayout/widget/j;->a:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/widget/j;->a:I

    goto/16 :goto_15

    :pswitch_8b
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->x:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->x:F

    goto/16 :goto_15

    :pswitch_8c
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->l:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->l:I

    goto/16 :goto_15

    :pswitch_8d
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->m:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->m:I

    goto/16 :goto_15

    :pswitch_8e
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->H:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->H:I

    goto/16 :goto_15

    :pswitch_8f
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->t:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->t:I

    goto/16 :goto_15

    :pswitch_90
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->s:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->s:I

    goto/16 :goto_15

    :pswitch_91
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->K:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->K:I

    goto/16 :goto_15

    :pswitch_92
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->k:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->k:I

    goto/16 :goto_15

    :pswitch_93
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->j:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->j:I

    goto/16 :goto_15

    :pswitch_94
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->G:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->G:I

    goto/16 :goto_15

    :pswitch_95
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->E:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->E:I

    goto/16 :goto_15

    :pswitch_96
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->i:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->i:I

    goto/16 :goto_15

    :pswitch_97
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->h:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->h:I

    goto/16 :goto_15

    :pswitch_98
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->F:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->F:I

    goto/16 :goto_15

    :pswitch_99
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->b:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->b:I

    goto/16 :goto_15

    :pswitch_9a
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v6, Landroidx/constraintlayout/widget/m;->a:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget v2, v16, v2

    iput v2, v6, Landroidx/constraintlayout/widget/m;->a:I

    goto/16 :goto_15

    :pswitch_9b
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->c:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->c:I

    goto/16 :goto_15

    :pswitch_9c
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->w:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->w:F

    goto/16 :goto_15

    :pswitch_9d
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->f:F

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->f:F

    goto/16 :goto_15

    :pswitch_9e
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->e:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->e:I

    goto/16 :goto_15

    :pswitch_9f
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->d:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->d:I

    goto/16 :goto_15

    :pswitch_a0
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->N:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->N:I

    goto/16 :goto_15

    :pswitch_a1
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->R:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->R:I

    goto/16 :goto_15

    :pswitch_a2
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->O:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->O:I

    goto/16 :goto_15

    :pswitch_a3
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->M:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->M:I

    goto/16 :goto_15

    :pswitch_a4
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->Q:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->Q:I

    goto/16 :goto_15

    :pswitch_a5
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->P:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->P:I

    goto/16 :goto_15

    :pswitch_a6
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->u:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->u:I

    goto/16 :goto_15

    :pswitch_a7
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->v:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->v:I

    goto/16 :goto_15

    :pswitch_a8
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->J:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->J:I

    goto/16 :goto_15

    :pswitch_a9
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->D:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->D:I

    goto/16 :goto_15

    :pswitch_aa
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->C:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->C:I

    goto :goto_15

    :pswitch_ab
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroidx/constraintlayout/widget/k;->y:Ljava/lang/String;

    goto :goto_15

    :pswitch_ac
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->n:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->n:I

    goto :goto_15

    :pswitch_ad
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->o:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->o:I

    goto :goto_15

    :pswitch_ae
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->I:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->I:I

    goto :goto_15

    :pswitch_af
    move/from16 p2, v2

    move-object/from16 v10, v18

    move-object/from16 v15, v20

    move-object/from16 v18, v3

    const/4 v3, 0x3

    iget v2, v9, Landroidx/constraintlayout/widget/k;->p:I

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/widget/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v9, Landroidx/constraintlayout/widget/k;->p:I

    :goto_15
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p2

    move-object/from16 v20, v15

    move-object/from16 v3, v18

    move-object/from16 v18, v10

    goto/16 :goto_e

    :cond_e
    iget-object v2, v9, Landroidx/constraintlayout/widget/k;->j0:Ljava/lang/String;

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    iput-object v2, v9, Landroidx/constraintlayout/widget/k;->i0:[I

    .line 5
    :cond_f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method public static f(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method

.method public static g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    const/16 v2, 0x17

    .line 12
    .line 13
    const/16 v3, 0x15

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/4 v5, 0x5

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq v0, v1, :cond_b

    .line 19
    .line 20
    if-eq v0, v5, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, -0x4

    .line 27
    const/4 v0, -0x2

    .line 28
    if-eq p1, p2, :cond_3

    .line 29
    .line 30
    const/4 p2, -0x3

    .line 31
    if-eq p1, p2, :cond_1

    .line 32
    .line 33
    if-eq p1, v0, :cond_2

    .line 34
    .line 35
    const/4 p2, -0x1

    .line 36
    if-eq p1, p2, :cond_2

    .line 37
    .line 38
    :cond_1
    move v4, v6

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    move v4, v6

    .line 41
    move v6, p1

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    move v6, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    goto :goto_0

    .line 50
    :goto_1
    instance-of p1, p0, Landroidx/constraintlayout/widget/d;

    .line 51
    .line 52
    if-eqz p1, :cond_6

    .line 53
    .line 54
    check-cast p0, Landroidx/constraintlayout/widget/d;

    .line 55
    .line 56
    if-nez p3, :cond_5

    .line 57
    .line 58
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 59
    .line 60
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/d;->W:Z

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_5
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 64
    .line 65
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/d;->X:Z

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_6
    instance-of p1, p0, Landroidx/constraintlayout/widget/k;

    .line 69
    .line 70
    if-eqz p1, :cond_8

    .line 71
    .line 72
    check-cast p0, Landroidx/constraintlayout/widget/k;

    .line 73
    .line 74
    if-nez p3, :cond_7

    .line 75
    .line 76
    iput v6, p0, Landroidx/constraintlayout/widget/k;->b:I

    .line 77
    .line 78
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/k;->l0:Z

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_7
    iput v6, p0, Landroidx/constraintlayout/widget/k;->c:I

    .line 82
    .line 83
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/k;->m0:Z

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_8
    instance-of p1, p0, Landroidx/constraintlayout/widget/i;

    .line 87
    .line 88
    if-eqz p1, :cond_a

    .line 89
    .line 90
    check-cast p0, Landroidx/constraintlayout/widget/i;

    .line 91
    .line 92
    if-nez p3, :cond_9

    .line 93
    .line 94
    invoke-virtual {p0, v2, v6}, Landroidx/constraintlayout/widget/i;->b(II)V

    .line 95
    .line 96
    .line 97
    const/16 p1, 0x50

    .line 98
    .line 99
    :goto_2
    invoke-virtual {p0, p1, v4}, Landroidx/constraintlayout/widget/i;->d(IZ)V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_9
    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/widget/i;->b(II)V

    .line 104
    .line 105
    .line 106
    const/16 p1, 0x51

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_a
    :goto_3
    return-void

    .line 110
    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-nez p1, :cond_c

    .line 115
    .line 116
    goto/16 :goto_7

    .line 117
    .line 118
    :cond_c
    const/16 p2, 0x3d

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-lez p2, :cond_1c

    .line 129
    .line 130
    sub-int/2addr v0, v4

    .line 131
    if-ge p2, v0, :cond_1c

    .line 132
    .line 133
    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    add-int/2addr p2, v4

    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-lez p2, :cond_1c

    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string v0, "ratio"

    .line 157
    .line 158
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_10

    .line 163
    .line 164
    instance-of p2, p0, Landroidx/constraintlayout/widget/d;

    .line 165
    .line 166
    if-eqz p2, :cond_e

    .line 167
    .line 168
    check-cast p0, Landroidx/constraintlayout/widget/d;

    .line 169
    .line 170
    if-nez p3, :cond_d

    .line 171
    .line 172
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_d
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 176
    .line 177
    :goto_4
    invoke-static {p0, p1}, Landroidx/constraintlayout/widget/o;->h(Landroidx/constraintlayout/widget/d;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_7

    .line 181
    .line 182
    :cond_e
    instance-of p2, p0, Landroidx/constraintlayout/widget/k;

    .line 183
    .line 184
    if-eqz p2, :cond_f

    .line 185
    .line 186
    check-cast p0, Landroidx/constraintlayout/widget/k;

    .line 187
    .line 188
    iput-object p1, p0, Landroidx/constraintlayout/widget/k;->y:Ljava/lang/String;

    .line 189
    .line 190
    goto/16 :goto_7

    .line 191
    .line 192
    :cond_f
    instance-of p2, p0, Landroidx/constraintlayout/widget/i;

    .line 193
    .line 194
    if-eqz p2, :cond_1c

    .line 195
    .line 196
    check-cast p0, Landroidx/constraintlayout/widget/i;

    .line 197
    .line 198
    invoke-virtual {p0, v5, p1}, Landroidx/constraintlayout/widget/i;->c(ILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_7

    .line 202
    .line 203
    :cond_10
    const-string v0, "weight"

    .line 204
    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_16

    .line 210
    .line 211
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    instance-of p2, p0, Landroidx/constraintlayout/widget/d;

    .line 216
    .line 217
    if-eqz p2, :cond_12

    .line 218
    .line 219
    check-cast p0, Landroidx/constraintlayout/widget/d;

    .line 220
    .line 221
    if-nez p3, :cond_11

    .line 222
    .line 223
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 224
    .line 225
    iput p1, p0, Landroidx/constraintlayout/widget/d;->H:F

    .line 226
    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :cond_11
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 230
    .line 231
    iput p1, p0, Landroidx/constraintlayout/widget/d;->I:F

    .line 232
    .line 233
    goto/16 :goto_7

    .line 234
    .line 235
    :cond_12
    instance-of p2, p0, Landroidx/constraintlayout/widget/k;

    .line 236
    .line 237
    if-eqz p2, :cond_14

    .line 238
    .line 239
    check-cast p0, Landroidx/constraintlayout/widget/k;

    .line 240
    .line 241
    if-nez p3, :cond_13

    .line 242
    .line 243
    iput v6, p0, Landroidx/constraintlayout/widget/k;->b:I

    .line 244
    .line 245
    iput p1, p0, Landroidx/constraintlayout/widget/k;->U:F

    .line 246
    .line 247
    goto/16 :goto_7

    .line 248
    .line 249
    :cond_13
    iput v6, p0, Landroidx/constraintlayout/widget/k;->c:I

    .line 250
    .line 251
    iput p1, p0, Landroidx/constraintlayout/widget/k;->T:F

    .line 252
    .line 253
    goto/16 :goto_7

    .line 254
    .line 255
    :cond_14
    instance-of p2, p0, Landroidx/constraintlayout/widget/i;

    .line 256
    .line 257
    if-eqz p2, :cond_1c

    .line 258
    .line 259
    check-cast p0, Landroidx/constraintlayout/widget/i;

    .line 260
    .line 261
    if-nez p3, :cond_15

    .line 262
    .line 263
    invoke-virtual {p0, v2, v6}, Landroidx/constraintlayout/widget/i;->b(II)V

    .line 264
    .line 265
    .line 266
    const/16 p2, 0x27

    .line 267
    .line 268
    :goto_5
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/i;->a(FI)V

    .line 269
    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_15
    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/widget/i;->b(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .line 274
    .line 275
    const/16 p2, 0x28

    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_16
    const-string v0, "parent"

    .line 279
    .line 280
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result p2

    .line 284
    if-eqz p2, :cond_1c

    .line 285
    .line 286
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    const/high16 p2, 0x3f800000    # 1.0f

    .line 291
    .line 292
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    const/4 p2, 0x0

    .line 297
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    instance-of p2, p0, Landroidx/constraintlayout/widget/d;

    .line 302
    .line 303
    const/4 v0, 0x2

    .line 304
    if-eqz p2, :cond_18

    .line 305
    .line 306
    check-cast p0, Landroidx/constraintlayout/widget/d;

    .line 307
    .line 308
    if-nez p3, :cond_17

    .line 309
    .line 310
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 311
    .line 312
    iput p1, p0, Landroidx/constraintlayout/widget/d;->R:F

    .line 313
    .line 314
    iput v0, p0, Landroidx/constraintlayout/widget/d;->L:I

    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_17
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 318
    .line 319
    iput p1, p0, Landroidx/constraintlayout/widget/d;->S:F

    .line 320
    .line 321
    iput v0, p0, Landroidx/constraintlayout/widget/d;->M:I

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_18
    instance-of p2, p0, Landroidx/constraintlayout/widget/k;

    .line 325
    .line 326
    if-eqz p2, :cond_1a

    .line 327
    .line 328
    check-cast p0, Landroidx/constraintlayout/widget/k;

    .line 329
    .line 330
    if-nez p3, :cond_19

    .line 331
    .line 332
    iput v6, p0, Landroidx/constraintlayout/widget/k;->b:I

    .line 333
    .line 334
    iput p1, p0, Landroidx/constraintlayout/widget/k;->d0:F

    .line 335
    .line 336
    iput v0, p0, Landroidx/constraintlayout/widget/k;->X:I

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_19
    iput v6, p0, Landroidx/constraintlayout/widget/k;->c:I

    .line 340
    .line 341
    iput p1, p0, Landroidx/constraintlayout/widget/k;->e0:F

    .line 342
    .line 343
    iput v0, p0, Landroidx/constraintlayout/widget/k;->Y:I

    .line 344
    .line 345
    goto :goto_7

    .line 346
    :cond_1a
    instance-of p1, p0, Landroidx/constraintlayout/widget/i;

    .line 347
    .line 348
    if-eqz p1, :cond_1c

    .line 349
    .line 350
    check-cast p0, Landroidx/constraintlayout/widget/i;

    .line 351
    .line 352
    if-nez p3, :cond_1b

    .line 353
    .line 354
    invoke-virtual {p0, v2, v6}, Landroidx/constraintlayout/widget/i;->b(II)V

    .line 355
    .line 356
    .line 357
    const/16 p1, 0x36

    .line 358
    .line 359
    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/i;->b(II)V

    .line 360
    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_1b
    invoke-virtual {p0, v3, v6}, Landroidx/constraintlayout/widget/i;->b(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    .line 365
    .line 366
    const/16 p1, 0x37

    .line 367
    .line 368
    goto :goto_6

    .line 369
    :catch_0
    :cond_1c
    :goto_7
    return-void
.end method

.method public static h(Landroidx/constraintlayout/widget/d;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "H"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    add-int/2addr v1, v3

    move v4, v2

    move v2, v1

    :cond_2
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    if-ne v4, v3, :cond_3

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    goto :goto_1

    :cond_3
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/widget/d;->G:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v1, Landroidx/constraintlayout/widget/o;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v3, :cond_f

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "id unknown "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v8, "UNKNOWN"

    .line 2
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "ConstraintSet"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    move/from16 v20, v3

    const/16 v16, 0x0

    goto/16 :goto_10

    :cond_1
    iget-boolean v10, v1, Landroidx/constraintlayout/widget/o;->b:Z

    const/4 v11, -0x1

    if-eqz v10, :cond_3

    if-eq v0, v11, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_3
    if-ne v0, v11, :cond_4

    :goto_4
    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/j;

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    instance-of v12, v9, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroidx/constraintlayout/widget/j;->d:Landroidx/constraintlayout/widget/k;

    iput v8, v12, Landroidx/constraintlayout/widget/k;->h0:I

    move-object v13, v9

    check-cast v13, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v13, v0}, Landroid/view/View;->setId(I)V

    iget v0, v12, Landroidx/constraintlayout/widget/k;->f0:I

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget v0, v12, Landroidx/constraintlayout/widget/k;->g0:I

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    iget-boolean v0, v12, Landroidx/constraintlayout/widget/k;->n0:Z

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    iget-object v0, v12, Landroidx/constraintlayout/widget/k;->i0:[I

    if-eqz v0, :cond_6

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    goto :goto_5

    :cond_6
    iget-object v0, v12, Landroidx/constraintlayout/widget/k;->j0:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v13, v0}, Landroidx/constraintlayout/widget/o;->c(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, v12, Landroidx/constraintlayout/widget/k;->i0:[I

    invoke-virtual {v13, v0}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    :cond_7
    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/constraintlayout/widget/d;

    invoke-virtual {v12}, Landroidx/constraintlayout/widget/d;->a()V

    invoke-virtual {v10, v12}, Landroidx/constraintlayout/widget/j;->a(Landroidx/constraintlayout/widget/d;)V

    iget-object v13, v10, Landroidx/constraintlayout/widget/j;->f:Ljava/util/HashMap;

    const-string v14, "\" not found on "

    const-string v15, " Custom Attribute \""

    const-string v11, "TransitionLayout"

    .line 3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/a;

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/a;->a:Z

    if-nez v1, :cond_8

    const-string v1, "set"

    .line 4
    invoke-static {v1, v8}, Landroid/support/v4/media/session/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object/from16 v19, v13

    goto :goto_8

    :cond_8
    move-object v1, v8

    goto :goto_7

    .line 5
    :goto_8
    :try_start_1
    iget v13, v0, Landroidx/constraintlayout/widget/a;->b:I

    invoke-static {v13}, Lo/i;->c(I)I

    move-result v13
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    packed-switch v13, :pswitch_data_0

    move/from16 v20, v3

    :goto_9
    const/16 v16, 0x0

    goto/16 :goto_e

    :pswitch_0
    move/from16 v20, v3

    const/4 v13, 0x1

    :try_start_2
    new-array v3, v13, [Ljava/lang/Class;

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v18, v3, v16

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v13, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v16

    invoke-virtual {v3, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :catch_1
    move-exception v0

    :goto_a
    const/16 v16, 0x0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_b
    const/16 v16, 0x0

    goto/16 :goto_d

    :pswitch_1
    move/from16 v20, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v3, v16

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v13, v2, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/a;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v13, v16

    invoke-virtual {v3, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :pswitch_2
    move/from16 v20, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v3, v16

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v13, v2, [Ljava/lang/Object;

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/a;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v13, v16

    invoke-virtual {v3, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :pswitch_3
    move/from16 v20, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v13, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    aput-object v13, v3, v16

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v13, v2, [Ljava/lang/Object;

    iget-object v0, v0, Landroidx/constraintlayout/widget/a;->e:Ljava/lang/String;

    aput-object v0, v13, v16

    invoke-virtual {v3, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :pswitch_4
    move/from16 v20, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    aput-object v2, v3, v13

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v0, v0, Landroidx/constraintlayout/widget/a;->g:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :pswitch_5
    move/from16 v20, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v3, v16

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v13, v2, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v16

    invoke-virtual {v3, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :pswitch_6
    move/from16 v20, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v13, v3, v16

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v13, v2, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/a;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v13, v16

    invoke-virtual {v3, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :pswitch_7
    move/from16 v20, v3

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v16, 0x0

    :try_start_3
    aput-object v13, v3, v16

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v13, v2, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v16

    invoke-virtual {v3, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    move/from16 v20, v3

    goto/16 :goto_a

    :catch_8
    move-exception v0

    move/from16 v20, v3

    goto/16 :goto_a

    :catch_9
    move-exception v0

    move/from16 v20, v3

    goto/16 :goto_b

    .line 6
    :goto_c
    invoke-static {v15, v8, v14}, Landroid/support/v4/media/session/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must have a method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, v19

    move/from16 v3, v20

    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_9
    move/from16 v20, v3

    const/16 v16, 0x0

    .line 8
    invoke-virtual {v9, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v10, Landroidx/constraintlayout/widget/j;->b:Landroidx/constraintlayout/widget/m;

    iget v1, v0, Landroidx/constraintlayout/widget/m;->b:I

    if-nez v1, :cond_a

    iget v1, v0, Landroidx/constraintlayout/widget/m;->a:I

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget v0, v0, Landroidx/constraintlayout/widget/m;->c:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v10, Landroidx/constraintlayout/widget/j;->e:Landroidx/constraintlayout/widget/n;

    iget v1, v0, Landroidx/constraintlayout/widget/n;->a:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setRotation(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/n;->b:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setRotationX(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/n;->c:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setRotationY(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/n;->d:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/n;->e:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleY(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/n;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, v0, Landroidx/constraintlayout/widget/n;->h:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v2

    int-to-float v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v6

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v3, v6

    if-lez v3, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v3, v6

    if-lez v3, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v9, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v9, v2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_f

    :cond_b
    iget v1, v0, Landroidx/constraintlayout/widget/n;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, v0, Landroidx/constraintlayout/widget/n;->f:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setPivotX(F)V

    :cond_c
    iget v1, v0, Landroidx/constraintlayout/widget/n;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, v0, Landroidx/constraintlayout/widget/n;->g:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_d
    :goto_f
    iget v1, v0, Landroidx/constraintlayout/widget/n;->i:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/n;->j:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/n;->k:F

    invoke-virtual {v9, v1}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/n;->l:Z

    if-eqz v1, :cond_e

    iget v0, v0, Landroidx/constraintlayout/widget/n;->m:F

    invoke-virtual {v9, v0}, Landroid/view/View;->setElevation(F)V

    :cond_e
    :goto_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_f
    move/from16 v20, v3

    const/16 v16, 0x0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/j;

    if-nez v2, :cond_11

    goto :goto_11

    :cond_11
    iget-object v3, v2, Landroidx/constraintlayout/widget/j;->d:Landroidx/constraintlayout/widget/k;

    iget v4, v3, Landroidx/constraintlayout/widget/k;->h0:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_14

    new-instance v4, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    iget-object v7, v3, Landroidx/constraintlayout/widget/k;->i0:[I

    if-eqz v7, :cond_12

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    goto :goto_12

    :cond_12
    iget-object v7, v3, Landroidx/constraintlayout/widget/k;->j0:Ljava/lang/String;

    if-eqz v7, :cond_13

    invoke-static {v4, v7}, Landroidx/constraintlayout/widget/o;->c(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, v3, Landroidx/constraintlayout/widget/k;->i0:[I

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/widget/b;->setReferencedIds([I)V

    :cond_13
    :goto_12
    iget v7, v3, Landroidx/constraintlayout/widget/k;->f0:I

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget v7, v3, Landroidx/constraintlayout/widget/k;->g0:I

    invoke-virtual {v4, v7}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/d;

    move-result-object v7

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/b;->i()V

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/widget/j;->a(Landroidx/constraintlayout/widget/d;)V

    move-object/from16 v8, p1

    invoke-virtual {v8, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13

    :cond_14
    move-object/from16 v8, p1

    :goto_13
    iget-boolean v3, v3, Landroidx/constraintlayout/widget/k;->a:Z

    if-eqz v3, :cond_10

    new-instance v3, Landroidx/constraintlayout/widget/q;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/constraintlayout/widget/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/d;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/j;->a(Landroidx/constraintlayout/widget/d;)V

    invoke-virtual {v8, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11

    :cond_15
    move-object/from16 v8, p1

    move/from16 v6, v16

    move/from16 v1, v20

    :goto_14
    if-ge v6, v1, :cond_17

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroidx/constraintlayout/widget/b;

    if-eqz v2, :cond_16

    check-cast v0, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/b;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v3, v1, Landroidx/constraintlayout/widget/o;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-ge v5, v2, :cond_a

    .line 14
    .line 15
    move-object/from16 v6, p1

    .line 16
    .line 17
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v8, v0

    .line 26
    check-cast v8, Landroidx/constraintlayout/widget/d;

    .line 27
    .line 28
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    iget-boolean v0, v1, Landroidx/constraintlayout/widget/o;->b:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    if-eq v9, v0, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 41
    .line 42
    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 43
    .line 44
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v10, Landroidx/constraintlayout/widget/j;

    .line 63
    .line 64
    invoke-direct {v10}, Landroidx/constraintlayout/widget/j;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v10, v0

    .line 79
    check-cast v10, Landroidx/constraintlayout/widget/j;

    .line 80
    .line 81
    if-nez v10, :cond_3

    .line 82
    .line 83
    move/from16 v16, v2

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :cond_3
    iget-object v11, v1, Landroidx/constraintlayout/widget/o;->a:Ljava/util/HashMap;

    .line 89
    .line 90
    new-instance v12, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    check-cast v15, Landroidx/constraintlayout/widget/a;

    .line 124
    .line 125
    :try_start_0
    const-string v4, "BackgroundColor"

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_4

    .line 132
    .line 133
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    new-instance v1, Landroidx/constraintlayout/widget/a;

    .line 148
    .line 149
    invoke-direct {v1, v15, v4}, Landroidx/constraintlayout/widget/a;-><init>(Landroidx/constraintlayout/widget/a;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move/from16 v16, v2

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    goto :goto_5

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :goto_3
    move/from16 v16, v2

    .line 161
    .line 162
    const/4 v4, 0x0

    .line 163
    goto :goto_4

    .line 164
    :catch_1
    move-exception v0

    .line 165
    goto :goto_3

    .line 166
    :catch_2
    move-exception v0

    .line 167
    goto :goto_3

    .line 168
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v4, "getMap"

    .line 174
    .line 175
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    move/from16 v16, v2

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    :try_start_1
    new-array v2, v4, [Ljava/lang/Class;

    .line 189
    .line 190
    invoke-virtual {v13, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    new-array v2, v4, [Ljava/lang/Object;

    .line 195
    .line 196
    invoke-virtual {v1, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    new-instance v2, Landroidx/constraintlayout/widget/a;

    .line 201
    .line 202
    invoke-direct {v2, v15, v1}, Landroidx/constraintlayout/widget/a;-><init>(Landroidx/constraintlayout/widget/a;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v12, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :catch_3
    move-exception v0

    .line 210
    goto :goto_4

    .line 211
    :catch_4
    move-exception v0

    .line 212
    goto :goto_4

    .line 213
    :catch_5
    move-exception v0

    .line 214
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    :goto_5
    move-object/from16 v1, p0

    .line 218
    .line 219
    move/from16 v2, v16

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_5
    move/from16 v16, v2

    .line 223
    .line 224
    const/4 v4, 0x0

    .line 225
    iput-object v12, v10, Landroidx/constraintlayout/widget/j;->f:Ljava/util/HashMap;

    .line 226
    .line 227
    iput v9, v10, Landroidx/constraintlayout/widget/j;->a:I

    .line 228
    .line 229
    iget v0, v8, Landroidx/constraintlayout/widget/d;->e:I

    .line 230
    .line 231
    iget-object v1, v10, Landroidx/constraintlayout/widget/j;->d:Landroidx/constraintlayout/widget/k;

    .line 232
    .line 233
    iput v0, v1, Landroidx/constraintlayout/widget/k;->h:I

    .line 234
    .line 235
    iget v0, v8, Landroidx/constraintlayout/widget/d;->f:I

    .line 236
    .line 237
    iput v0, v1, Landroidx/constraintlayout/widget/k;->i:I

    .line 238
    .line 239
    iget v0, v8, Landroidx/constraintlayout/widget/d;->g:I

    .line 240
    .line 241
    iput v0, v1, Landroidx/constraintlayout/widget/k;->j:I

    .line 242
    .line 243
    iget v0, v8, Landroidx/constraintlayout/widget/d;->h:I

    .line 244
    .line 245
    iput v0, v1, Landroidx/constraintlayout/widget/k;->k:I

    .line 246
    .line 247
    iget v0, v8, Landroidx/constraintlayout/widget/d;->i:I

    .line 248
    .line 249
    iput v0, v1, Landroidx/constraintlayout/widget/k;->l:I

    .line 250
    .line 251
    iget v0, v8, Landroidx/constraintlayout/widget/d;->j:I

    .line 252
    .line 253
    iput v0, v1, Landroidx/constraintlayout/widget/k;->m:I

    .line 254
    .line 255
    iget v0, v8, Landroidx/constraintlayout/widget/d;->k:I

    .line 256
    .line 257
    iput v0, v1, Landroidx/constraintlayout/widget/k;->n:I

    .line 258
    .line 259
    iget v0, v8, Landroidx/constraintlayout/widget/d;->l:I

    .line 260
    .line 261
    iput v0, v1, Landroidx/constraintlayout/widget/k;->o:I

    .line 262
    .line 263
    iget v0, v8, Landroidx/constraintlayout/widget/d;->m:I

    .line 264
    .line 265
    iput v0, v1, Landroidx/constraintlayout/widget/k;->p:I

    .line 266
    .line 267
    iget v0, v8, Landroidx/constraintlayout/widget/d;->n:I

    .line 268
    .line 269
    iput v0, v1, Landroidx/constraintlayout/widget/k;->q:I

    .line 270
    .line 271
    iget v0, v8, Landroidx/constraintlayout/widget/d;->o:I

    .line 272
    .line 273
    iput v0, v1, Landroidx/constraintlayout/widget/k;->r:I

    .line 274
    .line 275
    iget v0, v8, Landroidx/constraintlayout/widget/d;->s:I

    .line 276
    .line 277
    iput v0, v1, Landroidx/constraintlayout/widget/k;->s:I

    .line 278
    .line 279
    iget v0, v8, Landroidx/constraintlayout/widget/d;->t:I

    .line 280
    .line 281
    iput v0, v1, Landroidx/constraintlayout/widget/k;->t:I

    .line 282
    .line 283
    iget v0, v8, Landroidx/constraintlayout/widget/d;->u:I

    .line 284
    .line 285
    iput v0, v1, Landroidx/constraintlayout/widget/k;->u:I

    .line 286
    .line 287
    iget v0, v8, Landroidx/constraintlayout/widget/d;->v:I

    .line 288
    .line 289
    iput v0, v1, Landroidx/constraintlayout/widget/k;->v:I

    .line 290
    .line 291
    iget v0, v8, Landroidx/constraintlayout/widget/d;->E:F

    .line 292
    .line 293
    iput v0, v1, Landroidx/constraintlayout/widget/k;->w:F

    .line 294
    .line 295
    iget v0, v8, Landroidx/constraintlayout/widget/d;->F:F

    .line 296
    .line 297
    iput v0, v1, Landroidx/constraintlayout/widget/k;->x:F

    .line 298
    .line 299
    iget-object v0, v8, Landroidx/constraintlayout/widget/d;->G:Ljava/lang/String;

    .line 300
    .line 301
    iput-object v0, v1, Landroidx/constraintlayout/widget/k;->y:Ljava/lang/String;

    .line 302
    .line 303
    iget v0, v8, Landroidx/constraintlayout/widget/d;->p:I

    .line 304
    .line 305
    iput v0, v1, Landroidx/constraintlayout/widget/k;->z:I

    .line 306
    .line 307
    iget v0, v8, Landroidx/constraintlayout/widget/d;->q:I

    .line 308
    .line 309
    iput v0, v1, Landroidx/constraintlayout/widget/k;->A:I

    .line 310
    .line 311
    iget v0, v8, Landroidx/constraintlayout/widget/d;->r:F

    .line 312
    .line 313
    iput v0, v1, Landroidx/constraintlayout/widget/k;->B:F

    .line 314
    .line 315
    iget v0, v8, Landroidx/constraintlayout/widget/d;->T:I

    .line 316
    .line 317
    iput v0, v1, Landroidx/constraintlayout/widget/k;->C:I

    .line 318
    .line 319
    iget v0, v8, Landroidx/constraintlayout/widget/d;->U:I

    .line 320
    .line 321
    iput v0, v1, Landroidx/constraintlayout/widget/k;->D:I

    .line 322
    .line 323
    iget v0, v8, Landroidx/constraintlayout/widget/d;->V:I

    .line 324
    .line 325
    iput v0, v1, Landroidx/constraintlayout/widget/k;->E:I

    .line 326
    .line 327
    iget v0, v8, Landroidx/constraintlayout/widget/d;->c:F

    .line 328
    .line 329
    iput v0, v1, Landroidx/constraintlayout/widget/k;->f:F

    .line 330
    .line 331
    iget v0, v8, Landroidx/constraintlayout/widget/d;->a:I

    .line 332
    .line 333
    iput v0, v1, Landroidx/constraintlayout/widget/k;->d:I

    .line 334
    .line 335
    iget v0, v8, Landroidx/constraintlayout/widget/d;->b:I

    .line 336
    .line 337
    iput v0, v1, Landroidx/constraintlayout/widget/k;->e:I

    .line 338
    .line 339
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 340
    .line 341
    iput v0, v1, Landroidx/constraintlayout/widget/k;->b:I

    .line 342
    .line 343
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 344
    .line 345
    iput v0, v1, Landroidx/constraintlayout/widget/k;->c:I

    .line 346
    .line 347
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 348
    .line 349
    iput v0, v1, Landroidx/constraintlayout/widget/k;->F:I

    .line 350
    .line 351
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 352
    .line 353
    iput v0, v1, Landroidx/constraintlayout/widget/k;->G:I

    .line 354
    .line 355
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 356
    .line 357
    iput v0, v1, Landroidx/constraintlayout/widget/k;->H:I

    .line 358
    .line 359
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 360
    .line 361
    iput v0, v1, Landroidx/constraintlayout/widget/k;->I:I

    .line 362
    .line 363
    iget v0, v8, Landroidx/constraintlayout/widget/d;->D:I

    .line 364
    .line 365
    iput v0, v1, Landroidx/constraintlayout/widget/k;->L:I

    .line 366
    .line 367
    iget v0, v8, Landroidx/constraintlayout/widget/d;->I:F

    .line 368
    .line 369
    iput v0, v1, Landroidx/constraintlayout/widget/k;->T:F

    .line 370
    .line 371
    iget v0, v8, Landroidx/constraintlayout/widget/d;->H:F

    .line 372
    .line 373
    iput v0, v1, Landroidx/constraintlayout/widget/k;->U:F

    .line 374
    .line 375
    iget v0, v8, Landroidx/constraintlayout/widget/d;->K:I

    .line 376
    .line 377
    iput v0, v1, Landroidx/constraintlayout/widget/k;->W:I

    .line 378
    .line 379
    iget v0, v8, Landroidx/constraintlayout/widget/d;->J:I

    .line 380
    .line 381
    iput v0, v1, Landroidx/constraintlayout/widget/k;->V:I

    .line 382
    .line 383
    iget-boolean v0, v8, Landroidx/constraintlayout/widget/d;->W:Z

    .line 384
    .line 385
    iput-boolean v0, v1, Landroidx/constraintlayout/widget/k;->l0:Z

    .line 386
    .line 387
    iget-boolean v0, v8, Landroidx/constraintlayout/widget/d;->X:Z

    .line 388
    .line 389
    iput-boolean v0, v1, Landroidx/constraintlayout/widget/k;->m0:Z

    .line 390
    .line 391
    iget v0, v8, Landroidx/constraintlayout/widget/d;->L:I

    .line 392
    .line 393
    iput v0, v1, Landroidx/constraintlayout/widget/k;->X:I

    .line 394
    .line 395
    iget v0, v8, Landroidx/constraintlayout/widget/d;->M:I

    .line 396
    .line 397
    iput v0, v1, Landroidx/constraintlayout/widget/k;->Y:I

    .line 398
    .line 399
    iget v0, v8, Landroidx/constraintlayout/widget/d;->P:I

    .line 400
    .line 401
    iput v0, v1, Landroidx/constraintlayout/widget/k;->Z:I

    .line 402
    .line 403
    iget v0, v8, Landroidx/constraintlayout/widget/d;->Q:I

    .line 404
    .line 405
    iput v0, v1, Landroidx/constraintlayout/widget/k;->a0:I

    .line 406
    .line 407
    iget v0, v8, Landroidx/constraintlayout/widget/d;->N:I

    .line 408
    .line 409
    iput v0, v1, Landroidx/constraintlayout/widget/k;->b0:I

    .line 410
    .line 411
    iget v0, v8, Landroidx/constraintlayout/widget/d;->O:I

    .line 412
    .line 413
    iput v0, v1, Landroidx/constraintlayout/widget/k;->c0:I

    .line 414
    .line 415
    iget v0, v8, Landroidx/constraintlayout/widget/d;->R:F

    .line 416
    .line 417
    iput v0, v1, Landroidx/constraintlayout/widget/k;->d0:F

    .line 418
    .line 419
    iget v0, v8, Landroidx/constraintlayout/widget/d;->S:F

    .line 420
    .line 421
    iput v0, v1, Landroidx/constraintlayout/widget/k;->e0:F

    .line 422
    .line 423
    iget-object v0, v8, Landroidx/constraintlayout/widget/d;->Y:Ljava/lang/String;

    .line 424
    .line 425
    iput-object v0, v1, Landroidx/constraintlayout/widget/k;->k0:Ljava/lang/String;

    .line 426
    .line 427
    iget v0, v8, Landroidx/constraintlayout/widget/d;->x:I

    .line 428
    .line 429
    iput v0, v1, Landroidx/constraintlayout/widget/k;->N:I

    .line 430
    .line 431
    iget v0, v8, Landroidx/constraintlayout/widget/d;->z:I

    .line 432
    .line 433
    iput v0, v1, Landroidx/constraintlayout/widget/k;->P:I

    .line 434
    .line 435
    iget v0, v8, Landroidx/constraintlayout/widget/d;->w:I

    .line 436
    .line 437
    iput v0, v1, Landroidx/constraintlayout/widget/k;->M:I

    .line 438
    .line 439
    iget v0, v8, Landroidx/constraintlayout/widget/d;->y:I

    .line 440
    .line 441
    iput v0, v1, Landroidx/constraintlayout/widget/k;->O:I

    .line 442
    .line 443
    iget v0, v8, Landroidx/constraintlayout/widget/d;->A:I

    .line 444
    .line 445
    iput v0, v1, Landroidx/constraintlayout/widget/k;->R:I

    .line 446
    .line 447
    iget v0, v8, Landroidx/constraintlayout/widget/d;->B:I

    .line 448
    .line 449
    iput v0, v1, Landroidx/constraintlayout/widget/k;->Q:I

    .line 450
    .line 451
    iget v0, v8, Landroidx/constraintlayout/widget/d;->C:I

    .line 452
    .line 453
    iput v0, v1, Landroidx/constraintlayout/widget/k;->S:I

    .line 454
    .line 455
    iget v0, v8, Landroidx/constraintlayout/widget/d;->Z:I

    .line 456
    .line 457
    iput v0, v1, Landroidx/constraintlayout/widget/k;->o0:I

    .line 458
    .line 459
    invoke-virtual {v8}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    iput v0, v1, Landroidx/constraintlayout/widget/k;->J:I

    .line 464
    .line 465
    invoke-virtual {v8}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    iput v0, v1, Landroidx/constraintlayout/widget/k;->K:I

    .line 470
    .line 471
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    iget-object v2, v10, Landroidx/constraintlayout/widget/j;->b:Landroidx/constraintlayout/widget/m;

    .line 476
    .line 477
    iput v0, v2, Landroidx/constraintlayout/widget/m;->a:I

    .line 478
    .line 479
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    iput v0, v2, Landroidx/constraintlayout/widget/m;->c:F

    .line 484
    .line 485
    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    iget-object v2, v10, Landroidx/constraintlayout/widget/j;->e:Landroidx/constraintlayout/widget/n;

    .line 490
    .line 491
    iput v0, v2, Landroidx/constraintlayout/widget/n;->a:F

    .line 492
    .line 493
    invoke-virtual {v7}, Landroid/view/View;->getRotationX()F

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    iput v0, v2, Landroidx/constraintlayout/widget/n;->b:F

    .line 498
    .line 499
    invoke-virtual {v7}, Landroid/view/View;->getRotationY()F

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    iput v0, v2, Landroidx/constraintlayout/widget/n;->c:F

    .line 504
    .line 505
    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    iput v0, v2, Landroidx/constraintlayout/widget/n;->d:F

    .line 510
    .line 511
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    iput v0, v2, Landroidx/constraintlayout/widget/n;->e:F

    .line 516
    .line 517
    invoke-virtual {v7}, Landroid/view/View;->getPivotX()F

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-virtual {v7}, Landroid/view/View;->getPivotY()F

    .line 522
    .line 523
    .line 524
    move-result v8

    .line 525
    float-to-double v9, v0

    .line 526
    const-wide/16 v11, 0x0

    .line 527
    .line 528
    cmpl-double v9, v9, v11

    .line 529
    .line 530
    if-nez v9, :cond_6

    .line 531
    .line 532
    float-to-double v9, v8

    .line 533
    cmpl-double v9, v9, v11

    .line 534
    .line 535
    if-eqz v9, :cond_7

    .line 536
    .line 537
    :cond_6
    iput v0, v2, Landroidx/constraintlayout/widget/n;->f:F

    .line 538
    .line 539
    iput v8, v2, Landroidx/constraintlayout/widget/n;->g:F

    .line 540
    .line 541
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    iput v0, v2, Landroidx/constraintlayout/widget/n;->i:F

    .line 546
    .line 547
    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    iput v0, v2, Landroidx/constraintlayout/widget/n;->j:F

    .line 552
    .line 553
    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    iput v0, v2, Landroidx/constraintlayout/widget/n;->k:F

    .line 558
    .line 559
    iget-boolean v0, v2, Landroidx/constraintlayout/widget/n;->l:Z

    .line 560
    .line 561
    if-eqz v0, :cond_8

    .line 562
    .line 563
    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    iput v0, v2, Landroidx/constraintlayout/widget/n;->m:F

    .line 568
    .line 569
    :cond_8
    instance-of v0, v7, Landroidx/constraintlayout/widget/Barrier;

    .line 570
    .line 571
    if-eqz v0, :cond_9

    .line 572
    .line 573
    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    .line 574
    .line 575
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    iput-boolean v0, v1, Landroidx/constraintlayout/widget/k;->n0:Z

    .line 580
    .line 581
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/b;->getReferencedIds()[I

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    iput-object v0, v1, Landroidx/constraintlayout/widget/k;->i0:[I

    .line 586
    .line 587
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    iput v0, v1, Landroidx/constraintlayout/widget/k;->f0:I

    .line 592
    .line 593
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    iput v0, v1, Landroidx/constraintlayout/widget/k;->g0:I

    .line 598
    .line 599
    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 600
    .line 601
    move-object/from16 v1, p0

    .line 602
    .line 603
    move/from16 v2, v16

    .line 604
    .line 605
    goto/16 :goto_0

    .line 606
    .line 607
    :cond_a
    return-void
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/o;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/j;

    move-result-object v2

    const-string v3, "Guideline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroidx/constraintlayout/widget/j;->d:Landroidx/constraintlayout/widget/k;

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/k;->a:Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/o;->c:Ljava/util/HashMap;

    iget v1, v2, Landroidx/constraintlayout/widget/j;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_5
    return-void
.end method
