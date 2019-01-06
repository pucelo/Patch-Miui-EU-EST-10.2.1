.class public final Landroid/view/textservice/SpellCheckerSubtype;
.super Ljava/lang/Object;
.source "SpellCheckerSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSubtype$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field public static final SUBTYPE_ID_NONE:I = 0x0

.field private static final SUBTYPE_LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtypeExtraValue:Ljava/lang/String;

.field private final mSubtypeHashCode:I

.field private final mSubtypeId:I

.field private final mSubtypeLanguageTag:Ljava/lang/String;

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/view/textservice/SpellCheckerSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/view/textservice/SpellCheckerSubtype$1;

    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerSubtype$1;-><init>()V

    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    if-eqz p2, :cond_1c

    :goto_7
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    if-eqz p3, :cond_20

    :goto_b
    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    if-eqz p4, :cond_24

    :goto_f
    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    iput p5, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v0, :cond_28

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    :goto_19
    iput v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    return-void

    :cond_1c
    const-string/jumbo p2, ""

    goto :goto_7

    :cond_20
    const-string/jumbo p3, ""

    goto :goto_b

    :cond_24
    const-string/jumbo p4, ""

    goto :goto_f

    :cond_28
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_19
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    :goto_f
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    :goto_17
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    :goto_1f
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v1, :cond_3c

    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    :goto_2d
    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    return-void

    :cond_30
    const-string/jumbo v0, ""

    goto :goto_f

    :cond_34
    const-string/jumbo v0, ""

    goto :goto_17

    :cond_38
    const-string/jumbo v0, ""

    goto :goto_1f

    :cond_3c
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_2d
.end method

.method private getExtraValueHashMap()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    if-nez v4, :cond_4a

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_4a

    aget-object v4, v3, v1

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-ne v4, v7, :cond_31

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_31
    array-length v4, v2

    if-le v4, v7, :cond_2e

    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_40

    sget-object v4, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ExtraValue has two or more \'=\'s"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    aget-object v5, v2, v8

    aget-object v6, v2, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_4a
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    return-object v4
.end method

.method private static hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static sort(Landroid/content/Context;ILandroid/view/textservice/SpellCheckerInfo;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/textservice/SpellCheckerInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p3

    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_27

    invoke-virtual {p2, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_27
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerSubtype;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3b
    return-object v2
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/textservice/SpellCheckerSubtype;

    if-eqz v2, :cond_59

    move-object v0, p1

    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    iget v2, v0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-nez v2, :cond_10

    iget v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v2, :cond_1c

    :cond_10
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    :cond_1c
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_58

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    move-result v3

    if-ne v2, v3, :cond_58

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_58
    return v1

    :cond_59
    return v1
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .registers 10

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :goto_b
    iget v3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    if-nez v3, :cond_13

    return-object v1

    :cond_10
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    goto :goto_b

    :cond_13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    invoke-virtual {v3, p2, v4, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_31
    return-object v1
.end method

.method public getExtraValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getNameResId()I
    .registers 2

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
