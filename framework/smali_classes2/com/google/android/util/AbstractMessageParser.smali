.class public abstract Lcom/google/android/util/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$Acronym;,
        Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;,
        Lcom/google/android/util/AbstractMessageParser$Format;,
        Lcom/google/android/util/AbstractMessageParser$Html;,
        Lcom/google/android/util/AbstractMessageParser$Link;,
        Lcom/google/android/util/AbstractMessageParser$MusicTrack;,
        Lcom/google/android/util/AbstractMessageParser$Part;,
        Lcom/google/android/util/AbstractMessageParser$Photo;,
        Lcom/google/android/util/AbstractMessageParser$Resources;,
        Lcom/google/android/util/AbstractMessageParser$Smiley;,
        Lcom/google/android/util/AbstractMessageParser$Token;,
        Lcom/google/android/util/AbstractMessageParser$TrieNode;,
        Lcom/google/android/util/AbstractMessageParser$Video;,
        Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;
    }
.end annotation


# static fields
.field private static final synthetic -com-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues:[I = null

.field public static final musicNote:Ljava/lang/String; = "\u266b "


# instance fields
.field private formatStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$Format;",
            ">;"
        }
    .end annotation
.end field

.field private nextChar:I

.field private nextClass:I

.field private parseAcronyms:Z

.field private parseFormatting:Z

.field private parseMeText:Z

.field private parseMusic:Z

.field private parseSmilies:Z

