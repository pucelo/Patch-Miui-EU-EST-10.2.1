.class public Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "de"

    aput-object v1, v0, v4

    const-string/jumbo v1, "en"

    aput-object v1, v0, v5

    const-string/jumbo v1, "it"

    aput-object v1, v0, v6

    const-string/jumbo v1, "fr"

    aput-object v1, v0, v7

    const-string/jumbo v1, "es"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "nl"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sv"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "da"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "pt"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "fi"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "no"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "el"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "tr"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "hu"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "pl"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "cs"

    aput-object v1, v0, v4

    const-string/jumbo v1, "he"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ar"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ru"

    aput-object v1, v0, v7

    const-string/jumbo v1, "is"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v11

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x3

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v1

    :cond_31
    const/4 v7, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p3

    array-length v3, v0

    move v2, v1

    :goto_3c
    if-ge v2, v3, :cond_55

    aget-object v13, p3, v2

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v12

    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3c

    :cond_55
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v1

    if-eqz v1, :cond_7d

    const/4 v9, 0x3

    :goto_5c
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v11

    const/4 v2, 0x1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v1

    :cond_7d
    const/4 v9, 0x0

    goto :goto_5c
.end method

.method private static getEtwsPrimaryMessage(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_34

    const-string/jumbo v1, ""

    return-object v1

    :pswitch_b
    const v1, 0x10401de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_13
    const v1, 0x10401e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1b
    const v1, 0x10401df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_23
    const v1, 0x10401e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2b
    const v1, 0x10401e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
        :pswitch_1b
        :pswitch_23
        :pswitch_2b
    .end packed-switch
.end method

.method private static parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v13, 0x52

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingScheme()I

    move-result v6

    and-int/lit16 v0, v6, 0xf0

    shr-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_fa

    :pswitch_10
    const/4 v1, 0x1

    :goto_11
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v0

    if-eqz v0, :cond_f0

    const/4 v0, 0x6

    aget-byte v8, p1, v0

    array-length v0, p1

    mul-int/lit8 v11, v8, 0x53

    add-int/lit8 v11, v11, 0x7

    if-ge v0, v11, :cond_9c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Pdu length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " does not match "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " pages"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4e
    const/4 v1, 0x1

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    and-int/lit8 v11, v6, 0xf

    aget-object v5, v0, v11

    goto :goto_11

    :pswitch_56
    const/4 v4, 0x1

    and-int/lit8 v0, v6, 0xf

    if-ne v0, v11, :cond_5d

    const/4 v1, 0x3

    goto :goto_11

    :cond_5d
    const/4 v1, 0x1

    goto :goto_11

    :pswitch_5f
    const/4 v1, 0x1

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    and-int/lit8 v11, v6, 0xf

    aget-object v5, v0, v11

    goto :goto_11

    :pswitch_67
    const/4 v1, 0x1

    goto :goto_11

    :pswitch_69
    and-int/lit8 v0, v6, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_11e

    const/4 v1, 0x1

    goto :goto_11

    :pswitch_72
    const/4 v1, 0x2

    goto :goto_11

    :pswitch_74
    const/4 v1, 0x3

    goto :goto_11

    :pswitch_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_90
    and-int/lit8 v0, v6, 0x4

    shr-int/lit8 v0, v0, 0x2

    if-ne v0, v11, :cond_99

    const/4 v1, 0x2

    goto/16 :goto_11

    :cond_99
    const/4 v1, 0x1

    goto/16 :goto_11

    :cond_9c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_a2
    if-ge v7, v8, :cond_e6

    mul-int/lit8 v0, v7, 0x53

    add-int/lit8 v2, v0, 0x7

    add-int/lit8 v0, v2, 0x52

    aget-byte v3, p1, v0

    if-le v3, v13, :cond_d3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Page length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " exceeds maximum value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d3
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_a2

    :cond_e6
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v5, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_f0
    const/4 v2, 0x6

    array-length v0, p1

    add-int/lit8 v3, v0, -0x6

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_56
        :pswitch_5f
        :pswitch_67
        :pswitch_69
        :pswitch_69
        :pswitch_76
        :pswitch_76
        :pswitch_10
        :pswitch_76
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_76
        :pswitch_90
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_72
        :pswitch_74
    .end packed-switch
.end method

.method private static unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZ",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_6e

    :cond_6
    :goto_6
    :pswitch_6
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_e
    if-ltz v2, :cond_1e

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_66

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    :goto_1e
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :pswitch_24
    mul-int/lit8 v3, p3, 0x8

    div-int/lit8 v3, v3, 0x7

    invoke-static {p0, p2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_40
    if-eqz p4, :cond_4f

    array-length v3, p0

    add-int/lit8 v4, p2, 0x2

    if-lt v3, v4, :cond_4f

    invoke-static {p0, p2, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p5

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    :cond_4f
    :try_start_4f
    new-instance v0, Ljava/lang/String;

    const v3, 0xfffe

    and-int/2addr v3, p3

    const-string/jumbo v4, "utf-16"

    invoke-direct {v0, p0, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4f .. :try_end_5b} :catch_5c

    goto :goto_6

    :catch_5c
    move-exception v1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Error decoding UTF-16 message"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_66
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :cond_69
    const-string/jumbo v0, ""

    goto :goto_1e

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_6
        :pswitch_40
    .end packed-switch
.end method
