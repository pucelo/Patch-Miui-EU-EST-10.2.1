.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final DAYSPERLYEAR:I = 0x16e

.field private static final DAYSPERNYEAR:I = 0x16d

.field private static final DAYSPERWEEK:I = 0x7

.field private static final FORCE_LOWER_CASE:I = -0x1

.field private static final HOURSPERDAY:I = 0x18

.field private static final MINSPERHOUR:I = 0x3c

.field private static final MONSPERYEAR:I = 0xc

.field private static final SECSPERMIN:I = 0x3c

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLocaleData:Llibcore/icu/LocaleData;

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final dateOnlyFormat:Ljava/lang/String;

.field private final dateTimeFormat:Ljava/lang/String;

.field private final localeData:Llibcore/icu/LocaleData;

.field private numberFormatter:Ljava/util/Formatter;

.field private outputBuilder:Ljava/lang/StringBuilder;

.field private final timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v3, Landroid/text/format/TimeFormatter;

    monitor-enter v3

    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_18

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3f

    :cond_18
    sput-object v0, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104063a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    const v2, 0x10403b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    const v2, 0x1040183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    :cond_3f
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    sget-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    sget-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_51

    monitor-exit v3

    return-void

    :catchall_51
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static brokenIsLower(C)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x61

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private static brokenIsUpper(C)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x41

    if-lt p0, v1, :cond_a

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private static brokenToLower(C)C
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_e

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_e

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    return v0

    :cond_e
    return p0
.end method

.method private static brokenToUpper(C)C
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_e

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_e

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    return v0

    :cond_e
    return p0
.end method

