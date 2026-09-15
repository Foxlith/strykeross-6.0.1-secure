.class Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljcifs/smb/Trans2GetDfsReferralResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Referral"
.end annotation


# instance fields
.field private altPath:Ljava/lang/String;

.field private altPathOffset:I

.field private flags:I

.field node:Ljava/lang/String;

.field private nodeOffset:I

.field path:Ljava/lang/String;

.field private pathOffset:I

.field private proximity:I

.field private serverType:I

.field private size:I

.field final synthetic this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

.field ttl:I

.field private version:I


# direct methods
.method public constructor <init>(Ljcifs/smb/Trans2GetDfsReferralResponse;)V
    .locals 0

    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readWireFormat([BII)I
    .locals 6

    .line 1
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p3, "Version "

    .line 19
    .line 20
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget p3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 24
    .line 25
    const-string v0, " referral not supported. Please report this to jcifs at samba dot org."

    .line 26
    .line 27
    invoke-static {p2, p3, v0}, Lorg/bouncycastle/math/ec/a;->f(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    :goto_0
    add-int/lit8 v0, p2, 0x2

    .line 36
    .line 37
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    .line 42
    .line 43
    add-int/lit8 v0, p2, 0x4

    .line 44
    .line 45
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    .line 50
    .line 51
    add-int/lit8 v0, p2, 0x6

    .line 52
    .line 53
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    .line 58
    .line 59
    add-int/lit8 v0, p2, 0x8

    .line 60
    .line 61
    iget v3, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const v5, 0x8000

    .line 65
    .line 66
    .line 67
    if-ne v3, v2, :cond_4

    .line 68
    .line 69
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    .line 74
    .line 75
    add-int/lit8 v0, p2, 0xa

    .line 76
    .line 77
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    .line 82
    .line 83
    add-int/lit8 v0, p2, 0xc

    .line 84
    .line 85
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    .line 90
    .line 91
    add-int/lit8 v0, p2, 0xe

    .line 92
    .line 93
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    .line 98
    .line 99
    add-int/lit8 v0, p2, 0x10

    .line 100
    .line 101
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    .line 106
    .line 107
    iget-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    .line 108
    .line 109
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    .line 110
    .line 111
    add-int/2addr v2, p2

    .line 112
    iget v3, v0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 113
    .line 114
    and-int/2addr v3, v5

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    move v3, v1

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    move v3, v4

    .line 120
    :goto_1
    invoke-virtual {v0, p1, v2, p3, v3}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 125
    .line 126
    iget v0, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    .line 127
    .line 128
    if-lez v0, :cond_6

    .line 129
    .line 130
    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    .line 131
    .line 132
    add-int/2addr p2, v0

    .line 133
    iget v0, v2, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 134
    .line 135
    and-int/2addr v0, v5

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    move v1, v4

    .line 140
    :goto_2
    invoke-virtual {v2, p1, p2, p3, v1}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    :goto_3
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_4
    if-ne v3, v1, :cond_6

    .line 148
    .line 149
    iget-object p2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->this$0:Ljcifs/smb/Trans2GetDfsReferralResponse;

    .line 150
    .line 151
    iget v2, p2, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 152
    .line 153
    and-int/2addr v2, v5

    .line 154
    if-eqz v2, :cond_5

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_5
    move v1, v4

    .line 158
    :goto_4
    invoke-virtual {p2, p1, v0, p3, v1}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    goto :goto_3

    .line 163
    :cond_6
    :goto_5
    iget p1, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    .line 164
    .line 165
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Referral[version="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->version:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",size="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->size:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",serverType="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->serverType:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",flags="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->flags:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",proximity="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->proximity:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ",ttl="

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->ttl:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, ",pathOffset="

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->pathOffset:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v2, ",altPathOffset="

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPathOffset:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, ",nodeOffset="

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->nodeOffset:I

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, ",path="

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->path:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, ",altPath="

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->altPath:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, ",node="

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferralResponse$Referral;->node:Ljava/lang/String;

    .line 121
    .line 122
    const-string v3, "]"

    .line 123
    .line 124
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object v0
.end method
