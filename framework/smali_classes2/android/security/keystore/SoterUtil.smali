.class public Landroid/security/keystore/SoterUtil;
.super Ljava/lang/Object;
.source "SoterUtil.java"


# static fields
.field public static final JSON_KEY_PUBLIC:Ljava/lang/String; = "pub_key"

.field private static final MAX_JSON_LENG:I = 0x100000

.field private static final PARAM_NEED_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "addcounter"

.field private static final PARAM_NEED_AUTO_ADD_SECMSG_FID_COUNTER_WHEN_SIGN:Ljava/lang/String; = "secmsg_and_counter_signed_when_sign"

.field private static final PARAM_NEED_AUTO_SIGNED_WITH_ATTK_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "auto_signed_when_get_pubkey_attk"

.field private static final PARAM_NEED_AUTO_SIGNED_WITH_COMMON_KEY_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "auto_signed_when_get_pubkey"

.field private static final PARAM_NEED_NEXT_ATTK:Ljava/lang/String; = "next_attk"

.field private static final RAW_LENGTH_PREFIX:I = 0x4

.field public static final TAG:Ljava/lang/String; = "Soter.Util"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_18

    :cond_6
    const-string/jumbo v1, "Soter.Util"

    const-string/jumbo v2, "hy: param error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "param error"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    array-length v3, p1

    move v1, v2

    :goto_20
    if-ge v1, v3, :cond_2f

    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v1, 0x1

    return v1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2f
    return v2
.end method

.method private static containsPrefix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    array-length v2, p1

    if-nez v2, :cond_19

    :cond_7
    const-string/jumbo v1, "Soter.Util"

    const-string/jumbo v2, "hy: param error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "param error"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    array-length v2, p1

    :goto_20
    if-ge v1, v2, :cond_34

    aget-object v0, p1, v1

    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    return-object v0

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_34
    return-object v4
.end method

.method public static convertKeyNameToParameterSpec(Ljava/lang/String;)Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    .registers 15

    const/4 v13, 0x0

    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-string/jumbo v11, "Soter.Util"

    const-string/jumbo v12, "hy: null or nil when convert key name to parameter"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_11
    const-string/jumbo v11, "\\."

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1e

    array-length v11, v10

    const/4 v12, 0x1

    if-gt v11, v12, :cond_28

    :cond_1e
    const-string/jumbo v11, "Soter.Util"

    const-string/jumbo v12, "hy: pure alias, no parameter"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_28
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v11, "auto_signed_when_get_pubkey_attk"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7d

    const/4 v2, 0x1

    :cond_3b
    :goto_3b
    const-string/jumbo v11, "secmsg_and_counter_signed_when_sign"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_45

    const/4 v5, 0x1

    :cond_45
    const-string/jumbo v11, "addcounter"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_59

    const/4 v6, 0x1

    const-string/jumbo v11, "next_attk"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_59

    const/4 v7, 0x1

    :cond_59
    new-instance v0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;

    invoke-direct/range {v0 .. v7}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;-><init>(ZZZLjava/lang/String;ZZZ)V

    const-string/jumbo v11, "Soter.Util"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "hy: spec: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_7d
    const-string/jumbo v11, "auto_signed_when_get_pubkey"

    invoke-static {v11, v10}, Landroid/security/keystore/SoterUtil;->containsPrefix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3b

    invoke-static {v9}, Landroid/security/keystore/SoterUtil;->retrieveKeyNameFromExpr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3b

    const/4 v3, 0x1

    move-object v4, v8

    goto :goto_3b
.end method

.method public static getDataFromRaw([BLjava/lang/String;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "Soter"

    const-string/jumbo v5, "hy: json keyname error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_11
    if-nez p0, :cond_1d

    const-string/jumbo v4, "Soter"

    const-string/jumbo v5, "hy: json origin null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1d
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->retriveJsonFromExportedData([B)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_85

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "Soter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "base64 encoded public key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "-----BEGIN PUBLIC KEY-----"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "-----END PUBLIC KEY-----"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\n"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Soter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pure base64 encoded public key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1

    :cond_85
    return-object v6
.end method

.method public static getPureKeyAliasFromKeyName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v1, "Soter.Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hy: retrieving pure name from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "Soter.Util"

    const-string/jumbo v2, "hy: null or nil when get pure key alias"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2b
    const-string/jumbo v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_42

    :cond_38
    const-string/jumbo v1, "Soter.Util"

    const-string/jumbo v2, "hy: pure alias"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_42
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static isNullOrNil(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_a

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static retrieveKeyNameFromExpr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v1, :cond_20

    if-le v0, v1, :cond_20

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_20
    const-string/jumbo v2, "Soter.Util"

    const-string/jumbo v3, "hy: no key name"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2a
    const-string/jumbo v2, "Soter.Util"

    const-string/jumbo v3, "hy: expr is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private static retriveJsonFromExportedData([B)Lorg/json/JSONObject;
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    if-nez p0, :cond_f

    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "raw data is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_f
    array-length v5, p0

    if-ge v5, v8, :cond_1b

    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "raw data length smaller than 4"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    new-array v2, v8, [B

    invoke-static {p0, v10, v2, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v2}, Landroid/security/keystore/SoterUtil;->toInt([B)I

    move-result v4

    const-string/jumbo v5, "Soter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parsed raw length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x100000

    if-le v4, v5, :cond_4c

    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "exceed max json length. return null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_4c
    new-array v3, v4, [B

    array-length v5, p0

    add-int/lit8 v6, v4, 0x4

    if-gt v5, v6, :cond_5d

    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "length not correct 2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_5d
    invoke-static {p0, v8, v3, v10, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v5, "Soter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "to convert json: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7f
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_84
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_84} :catch_85

    return-object v5

    :catch_85
    move-exception v0

    const-string/jumbo v5, "Soter"

    const-string/jumbo v6, "hy: can not convert to json"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9
.end method

.method public static toInt([B)I
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_10

    aget-byte v0, p0, v1

    and-int/lit16 v3, v0, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v2
.end method