.method private formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V
    .registers 9

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_34

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    const/16 v3, 0x25

    if-ne v0, v3, :cond_1b

    invoke-direct {p0, v1, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z

    move-result v2

    :cond_1b
    if-eqz v2, :cond_2a

    iget-object v3, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2a
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4

    :cond_34
    return-void
.end method

.method private static getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sparse-switch p0, :sswitch_data_8

    return-object p1

    :sswitch_4
    return-object p2

    :sswitch_5
    return-object p3

    :sswitch_6
    return-object p4

    nop

    :sswitch_data_8
    .sparse-switch
        0x2d -> :sswitch_5
        0x30 -> :sswitch_6
        0x5f -> :sswitch_4
    .end sparse-switch
.end method

.method private handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z
    .registers 31

    const/4 v11, 0x0

    :goto_1
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_72b

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    packed-switch v5, :pswitch_data_72e

    :pswitch_29
    const/16 v22, 0x1

    return v22

    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-ltz v22, :cond_3e

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4b

    :cond_3e
    const-string/jumbo v22, "?"

    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    const/16 v22, 0x0

    return v22

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    aget-object v22, v22, v23

    goto :goto_41

    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-ltz v22, :cond_72

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_7f

    :cond_72
    const-string/jumbo v22, "?"

    :goto_75
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    const/16 v22, 0x0

    return v22

    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    aget-object v22, v22, v23

    goto :goto_75

    :pswitch_94
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v11, v0, :cond_cc

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    if-ltz v22, :cond_ac

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_b9

    :cond_ac
    const-string/jumbo v22, "?"

    :goto_af
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    :goto_b6
    const/16 v22, 0x0

    return v22

    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v23

    aget-object v22, v22, v23

    goto :goto_af

    :cond_cc
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    if-ltz v22, :cond_de

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_e9

    :cond_de
    const-string/jumbo v22, "?"

    :goto_e1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_b6

    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v23

    aget-object v22, v22, v23

    goto :goto_e1

    :pswitch_fc
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    if-ltz v22, :cond_10e

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_11b

    :cond_10e
    const-string/jumbo v22, "?"

    :goto_111
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    const/16 v22, 0x0

    return v22

    :cond_11b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v23

    aget-object v22, v22, v23

    goto :goto_111

    :pswitch_12e
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    const/16 v22, 0x0

    return v22

    :pswitch_144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :pswitch_158
    const-string/jumbo v22, "%m/%d/%y"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :pswitch_169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_1a1
    move v11, v5

    goto/16 :goto_1

    :pswitch_1a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%2d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_1dc
    const-string/jumbo v22, "%Y-%m-%d"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :pswitch_1ed
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_225
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_267

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v8, v22, 0xc

    :goto_233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :cond_267
    const/16 v8, 0xc

    goto :goto_233

    :pswitch_26a
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v22

    add-int/lit8 v21, v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%03d"

    const-string/jumbo v24, "%3d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%03d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_2a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%2d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_2dc
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_31e

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v13, v22, 0xc

    :goto_2ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%2d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :cond_31e
    const/16 v13, 0xc

    goto :goto_2ea

    :pswitch_321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    return v22

    :pswitch_3a1
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3c7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    :goto_3bd
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    const/16 v22, 0x0

    return v22

    :cond_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    goto :goto_3bd

    :pswitch_3d8
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_402

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    :goto_3f4
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    const/16 v22, 0x0

    return v22

    :cond_402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    goto :goto_3f4

    :pswitch_413
    const-string/jumbo v22, "%H:%M"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :pswitch_424
    const-string/jumbo v22, "%I:%M:%S %p"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :pswitch_435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_46d
    invoke-virtual/range {p2 .. p3}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    return v22

    :pswitch_481
    const-string/jumbo v22, "%H:%M:%S"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :pswitch_492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0x9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    return v22

    :pswitch_4a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v25

    add-int/lit8 v25, v25, 0x7

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v26

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x7

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_4e2
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-nez v22, :cond_508

    const/4 v6, 0x7

    :goto_4e9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :cond_508
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v6

    goto :goto_4e9

    :pswitch_50d
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v18

    :goto_519
    invoke-static/range {v20 .. v20}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v22

    if-eqz v22, :cond_57d

    const/16 v10, 0x16e

    :goto_521
    add-int/lit8 v22, v19, 0xb

    sub-int v22, v22, v18

    rem-int/lit8 v22, v22, 0x7

    add-int/lit8 v4, v22, -0x3

    rem-int/lit8 v22, v10, 0x7

    sub-int v16, v4, v22

    const/16 v22, -0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_537

    add-int/lit8 v16, v16, 0x7

    :cond_537
    add-int v16, v16, v10

    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_580

    add-int/lit8 v20, v20, 0x1

    const/16 v17, 0x1

    :goto_543
    const/16 v22, 0x56

    move/from16 v0, v22

    if-ne v5, v0, :cond_59b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_57a
    const/16 v22, 0x0

    return v22

    :cond_57d
    const/16 v10, 0x16d

    goto :goto_521

    :cond_580
    move/from16 v0, v19

    if-lt v0, v4, :cond_58b

    sub-int v22, v19, v4

    div-int/lit8 v22, v22, 0x7

    add-int/lit8 v17, v22, 0x1

    goto :goto_543

    :cond_58b
    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v20 .. v20}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v22

    if-eqz v22, :cond_598

    const/16 v22, 0x16e

    :goto_595
    add-int v19, v19, v22

    goto :goto_519

    :cond_598
    const/16 v22, 0x16d

    goto :goto_595

    :cond_59b
    const/16 v22, 0x67

    move/from16 v0, v22

    if-ne v5, v0, :cond_5b1

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_57a

    :cond_5b1
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_57a

    :pswitch_5c1
    const-string/jumbo v22, "%e-%b-%Y"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :pswitch_5d2
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v22

    add-int/lit8 v23, v22, 0x7

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-eqz v22, :cond_61c

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    :goto_5e4
    sub-int v22, v23, v22

    div-int/lit8 v12, v22, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%02d"

    const-string/jumbo v24, "%2d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :cond_61c
    const/16 v22, 0x6

    goto :goto_5e4

    :pswitch_61f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :pswitch_642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :pswitch_656
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :pswitch_66a
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    const/16 v22, 0x0

    return v22

    :pswitch_680
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    const/16 v22, 0x0

    return v22

    :pswitch_696
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v22

    if-gez v22, :cond_69f

    const/16 v22, 0x0

    return v22

    :cond_69f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v22

    if-eqz v22, :cond_6ba

    const/4 v9, 0x1

    :goto_6a6
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Llibcore/util/ZoneInfo;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    const/16 v22, 0x0

    return v22

    :cond_6ba
    const/4 v9, 0x0

    goto :goto_6a6

    :pswitch_6bc
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v22

    if-gez v22, :cond_6c5

    const/16 v22, 0x0

    return v22

    :cond_6c5
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v7

    if-gez v7, :cond_717

    const/16 v14, 0x2d

    neg-int v7, v7

    :goto_6ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v7, v7, 0x3c

    div-int/lit8 v22, v7, 0x3c

    mul-int/lit8 v22, v22, 0x64

    rem-int/lit8 v23, v7, 0x3c

    add-int v7, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "%04d"

    const-string/jumbo v24, "%4d"

    const-string/jumbo v25, "%d"

    const-string/jumbo v26, "%04d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    aput-object v25, v24, v26

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 v22, 0x0

    return v22

    :cond_717
    const/16 v14, 0x2b

    goto :goto_6ce

    :pswitch_71a
    const-string/jumbo v22, "%a %b %e %H:%M:%S %Z %Y"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    const/16 v22, 0x0

    return v22

    :cond_72b
    const/16 v22, 0x1

    return v22

    :pswitch_data_72e
    .packed-switch 0x23
        :pswitch_1a1
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_71a
        :pswitch_29
        :pswitch_1a1
        :pswitch_29
        :pswitch_29
        :pswitch_1a1
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_2c
        :pswitch_94
        :pswitch_12e
        :pswitch_158
        :pswitch_1
        :pswitch_1dc
        :pswitch_50d
        :pswitch_1ed
        :pswitch_225
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_321
        :pswitch_29
        :pswitch_1
        :pswitch_3d8
        :pswitch_29
        :pswitch_413
        :pswitch_435
        :pswitch_481
        :pswitch_4a0
        :pswitch_50d
        :pswitch_5d2
        :pswitch_642
        :pswitch_680
        :pswitch_696
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_1a1
        :pswitch_1a1
        :pswitch_29
        :pswitch_60
        :pswitch_fc
        :pswitch_144
        :pswitch_169
        :pswitch_1a4
        :pswitch_29
        :pswitch_50d
        :pswitch_fc
        :pswitch_29
        :pswitch_26a
        :pswitch_2a4
        :pswitch_2dc
        :pswitch_359
        :pswitch_393
        :pswitch_29
        :pswitch_3a1
        :pswitch_29
        :pswitch_424
        :pswitch_46d
        :pswitch_492
        :pswitch_4e2
        :pswitch_5c1
        :pswitch_61f
        :pswitch_656
        :pswitch_66a
        :pswitch_6bc
    .end packed-switch
