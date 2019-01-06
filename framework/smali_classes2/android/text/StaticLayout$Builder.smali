.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlignment:Landroid/text/Layout$Alignment;

.field mBreakStrategy:I

.field mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mEnd:I

.field mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field mHyphenationFrequency:I

.field mIncludePad:Z

.field mJustificationMode:I

.field mLeftIndents:[I

.field mLocales:Landroid/os/LocaleList;

.field mMaxLines:I

.field mMeasuredText:Landroid/text/MeasuredText;

.field mNativePtr:J

.field mPaint:Landroid/text/TextPaint;

.field mRightIndents:[I

.field mSpacingAdd:F

.field mSpacingMult:F

.field mStart:I

.field mText:Ljava/lang/CharSequence;

.field mTextDir:Landroid/text/TextDirectionHeuristic;

.field mWidth:I


# direct methods
.method static synthetic -wrap0(Landroid/text/StaticLayout$Builder;)V
    .registers 1

    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/text/StaticLayout$Builder;Landroid/os/LocaleList;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/text/StaticLayout$Builder;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-static {}, Landroid/text/StaticLayout;->-wrap1()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    return-void
.end method

.method private getHyphenators(Landroid/os/LocaleList;)[J
    .registers 8

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    new-array v3, v1, [J

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_1a

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Hyphenator;->get(Ljava/util/Locale;)Landroid/text/Hyphenator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Hyphenator;->getNativePtr()J

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1a
    return-object v3
.end method

.method public static obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v1, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    if-nez v0, :cond_11

    new-instance v0, Landroid/text/StaticLayout$Builder;

    invoke-direct {v0}, Landroid/text/StaticLayout$Builder;-><init>()V

    :cond_11
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput-object v3, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    const v1, 0x7fffffff

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v2, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    iput v2, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    iput v2, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    return-object v0
.end method

.method private static recycle(Landroid/text/StaticLayout$Builder;)V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v1, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->-wrap4(J)V

    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private setLocales(Landroid/os/LocaleList;)V
    .registers 6

    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/text/StaticLayout$Builder;->getHyphenators(Landroid/os/LocaleList;)[J

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/text/StaticLayout;->-wrap7(JLjava/lang/String;[J)V

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLocales:Landroid/os/LocaleList;

    :cond_17
    return-void
.end method


# virtual methods
.method addMeasuredRun(II[F)V
    .registers 6

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->-wrap2(JII[F)V

    return-void
.end method

.method addReplacementRun(IIF)V
    .registers 6

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/text/StaticLayout;->-wrap3(JIIF)V

    return-void
.end method

.method addStyleRun(Landroid/text/TextPaint;IIZ)F
    .registers 14

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/StaticLayout$Builder;->setLocales(Landroid/os/LocaleList;)V

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-virtual {p1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v2

    iget-wide v4, p1, Landroid/text/TextPaint;->mNativeTypeface:J

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Landroid/text/StaticLayout;->-wrap0(JJJIIZ)F

    move-result v0

    return v0
.end method

.method public build()Landroid/text/StaticLayout;
    .registers 3

    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V

    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->-wrap5(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method finish()V
    .registers 4

    const/4 v2, 0x0

    iget-wide v0, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->-wrap4(J)V

    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    invoke-virtual {v0}, Landroid/text/MeasuredText;->finish()V

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return-object p0
.end method

.method public setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .registers 11

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    if-nez p1, :cond_23

    const/4 v2, 0x0

    :goto_7
    if-nez p2, :cond_25

    const/4 v4, 0x0

    :goto_a
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v1, v6, [I

    const/4 v0, 0x0

    :goto_11
    array-length v6, v1

    if-ge v0, v6, :cond_2b

    if-ge v0, v2, :cond_27

    aget v3, p1, v0

    :goto_18
    if-ge v0, v4, :cond_29

    aget v5, p2, v0

    :goto_1c
    add-int v6, v3, v5

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_23
    array-length v2, p1

    goto :goto_7

    :cond_25
    array-length v4, p2

    goto :goto_a

    :cond_27
    const/4 v3, 0x0

    goto :goto_18

    :cond_29
    const/4 v5, 0x0

    goto :goto_1c

    :cond_2b
    iget-wide v6, p0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    invoke-static {v6, v7, v1}, Landroid/text/StaticLayout;->-wrap6(J[I)V

    return-object p0
.end method

.method public setJustificationMode(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    return-object p0
.end method

.method public setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .registers 3

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    return-object p0
.end method

.method public setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return-object p0
.end method

.method public setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .registers 4

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .registers 2

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public setWidth(I)Landroid/text/StaticLayout$Builder;
    .registers 3

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_8

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    :cond_8
    return-object p0
.end method
