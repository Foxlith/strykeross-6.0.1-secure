.class public Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTH_RESULT_CODE:Ljava/lang/String; = "authenticationResultCode"

.field private static final AUTH_RESULT_CODE_VALID:Ljava/lang/String; = "ValidCredentials"

.field private static final ESTIMATED_TOTAL:Ljava/lang/String; = "estimatedTotal"

.field private static final RESOURCE:Ljava/lang/String; = "resources"

.field private static final RESOURCE_SETS:Ljava/lang/String; = "resourceSets"

.field private static final STATUS_CODE:Ljava/lang/String; = "statusCode"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstanceFromJSON(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .locals 4

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    new-instance v0, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "statusCode"

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/16 v1, 0xc8

    .line 15
    .line 16
    if-ne p0, v1, :cond_3

    .line 17
    .line 18
    const-string p0, "ValidCredentials"

    .line 19
    .line 20
    const-string v1, "authenticationResultCode"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_2

    .line 31
    .line 32
    const-string p0, "resourceSets"

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    if-lt v1, v2, :cond_1

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "estimatedTotal"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-lez v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v2, "resources"

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0, v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->getInstanceFromJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    .line 80
    .line 81
    const-string v0, "No resource found in json response"

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    .line 88
    .line 89
    const-string v0, "No results set found in json response"

    .line 90
    .line 91
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v3, "authentication result code = "

    .line 100
    .line 101
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    .line 120
    .line 121
    const-string v1, "Status code = "

    .line 122
    .line 123
    invoke-static {v1, p0}, Landroid/support/v4/media/session/a;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    .line 132
    .line 133
    const-string v0, "JSON to parse is null"

    .line 134
    .line 135
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0
.end method