.field private parseUrls:Z

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/google/android/util/AbstractMessageParser;->-com-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/util/AbstractMessageParser;->-com-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_80

    :goto_17
    :try_start_17
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_7e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_7c

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_33} :catch_7a

    :goto_33
    :try_start_33
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_78

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_76

    :goto_46
    :try_start_46
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_4f} :catch_74

    :goto_4f
    :try_start_4f
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_58} :catch_72

    :goto_58
    :try_start_58
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_61} :catch_70

    :goto_61
    :try_start_61
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_6e

    :goto_6b
    sput-object v0, Lcom/google/android/util/AbstractMessageParser;->-com-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues:[I

    return-object v0

    :catch_6e
    move-exception v1

    goto :goto_6b

    :catch_70
    move-exception v1

    goto :goto_61

    :catch_72
    move-exception v1

    goto :goto_58

    :catch_74
    move-exception v1

    goto :goto_4f

    :catch_76
    move-exception v1

    goto :goto_46

    :catch_78
    move-exception v1

    goto :goto_3d

    :catch_7a
    move-exception v1

    goto :goto_33

    :catch_7c
    move-exception v1

    goto :goto_2a

    :catch_7e
    move-exception v1

    goto :goto_20

    :catch_80
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    iput-boolean p3, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    iput-boolean p4, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    iput-boolean p5, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    iput-boolean p6, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    iput-boolean p7, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    return-void
.end method

.method private addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addURLToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/util/AbstractMessageParser;->tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    return-void
.end method

.method private buildParts(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_34

    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-direct {v3}, Lcom/google/android/util/AbstractMessageParser$Part;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/util/AbstractMessageParser$Part;->add(Lcom/google/android/util/AbstractMessageParser$Token;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_34
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_20

    :cond_3f
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_52

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-virtual {v2, p1}, Lcom/google/android/util/AbstractMessageParser$Part;->setMeText(Ljava/lang/String;)V

    :cond_52
    return-void
.end method

.method private getCharClass(I)I
    .registers 5

    const/4 v2, 0x0

    if-ltz p1, :cond_b

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_c

    :cond_b
    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    return v1

    :cond_1a
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x2

    return v1

    :cond_22
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x3

    return v1

    :cond_2a
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v1

    if-eqz v1, :cond_37

    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    return v1

    :cond_37
    const/4 v1, 0x4

    return v1
.end method

.method private isDomainChar(C)Z
    .registers 3

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_f

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private static isFormatChar(C)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2a -> :sswitch_5
        0x5e -> :sswitch_5
        0x5f -> :sswitch_5
    .end sparse-switch
.end method

.method private static isPunctuation(C)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2c -> :sswitch_5
        0x2e -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3f -> :sswitch_5
    .end sparse-switch
.end method

.method private static isSmileyBreak(CC)Z
    .registers 3

    sparse-switch p0, :sswitch_data_c

    :goto_3
    const/4 v0, 0x0

    return v0

    :sswitch_5
    sparse-switch p1, :sswitch_data_52

    goto :goto_3

    :sswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x24 -> :sswitch_5
        0x26 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2b -> :sswitch_5
        0x2d -> :sswitch_5
        0x2f -> :sswitch_5
        0x3c -> :sswitch_5
        0x3d -> :sswitch_5
        0x3e -> :sswitch_5
        0x40 -> :sswitch_5
        0x5b -> :sswitch_5
        0x5c -> :sswitch_5
        0x5d -> :sswitch_5
        0x5e -> :sswitch_5
        0x7c -> :sswitch_5
        0x7d -> :sswitch_5
        0x7e -> :sswitch_5
    .end sparse-switch

    :sswitch_data_52
    .sparse-switch
        0x23 -> :sswitch_9
        0x24 -> :sswitch_9
        0x25 -> :sswitch_9
        0x2a -> :sswitch_9
        0x2f -> :sswitch_9
        0x3c -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x40 -> :sswitch_9
        0x5b -> :sswitch_9
        0x5c -> :sswitch_9
        0x5e -> :sswitch_9
        0x7e -> :sswitch_9
    .end sparse-switch
.end method

.method private isSmileyBreak(I)Z
    .registers 5

    const/4 v2, 0x0

    if-lez p1, :cond_21

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_21

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(CC)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    return v2
.end method

.method private isURLBreak(I)Z
    .registers 3

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_e

    const/4 v0, 0x1

    return v0

    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private isValidDomain(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/util/AbstractMessageParser;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private isWordBreak(I)Z
    .registers 4

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private lastPart()Lcom/google/android/util/AbstractMessageParser$Part;
    .registers 3

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object v0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 8

    move v1, p2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    if-nez p0, :cond_1e

    move v1, v2

    :cond_1d
    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object v0, p0

    :cond_2b
    :goto_2b
    move v1, v2

    goto :goto_2

    :cond_2d
    if-eqz p3, :cond_2b

    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object v0, p0

    goto :goto_2b
.end method

.method private static matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_14

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    if-nez p0, :cond_16

    move v0, v1

    :cond_14
    const/4 v2, 0x0

    return v2

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    return v2

    :cond_1e
    move v0, v1

    goto :goto_1
.end method

.method private parseAcronym()Z
    .registers 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    if-nez v1, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/util/AbstractMessageParser$Resources;->getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v1

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v1, p0, v2}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    if-nez v0, :cond_17

    return v3

    :cond_17
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Acronym;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Acronym;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/4 v1, 0x1

    return v1
.end method

.method private parseFormatting()Z
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v8, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    if-nez v8, :cond_7

    return v10

    :cond_7
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    :goto_9
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_20

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/android/util/AbstractMessageParser;->isFormatChar(C)Z

    move-result v8

    if-eqz v8, :cond_20

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_20
    iget v8, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    if-eq v2, v8, :cond_2c

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2d

    :cond_2c
    return v10

    :cond_2d
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    :goto_34
    if-ge v3, v2, :cond_7c

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    new-instance v8, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v8, v0, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    invoke-direct {p0, v8}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_51
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Format;

    if-eqz v7, :cond_69

    invoke-virtual {v7, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_69
    new-instance v7, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v7, v0, v11}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_7c
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_84
    :goto_84
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_84

    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-direct {v1, v8, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    invoke-virtual {v1, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    goto :goto_84

    :cond_a8
    iput v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    return v11
.end method

.method private parseMusicTrack()Z
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v1, "\u266b "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v2, "\u266b "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/4 v0, 0x1

    return v0

    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method private parseSmiley()Z
    .registers 10

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    if-nez v3, :cond_9

    return v5

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v3

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v3, p0, v4, v6}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    if-nez v0, :cond_1a

    return v5

    :cond_1a
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v1

    if-eq v2, v7, :cond_35

    if-ne v2, v8, :cond_3a

    :cond_35
    if-eq v1, v7, :cond_39

    if-ne v1, v8, :cond_3a

    :cond_39
    return v5

    :cond_3a
    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Smiley;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/util/AbstractMessageParser$Smiley;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    return v6
.end method

.method private parseText()V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    :cond_7
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_19
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Html;

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/util/AbstractMessageParser$Html;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    return-void

    :sswitch_36
    const-string/jumbo v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :sswitch_3d
    const-string/jumbo v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :sswitch_44
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :sswitch_4b
    const-string/jumbo v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :sswitch_52
    const-string/jumbo v3, "&apos;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :sswitch_59
    const-string/jumbo v3, "<br>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :sswitch_data_60
    .sparse-switch
        0xa -> :sswitch_59
        0x22 -> :sswitch_4b
        0x26 -> :sswitch_44
        0x27 -> :sswitch_52
        0x3c -> :sswitch_36
        0x3e -> :sswitch_3d
    .end sparse-switch
.end method

.method private parseURL()Z
    .registers 14

    const/16 v12, 0x3a

    const/16 v10, 0x2e

    const/4 v11, 0x0

    iget-boolean v9, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    if-eqz v9, :cond_13

    iget v9, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isURLBreak(I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_14

    :cond_13
    return v11

    :cond_14
    iget v6, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    move v4, v6

    :goto_17
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2e

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v9

    if-eqz v9, :cond_2e

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_2e
    const-string/jumbo v7, ""

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v4, v9, :cond_3b

    return v11

    :cond_3b
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_5a

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSchemes()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d1

    return v11

    :cond_5a
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_131

    :goto_62
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_7a

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_89

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_89

    :cond_7a
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isValidDomain(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8c

    return v11

    :cond_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    :cond_8c
    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_c5

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_c5

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_c5

    add-int/lit8 v4, v4, 0x1

    :goto_ae
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_c5

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_c5

    add-int/lit8 v4, v4, 0x1

    goto :goto_ae

    :cond_c5
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v4, v9, :cond_ec

    const/4 v3, 0x1

    :cond_ce
    :goto_ce
    const-string/jumbo v7, "http://"

    :cond_d1
    if-nez v3, :cond_132

    :goto_d3
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_132

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_132

    add-int/lit8 v4, v4, 0x1

    goto :goto_d3

    :cond_ec
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x3f

    if-ne v0, v9, :cond_118

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_102

    const/4 v3, 0x1

    goto :goto_ce

    :cond_102
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_116

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_ce

    :cond_116
    const/4 v3, 0x1

    goto :goto_ce

    :cond_118
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_120

    const/4 v3, 0x1

    goto :goto_ce

    :cond_120
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_128

    const/4 v3, 0x1

    goto :goto_ce

    :cond_128
    const/16 v9, 0x2f

    if-eq v0, v9, :cond_ce

    const/16 v9, 0x23

    if-eq v0, v9, :cond_ce

    return v11

    :cond_131
    return v11

    :cond_132
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v8}, Lcom/google/android/util/AbstractMessageParser;->addURLToken(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/4 v9, 0x1

    return v9
.end method

.method protected static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_b
    if-ltz v1, :cond_17

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;
    .registers 7

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return-object v4

    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Video;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Video;

    move-result-object v2

    if-eqz v2, :cond_b

    return-object v2

    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-result-object v3

    if-eqz v3, :cond_12

    return-object v3

    :cond_12
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;

    move-result-object v1

    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    move-result-object v0

    if-eqz v0, :cond_20

    return-object v0

    :cond_20
    new-instance v4, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-direct {v4, p0, p1}, Lcom/google/android/util/AbstractMessageParser$Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public final getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;
    .registers 3

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object v0
.end method

.method public final getPartCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getParts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRawText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
.end method

.method public parse()V
    .registers 9

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseMusicTrack()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v4, "/me"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_40

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    :cond_40
    const/4 v2, 0x0

    :cond_41
    :goto_41
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_8b

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-nez v3, :cond_68

    if-eqz v2, :cond_5f

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_68

    :cond_5f
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "last chunk did not end at word break"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_68
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseSmiley()Z

    move-result v3

    if-eqz v3, :cond_70

    const/4 v2, 0x1

    goto :goto_41

    :cond_70
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseAcronym()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseURL()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_41

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseFormatting()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_41

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseText()V

    goto :goto_41

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_e3

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v3

    if-eqz v3, :cond_e0

    if-lez v0, :cond_bd

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_bd

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace()V

    :cond_bd
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_e0

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_e0

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace()V

    :cond_e0
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    :cond_e3
    const/4 v0, 0x0

    :goto_e4
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_117

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v3

    if-eqz v3, :cond_114

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_114

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_114
    add-int/lit8 v0, v0, 0x1

    goto :goto_e4

    :cond_117
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    return-void
.end method

.method public toHtml()Ljava/lang/String;
    .registers 11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_170

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Part;

    const/4 v0, 0x0

    const-string/jumbo v7, "<p>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_168

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-virtual {v5, v0}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3f
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->controlCaps()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->setCaps()Z

    move-result v0

    goto :goto_26

    :cond_4a
    invoke-static {}, Lcom/google/android/util/AbstractMessageParser;->-getcom-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_176

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown token type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    :pswitch_79
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Link;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :pswitch_9d
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :pswitch_a5
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :pswitch_ad
    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;->getTrack()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    :pswitch_b8
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Video;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Video;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Video;->getDocID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3f

    :pswitch_e4
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getDocID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3f

    :pswitch_110
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Photo;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v8

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Photo;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3f

    :pswitch_140
    move-object v2, v5

    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Photo;

    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3f

    :cond_168
    const-string/jumbo v7, "</p>\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    nop

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_140
        :pswitch_b8
        :pswitch_79
        :pswitch_ad
        :pswitch_110
        :pswitch_9d
        :pswitch_e4
    .end packed-switch
.end method
