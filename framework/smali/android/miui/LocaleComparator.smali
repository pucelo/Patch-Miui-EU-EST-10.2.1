.class public Landroid/miui/LocaleComparator;
.super Ljava/lang/Object;
.source "LocaleComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final NON_TOP_LOCALE_INDEX:I

.field private static final TOP_LOCALES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_47

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "zh_CN"

    aput-object v1, v0, v2

    const-string/jumbo v1, "en_US"

    aput-object v1, v0, v3

    const-string/jumbo v1, "en_GB"

    aput-object v1, v0, v4

    const-string/jumbo v1, "hi_IN"

    aput-object v1, v0, v5

    const-string/jumbo v1, "in_ID"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "ms_MY"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "vi_VN"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_TW"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "th_TH"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    :goto_41
    sget-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Landroid/miui/LocaleComparator;->NON_TOP_LOCALE_INDEX:I

    return-void

    :cond_47
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "zh_CN"

    aput-object v1, v0, v2

    const-string/jumbo v1, "zh_TW"

    aput-object v1, v0, v3

    const-string/jumbo v1, "en_US"

    aput-object v1, v0, v4

    sput-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    goto :goto_41
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .registers 6

    invoke-virtual {p0, p1}, Landroid/miui/LocaleComparator;->findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/miui/LocaleComparator;->findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v1

    if-ne v0, v1, :cond_f

    invoke-virtual {p1, p2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v2

    :goto_e
    return v2

    :cond_f
    sub-int v2, v0, v1

    goto :goto_e
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    check-cast p2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Landroid/miui/LocaleComparator;->compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    sget-object v1, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    sget v1, Landroid/miui/LocaleComparator;->NON_TOP_LOCALE_INDEX:I

    return v1
.end method
