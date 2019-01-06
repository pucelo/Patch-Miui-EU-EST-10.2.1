.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "AutoText.java"


# static fields
.field private static final DEFAULT:I = 0x3801

.field private static final INCREMENT:I = 0x400

.field private static final RIGHT:I = 0x2454

.field private static final TRIE_C:I = 0x0

.field private static final TRIE_CHILD:I = 0x2

.field private static final TRIE_NEXT:I = 0x3

.field private static final TRIE_NULL:C = '\uffff'

.field private static final TRIE_OFF:I = 0x1

.field private static final TRIE_ROOT:I = 0x0

.field private static final TRIE_SIZEOF:I = 0x4

.field private static sInstance:Landroid/text/AutoText;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private mTrie:[C

.field private mTrieUsed:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/text/AutoText;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method private add(Ljava/lang/String;C)V
    .registers 12

    const v8, 0xffff

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    iget v6, p0, Landroid/text/AutoText;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/text/AutoText;->mSize:I

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v5, :cond_8f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    :goto_16
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    if-eq v6, v8, :cond_3e

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x0

    aget-char v6, v6, v7

    if-ne v0, v6, :cond_7f

    add-int/lit8 v6, v5, -0x1

    if-ne v3, v6, :cond_37

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    aput-char p2, v6, v7

    return-void

    :cond_37
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    add-int/lit8 v2, v6, 0x2

    const/4 v1, 0x1

    :cond_3e
    if-nez v1, :cond_8c

    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    move-result v4

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aput-char v4, v6, v2

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x0

    aput-char v0, v6, v7

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    aput-char v8, v6, v7

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x3

    aput-char v8, v6, v7

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x2

    aput-char v8, v6, v7

    add-int/lit8 v6, v5, -0x1

    if-ne v3, v6, :cond_86

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    aput-char p2, v6, v7

    return-void

    :cond_7f
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    add-int/lit8 v2, v6, 0x3

    goto :goto_16

    :cond_86
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v2

    add-int/lit8 v2, v6, 0x2

    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_8f
    return-void
.end method

.method public static get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .registers 5

    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v4, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_11
    sget-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    iget-object v3, v0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    new-instance v0, Landroid/text/AutoText;

    invoke-direct {v0, v2}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit v4

    return-object v0

    :catchall_24
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getSize()I
    .registers 2

    iget v0, p0, Landroid/text/AutoText;->mSize:I

    return v0
.end method

.method public static getSize(Landroid/view/View;)I
    .registers 2

    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0}, Landroid/text/AutoText;->getSize()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/res/Resources;)V
    .registers 15

    const v10, 0x1170002

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x2454

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v10, 0x3801

    new-array v10, v10, [C

    iput-object v10, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v10, p0, Landroid/text/AutoText;->mTrie:[C

    const v11, 0xffff

    const/4 v12, 0x0

    aput-char v11, v10, v12

    const/4 v10, 0x1

    iput-char v10, p0, Landroid/text/AutoText;->mTrieUsed:C

    :try_start_1f
    const-string/jumbo v10, "words"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v4, ""

    const/4 v6, 0x0

    :cond_29
    :goto_29
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    const-string/jumbo v10, "word"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4a

    :cond_3d
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_40} :catch_68
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_40} :catch_85
    .catchall {:try_start_1f .. :try_end_40} :catchall_6f

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    return-void

    :cond_4a
    :try_start_4a
    const-string/jumbo v10, "src"

    const/4 v11, 0x0

    invoke-interface {v7, v11, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_29

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_74

    const/4 v5, 0x0

    :goto_64
    invoke-direct {p0, v9, v5}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V
    :try_end_67
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_67} :catch_68
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_67} :catch_85
    .catchall {:try_start_4a .. :try_end_67} :catchall_6f

    goto :goto_29

    :catch_68
    move-exception v2

    :try_start_69
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_6f

    :catchall_6f
    move-exception v10

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    throw v10

    :cond_74
    :try_start_74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    int-to-char v5, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    int-to-char v10, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_84} :catch_68
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_84} :catch_85
    .catchall {:try_start_74 .. :try_end_84} :catchall_6f

    goto :goto_64

    :catch_85
    move-exception v1

    :try_start_86
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_6f
.end method

.method private lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 13

    const/4 v8, 0x0

    const v7, 0xffff

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v6, 0x0

    aget-char v1, v5, v6

    move v2, p2

    :goto_a
    if-ge v2, p3, :cond_51

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_10
    if-eq v1, v7, :cond_44

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x0

    aget-char v5, v5, v6

    if-ne v0, v5, :cond_47

    add-int/lit8 v5, p3, -0x1

    if-ne v2, v5, :cond_3e

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x1

    aget-char v5, v5, v6

    if-eq v5, v7, :cond_3e

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x1

    aget-char v4, v5, v6

    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3e
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x2

    aget-char v1, v5, v6

    :cond_44
    if-ne v1, v7, :cond_4e

    return-object v8

    :cond_47
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x3

    aget-char v1, v5, v6

    goto :goto_10

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_51
    return-object v8
.end method

.method private newTrieNode()C
    .registers 6

    const/4 v4, 0x0

    iget-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v3, v3

    if-le v2, v3, :cond_1b

    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v2, v2

    add-int/lit16 v2, v2, 0x400

    new-array v0, v2, [C

    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    :cond_1b
    iget-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    iget-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    return v1
.end method
