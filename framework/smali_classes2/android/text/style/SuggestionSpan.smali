.class public Landroid/text/style/SuggestionSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/SuggestionSpan$1;
    }
.end annotation


# static fields
.field public static final ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_CORRECTION:I = 0x4

.field public static final FLAG_EASY_CORRECT:I = 0x1

.field public static final FLAG_MISSPELLED:I = 0x2

.field public static final SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"

.field public static final SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"

.field public static final SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"

.field private static final TAG:Ljava/lang/String; = "SuggestionSpan"


# instance fields
.field private mAutoCorrectionUnderlineColor:I

.field private mAutoCorrectionUnderlineThickness:F

.field private mEasyCorrectUnderlineColor:I

.field private mEasyCorrectUnderlineThickness:F

.field private mFlags:I

.field private final mHashCode:I

.field private final mLanguageTag:Ljava/lang/String;

.field private final mLocaleStringForCompatibility:Ljava/lang/String;

.field private mMisspelledUnderlineColor:I

.field private mMisspelledUnderlineThickness:F

.field private final mNotificationTargetClassName:Ljava/lang/String;

.field private final mNotificationTargetPackageName:Ljava/lang/String;

.field private final mSuggestions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    array-length v2, p3

    const/4 v3, 0x5

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    if-eqz p2, :cond_47

    move-object v1, p2

    :goto_17
    if-nez v1, :cond_5f

    const-string/jumbo v2, ""

    :goto_1c
    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    if-nez v1, :cond_64

    const-string/jumbo v2, ""

    :goto_23
    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    :goto_2d
    if-eqz p5, :cond_6c

    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    :goto_35
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    iget-object v5, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    return-void

    :cond_47
    if-eqz p1, :cond_54

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_17

    :cond_54
    const-string/jumbo v2, "SuggestionSpan"

    const-string/jumbo v3, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_17

    :cond_5f
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_64
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_69
    iput-object v4, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    goto :goto_2d

    :cond_6c
    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    goto :goto_35
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .registers 10

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .registers 10

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    return-void
.end method

.method private static hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    if-nez p1, :cond_15

    iput v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    iput v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    iput v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    iput v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iput v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iput v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return-void

    :cond_15
    const v0, 0x11100c4

    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v6, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    const v0, 0x11100c3

    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v6, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    const v0, 0x11100c2

    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    invoke-virtual {p1, v6, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/text/style/SuggestionSpan;

    if-eqz v1, :cond_11

    check-cast p1, Landroid/text/style/SuggestionSpan;

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v1

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_9
.end method

.method public getNotificationTargetClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/16 v0, 0x13

    return v0
.end method

.method public getSuggestions()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnderlineColor()I
    .registers 6

    const/4 v4, 0x0

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1d

    const/4 v2, 0x1

    :goto_8
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    :goto_f
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    :goto_16
    if-eqz v1, :cond_26

    if-nez v2, :cond_23

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v3

    :cond_1d
    const/4 v2, 0x0

    goto :goto_8

    :cond_1f
    const/4 v1, 0x0

    goto :goto_f

    :cond_21
    const/4 v0, 0x0

    goto :goto_16

    :cond_23
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v3

    :cond_26
    if-eqz v0, :cond_2b

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v3

    :cond_2b
    return v4
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    return v0
.end method

.method public notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_b

    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_b
    return-void

    :cond_c
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    if-eqz v2, :cond_12

    if-gez p3, :cond_3b

    :cond_12
    const-string/jumbo v2, "SuggestionSpan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to notify the suggestion as the index is out of range index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_12

    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    if-eqz v2, :cond_6f

    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "before"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "after"

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "hashcode"

    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6e
    :goto_6e
    return-void

    :cond_6f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {v0, p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V

    goto :goto_6e
.end method

.method public setFlags(I)V
    .registers 2

    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 7

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_21

    const/4 v2, 0x1

    :goto_7
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_23

    const/4 v1, 0x1

    :goto_e
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_25

    const/4 v0, 0x1

    :goto_15
    if-eqz v1, :cond_33

    if-nez v2, :cond_27

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/4 v2, 0x0

    goto :goto_7

    :cond_23
    const/4 v1, 0x0

    goto :goto_e

    :cond_25
    const/4 v0, 0x0

    goto :goto_15

    :cond_27
    iget v3, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v3, :cond_20

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_20

    :cond_33
    if-eqz v0, :cond_20

    iget v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_20
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