.end method

.method private static isLeap(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    rem-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_f

    rem-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_e

    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v5, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    add-int/lit8 v3, v5, -0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v2, :cond_27

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x30

    if-lt v0, v5, :cond_21

    const/16 v5, 0x39

    if-gt v0, v5, :cond_21

    add-int v5, v0, v3

    int-to-char v0, v5

    :cond_21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private modifyAndAppend(Ljava/lang/CharSequence;I)V
    .registers 7

    sparse-switch p2, :sswitch_data_60

    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_8
    return-void

    :sswitch_9
    const/4 v1, 0x0

    :goto_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :sswitch_20
    const/4 v1, 0x0

    :goto_21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :sswitch_37
    const/4 v1, 0x0

    :goto_38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v0

    :cond_4c
    :goto_4c
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_54
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v0

    goto :goto_4c

    nop

    :sswitch_data_60
    .sparse-switch
        -0x1 -> :sswitch_9
        0x23 -> :sswitch_37
        0x5e -> :sswitch_20
    .end sparse-switch
.end method

.method private outputYear(IZZI)V
    .registers 16

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v0, 0x64

    rem-int/lit8 v3, p1, 0x64

    div-int/lit8 v4, p1, 0x64

    div-int/lit8 v5, v3, 0x64

    add-int v1, v4, v5

    rem-int/lit8 v3, v3, 0x64

    if-gez v3, :cond_47

    if-lez v1, :cond_47

    add-int/lit8 v3, v3, 0x64

    add-int/lit8 v1, v1, -0x1

    :cond_16
    :goto_16
    if-eqz p2, :cond_24

    if-nez v1, :cond_50

    if-gez v3, :cond_50

    iget-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    :goto_24
    if-eqz p3, :cond_46

    if-gez v3, :cond_6e

    neg-int v2, v3

    :goto_29
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string/jumbo v5, "%02d"

    const-string/jumbo v6, "%2d"

    const-string/jumbo v7, "%d"

    const-string/jumbo v8, "%02d"

    invoke-static {p4, v5, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_46
    return-void

    :cond_47
    if-gez v1, :cond_16

    if-lez v3, :cond_16

    add-int/lit8 v3, v3, -0x64

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_50
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string/jumbo v5, "%02d"

    const-string/jumbo v6, "%2d"

    const-string/jumbo v7, "%d"

    const-string/jumbo v8, "%02d"

    invoke-static {p4, v5, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_24

    :cond_6e
    move v2, v3

    goto :goto_29
.end method


# virtual methods
.method public format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v2, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v3, 0x30

    if-eq v2, v3, :cond_24

    invoke-direct {p0, v0}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_29

    move-result-object v0

    :cond_24
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    iput-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    return-object v0

    :catchall_29
    move-exception v2

    iput-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    iput-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    throw v2
.end method
