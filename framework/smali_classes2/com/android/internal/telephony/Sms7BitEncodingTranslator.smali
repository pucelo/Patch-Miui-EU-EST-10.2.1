.class public Lcom/android/internal/telephony/Sms7BitEncodingTranslator;
.super Ljava/lang/Object;
.source "Sms7BitEncodingTranslator.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "Sms7BitEncodingTranslator"

.field private static final XML_CHARACTOR_TAG:Ljava/lang/String; = "Character"

.field private static final XML_FROM_TAG:Ljava/lang/String; = "from"

.field private static final XML_START_TAG:Ljava/lang/String; = "SmsEnforce7BitTranslationTable"

.field private static final XML_TO_TAG:Ljava/lang/String; = "to"

.field private static final XML_TRANSLATION_TYPE_TAG:Ljava/lang/String; = "TranslationType"

.field private static mIs7BitTranslationTableLoaded:Z

.field private static mTranslationTable:Landroid/util/SparseIntArray;

.field private static mTranslationTableCDMA:Landroid/util/SparseIntArray;

.field private static mTranslationTableCommon:Landroid/util/SparseIntArray;

.field private static mTranslationTableGSM:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static load7BitTranslationTableFromXml()V
    .registers 11

    const/4 v10, -0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v7, :cond_13

    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    const-string/jumbo v8, "load7BitTranslationTableFromXml: open normal file"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const v7, 0x1170011

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :try_start_1a
    const-string/jumbo v7, "SmsEnforce7BitTranslationTable"

    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_20
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v7, :cond_45

    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const-string/jumbo v7, "TranslationType"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    const-string/jumbo v7, "Type"

    const/4 v8, 0x0

    invoke-interface {v2, v8, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v7, :cond_74

    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    const-string/jumbo v7, "common"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_94

    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    sput-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_81} :catch_82
    .catchall {:try_start_1a .. :try_end_81} :catchall_a3

    goto :goto_20

    :catch_82
    move-exception v0

    :try_start_83
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    const-string/jumbo v8, "Got exception while loading 7BitTranslationTable file."

    invoke-static {v7, v8, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_a3

    instance-of v7, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_93

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_93
    :goto_93
    return-void

    :cond_94
    :try_start_94
    const-string/jumbo v7, "gsm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ac

    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    sput-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a1} :catch_82
    .catchall {:try_start_94 .. :try_end_a1} :catchall_a3

    goto/16 :goto_20

    :catchall_a3
    move-exception v7

    instance-of v8, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v8, :cond_ab

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_ab
    throw v7

    :cond_ac
    :try_start_ac
    const-string/jumbo v7, "cdma"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    sput-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    goto/16 :goto_20

    :cond_bb
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error Parsing 7BitTranslationTable: found incorrect type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :cond_d7
    const-string/jumbo v7, "Character"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_145

    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_145

    const-string/jumbo v7, "from"

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-interface {v2, v8, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v7, "to"

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-interface {v2, v8, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-eq v1, v10, :cond_13a

    if-eq v5, v10, :cond_13a

    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v7, :cond_133

    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loading mapping "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_133
    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_20

    :cond_13a
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    const-string/jumbo v8, "Invalid translation table file format"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :cond_145
    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v7, :cond_152

    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    const-string/jumbo v8, "load7BitTranslationTableFromXml: parsing successful, file loaded"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_152} :catch_82
    .catchall {:try_start_ac .. :try_end_152} :catchall_a3

    :cond_152
    instance-of v7, v2, Landroid/content/res/XmlResourceParser;

    if-eqz v7, :cond_93

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_93
.end method

.method private static noTranslationNeeded(CZ)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_14

    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0

    :cond_14
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    move-result v0

    return v0
.end method

.method public static translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x0

    if-nez p0, :cond_d

    const-string/jumbo v4, "Sms7BitEncodingTranslator"

    const-string/jumbo v5, "Null message can not be translated"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_17

    const-string/jumbo v4, ""

    return-object v4

    :cond_17
    sget-boolean v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    if-nez v4, :cond_36

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->load7BitTranslationTableFromXml()V

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    :cond_36
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_58

    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_58

    :cond_42
    new-array v2, v3, [C

    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->useCdmaFormatForMoSms()Z

    move-result v1

    const/4 v0, 0x0

    :goto_49
    if-ge v0, v3, :cond_71

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4, v1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translateIfNeeded(CZ)C

    move-result v4

    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_58
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_64

    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_42

    :cond_64
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    if-eqz v4, :cond_70

    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_42

    :cond_70
    return-object v6

    :cond_71
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static translateIfNeeded(CZ)C
    .registers 6

    const/4 v2, -0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->noTranslationNeeded(CZ)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v1, :cond_29

    const-string/jumbo v1, "Sms7BitEncodingTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No translation needed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return p0

    :cond_2a
    const/4 v0, -0x1

    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_35

    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :cond_35
    if-ne v0, v2, :cond_43

    if-eqz p1, :cond_96

    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_43

    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    :cond_43
    :goto_43
    if-eq v0, v2, :cond_a1

    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v1, :cond_94

    const-string/jumbo v1, "Sms7BitEncodingTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " translated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    int-to-char v1, v0

    return v1

    :cond_96
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_43

    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_43

    :cond_a1
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    if-eqz v1, :cond_ca

    const-string/jumbo v1, "Sms7BitEncodingTranslator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No translation found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "! Replacing for empty space"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    const/16 v1, 0x20

    return v1
.end method

.method private static useCdmaFormatForMoSms()Z
    .registers 2

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    :cond_19
    const-string/jumbo v0, "3gpp2"

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
