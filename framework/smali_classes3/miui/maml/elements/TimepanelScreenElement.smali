.class public Lmiui/maml/elements/TimepanelScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "TimepanelScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field public static final TAG_NAME:Ljava/lang/String; = "Time"


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field protected mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatExp:Lmiui/maml/data/Expression;

.field private mFormatRaw:Ljava/lang/String;

.field private mLoadResourceFailed:Z

.field private mLocalizedZero:C

.field private mOldFormat:Ljava/lang/String;

.field private mOldSrc:Ljava/lang/String;

.field private mPreMinute:J

.field private mPreTime:Ljava/lang/CharSequence;

.field private mSpace:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    const-string/jumbo v0, "format"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/TimepanelScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "formatExp"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/TimepanelScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    const-string/jumbo v0, "space"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lmiui/maml/elements/TimepanelScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TimepanelScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    return-void
.end method

.method private createBitmap()V
    .registers 10

    const-string/jumbo v3, "0123456789:"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_59

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lmiui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_38

    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    const-string/jumbo v6, "TimepanelScreenElement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to load digit bitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_42

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :cond_42
    iget v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_50

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    :cond_50
    if-nez v1, :cond_56

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_59
    mul-int/lit8 v6, v5, 0x5

    iget v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget-object v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v6, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    int-to-double v6, v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/TimepanelScreenElement;->descale(D)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/TimepanelScreenElement;->setActualHeight(D)V

    return-void
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v0, "time.png"

    :cond_d
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_23

    const-string/jumbo v1, "dot"

    :goto_14
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    :cond_23
    iget-char v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    if-lt p1, v2, :cond_34

    iget-char v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    add-int/lit8 v2, v2, 0x9

    if-gt p1, v2, :cond_34

    iget-char v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x30

    int-to-char p1, v2

    :cond_34
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method

.method private getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method private setDateFormat()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "kk:mm"

    :goto_1b
    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    :goto_1d
    return-void

    :cond_1e
    const-string/jumbo v0, "hh:mm"

    goto :goto_1b

    :cond_22
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    goto :goto_1d
.end method

.method private updateTime(Z)V
    .registers 14

    const/4 v11, 0x0

    iget-boolean v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    if-eqz v9, :cond_6

    return-void

    :cond_6
    iget-object v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v9}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez p1, :cond_2d

    iget-object v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    return-void

    :cond_2d
    iput-object v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_3c
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v5, v9, :cond_5c

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lmiui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_59

    int-to-float v9, v8

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    add-int/2addr v8, v9

    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_5c
    iget-object v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v9}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    iget v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    sub-int v9, v8, v9

    iput v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    iget v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    int-to-double v10, v9

    invoke-virtual {p0, v10, v11}, Lmiui/maml/elements/TimepanelScreenElement;->descale(D)D

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lmiui/maml/elements/TimepanelScreenElement;->setActualWidth(D)V

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->requestUpdate()V

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .registers 12

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;->doTick(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long v2, v4, v6

    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2e

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2e

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_38

    :cond_2e
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    iput-wide v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    iput-object v1, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    :cond_38
    return-void
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    return-void
.end method

.method protected getBitmapWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    return v0
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->createBitmap()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    return-void
.end method
