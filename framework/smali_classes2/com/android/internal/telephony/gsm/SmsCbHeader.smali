.class public Lcom/android/internal/telephony/gsm/SmsCbHeader;
.super Ljava/lang/Object;
.source "SmsCbHeader.java"


# static fields
.field static final FORMAT_ETWS_PRIMARY:I = 0x3

.field static final FORMAT_GSM:I = 0x1

.field static final FORMAT_UMTS:I = 0x2

.field private static final MESSAGE_TYPE_CBS_MESSAGE:I = 0x1

.field static final PDU_HEADER_LENGTH:I = 0x6

.field private static final PDU_LENGTH_ETWS:I = 0x38

.field private static final PDU_LENGTH_GSM:I = 0x58


# instance fields
.field private final mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mDataCodingScheme:I

.field private final mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final mFormat:I

.field private final mGeographicalScope:I

.field private final mMessageIdentifier:I

.field private final mNrOfPages:I

.field private final mPageIndex:I

.field private final mSerialNumber:I


# direct methods
.method public constructor <init>([B)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v6, 0x6

    if-ge v2, v6, :cond_14

    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Illegal PDU"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_14
    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v6, 0x58

    if-gt v2, v6, :cond_101

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    ushr-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v2

    if-eqz v2, :cond_a6

    move-object/from16 v0, p1

    array-length v2, v0

    const/16 v6, 0x38

    if-gt v2, v6, :cond_a6

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a0

    const/4 v4, 0x1

    :goto_71
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_a2

    const/4 v5, 0x1

    :goto_79
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xfe

    ushr-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v6, 0x6

    if-le v2, v6, :cond_a4

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    :goto_90
    new-instance v2, Landroid/telephony/SmsCbEtwsInfo;

    const/4 v6, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    return-void

    :cond_a0
    const/4 v4, 0x0

    goto :goto_71

    :cond_a2
    const/4 v5, 0x0

    goto :goto_79

    :cond_a4
    const/4 v7, 0x0

    goto :goto_90

    :cond_a6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v17, v2, 0x4

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit8 v16, v2, 0xf

    if-eqz v17, :cond_c4

    if-nez v16, :cond_fa

    :cond_c4
    :goto_c4
    const/16 v17, 0x1

    const/16 v16, 0x1

    :cond_c8
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    :goto_d4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsMessage()Z

    move-result v2

    if-eqz v2, :cond_168

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsEmergencyUserAlert()Z

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPopupAlert()Z

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsWarningType()I

    move-result v3

    new-instance v8, Landroid/telephony/SmsCbEtwsInfo;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-direct/range {v8 .. v13}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    :goto_f9
    return-void

    :cond_fa
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_c8

    goto :goto_c4

    :cond_101
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v2, 0x0

    aget-byte v15, p1, v2

    const/4 v2, 0x1

    if-eq v15, v2, :cond_126

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported message type "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_126
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xc0

    ushr-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v6, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    goto/16 :goto_d4

    :cond_168
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isCmasMessage()Z

    move-result v2

    if-eqz v2, :cond_190

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasMessageClass()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasSeverity()I

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasUrgency()I

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasCertainty()I

    move-result v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    new-instance v8, Landroid/telephony/SmsCbCmasInfo;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct/range {v8 .. v14}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_f9

    :cond_190
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    goto/16 :goto_f9
.end method

.method private getCmasCertainty()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5
    const/4 v0, -0x1

    return v0

    :pswitch_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1113
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private getCmasMessageClass()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_16

    const/4 v0, -0x1

    return v0

    :pswitch_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/4 v0, 0x1

    return v0

    :pswitch_b
    const/4 v0, 0x2

    return v0

    :pswitch_d
    const/4 v0, 0x3

    return v0

    :pswitch_f
    const/4 v0, 0x4

    return v0

    :pswitch_11
    const/4 v0, 0x5

    return v0

    :pswitch_13
    const/4 v0, 0x6

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x1112
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method private getCmasSeverity()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5
    const/4 v0, -0x1

    return v0

    :pswitch_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1113
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private getCmasUrgency()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5
    const/4 v0, -0x1

    return v0

    :pswitch_7
    const/4 v0, 0x0

    return v0

    :pswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1113
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private getEtwsWarningType()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    add-int/lit16 v0, v0, -0x1100

    return v0
.end method

.method private isCmasMessage()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x1112

    if-lt v1, v2, :cond_e

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x112f

    if-gt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isEtwsEmergencyUserAlert()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private isEtwsMessage()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const v1, 0xfff8

    and-int/2addr v0, v1

    const/16 v1, 0x1100

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isEtwsPopupAlert()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method


# virtual methods
.method getCmasInfo()Landroid/telephony/SmsCbCmasInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mCmasInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method getDataCodingScheme()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    return v0
.end method

.method getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mEtwsInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method getGeographicalScope()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    return v0
.end method

.method getNumberOfPages()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    return v0
.end method

.method getPageIndex()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    return v0
.end method

.method getSerialNumber()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    return v0
.end method

.method getServiceCategory()I
    .registers 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    return v0
.end method

.method isEmergencyMessage()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x1100

    if-lt v1, v2, :cond_e

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    const/16 v2, 0x18ff

    if-gt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method isEtwsPrimaryNotification()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isUmtsFormat()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mFormat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SmsCbHeader{GS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serialNumber=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mSerialNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageIdentifier=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mMessageIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DCS=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mDataCodingScheme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->mNrOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
