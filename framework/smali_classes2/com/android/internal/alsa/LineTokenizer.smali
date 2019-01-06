.class public Lcom/android/internal/alsa/LineTokenizer;
.super Ljava/lang/Object;
.source "LineTokenizer.java"


# static fields
.field public static final kTokenNotFound:I = -0x1


# instance fields
.field private final mDelimiters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method nextDelimiter(Ljava/lang/String;I)I
    .registers 8

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p2

    :goto_6
    if-ge v1, v0, :cond_14

    iget-object v3, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_17

    :cond_14
    if-ge v1, v0, :cond_1a

    :goto_16
    return v1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    move v1, v2

    goto :goto_16
.end method

.method nextToken(Ljava/lang/String;I)I
    .registers 8

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p2

    :goto_6
    if-ge v1, v0, :cond_14

    iget-object v3, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v2, :cond_17

    :cond_14
    if-ge v1, v0, :cond_1a

    :goto_16
    return v1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    move v1, v2

    goto :goto_16
.end method
