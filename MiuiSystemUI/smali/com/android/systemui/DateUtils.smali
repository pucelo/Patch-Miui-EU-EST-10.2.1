.class public Lcom/android/systemui/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDigitalFormatDate(Ljava/util/Calendar;)I
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 v3, v2, 0x2710

    mul-int/lit8 v4, v1, 0x64

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    return v3
.end method

.method public static getDigitalFormatDateToday()I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0}, Lcom/android/systemui/DateUtils;->getDigitalFormatDate(Ljava/util/Calendar;)I

    move-result v1

    return v1
.end method

.method public static getDigitalPreviousMonthDate()I
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    if-ne v2, v5, :cond_0

    add-int/lit8 v3, v3, -0x1

    const/16 v2, 0xc

    :goto_0
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v4, v3, 0x2710

    mul-int/lit8 v5, v2, 0x64

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    return v4

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
