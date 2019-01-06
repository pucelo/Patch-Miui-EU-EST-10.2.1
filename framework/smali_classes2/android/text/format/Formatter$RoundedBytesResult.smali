.class Landroid/text/format/Formatter$RoundedBytesResult;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoundedBytesResult"
.end annotation


# instance fields
.field public final fractionDigits:I

.field public final roundedBytes:J

.field public final units:Landroid/icu/util/MeasureUnit;

.field public final value:F


# direct methods
.method private constructor <init>(FLandroid/icu/util/MeasureUnit;IJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/format/Formatter$RoundedBytesResult;->value:F

    iput-object p2, p0, Landroid/text/format/Formatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    iput p3, p0, Landroid/text/format/Formatter$RoundedBytesResult;->fractionDigits:I

    iput-wide p4, p0, Landroid/text/format/Formatter$RoundedBytesResult;->roundedBytes:J

    return-void
.end method

.method static roundBytes(JI)Landroid/text/format/Formatter$RoundedBytesResult;
    .registers 17

    const-wide/16 v10, 0x0

    cmp-long v0, p0, v10

    if-gez v0, :cond_73

    const/4 v6, 0x1

    :goto_7
    if-eqz v6, :cond_a

    neg-long p0, p0

    :cond_a
    long-to-float v1, p0

    sget-object v2, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    const-wide/16 v8, 0x1

    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1c

    sget-object v2, Landroid/icu/util/MeasureUnit;->KILOBYTE:Landroid/icu/util/MeasureUnit;

    const-wide/16 v8, 0x3e8

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    :cond_1c
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2a

    sget-object v2, Landroid/icu/util/MeasureUnit;->MEGABYTE:Landroid/icu/util/MeasureUnit;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    :cond_2a
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_38

    sget-object v2, Landroid/icu/util/MeasureUnit;->GIGABYTE:Landroid/icu/util/MeasureUnit;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    :cond_38
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_46

    sget-object v2, Landroid/icu/util/MeasureUnit;->TERABYTE:Landroid/icu/util/MeasureUnit;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    :cond_46
    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_56

    invoke-static {}, Landroid/text/format/Formatter;->-get0()Landroid/icu/util/MeasureUnit;

    move-result-object v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    :cond_56
    const-wide/16 v10, 0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_62

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_75

    :cond_62
    const/4 v7, 0x1

    const/4 v3, 0x0

    :goto_64
    if-eqz v6, :cond_67

    neg-float v1, v1

    :cond_67
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_9c

    const-wide/16 v4, 0x0

    :goto_6d
    new-instance v0, Landroid/text/format/Formatter$RoundedBytesResult;

    invoke-direct/range {v0 .. v5}, Landroid/text/format/Formatter$RoundedBytesResult;-><init>(FLandroid/icu/util/MeasureUnit;IJ)V

    return-object v0

    :cond_73
    const/4 v6, 0x0

    goto :goto_7

    :cond_75
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7f

    const/16 v7, 0x64

    const/4 v3, 0x2

    goto :goto_64

    :cond_7f
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_91

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8d

    const/16 v7, 0xa

    const/4 v3, 0x1

    goto :goto_64

    :cond_8d
    const/16 v7, 0x64

    const/4 v3, 0x2

    goto :goto_64

    :cond_91
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_98

    const/4 v7, 0x1

    const/4 v3, 0x0

    goto :goto_64

    :cond_98
    const/16 v7, 0x64

    const/4 v3, 0x2

    goto :goto_64

    :cond_9c
    int-to-float v0, v7

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v10, v0

    mul-long/2addr v10, v8

    int-to-long v12, v7

    div-long v4, v10, v12

    goto :goto_6d
.end method
