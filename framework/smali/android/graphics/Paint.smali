.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$NoImagePreloadHolder;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field static final HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x500

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final HYPHENEDIT_MASK_END_OF_LINE:I = 0x7

.field public static final HYPHENEDIT_MASK_START_OF_LINE:I = 0x18

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field private static final NATIVE_PAINT_SIZE:J = 0x62L

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final sCacheLock:Ljava/lang/Object;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final sMinikinLangListIdCache:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mFontFeatureSettings:Ljava/lang/String;

.field private mFontVariationSettings:Ljava/lang/String;

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocales:Landroid/os/LocaleList;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field private mNativeColorFilter:J

.field private mNativePaint:J

.field private mNativeShader:J

.field public mNativeTypeface:J

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mShader:Landroid/graphics/Shader;

.field private mShadowLayerColor:I

.field private mShadowLayerDx:F

.field private mShadowLayerDy:F

.field private mShadowLayerRadius:F

.field private mTypeface:Landroid/graphics/Typeface;

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static synthetic -wrap0()J
    .registers 2

    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    new-array v0, v5, [Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    new-array v0, v5, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    new-array v0, v5, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    or-int/lit16 v0, p1, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    return-void
.end method

.method private static native nAscent(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nBreakText(JJLjava/lang/String;ZFI[F)I
.end method

.method private static native nBreakText(JJ[CIIFI[F)I
.end method

.method private static native nDescent(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetAlpha(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V
.end method

.method private static native nGetColor(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFillPath(JJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetHinting(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetLetterSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetOffsetForAdvance(JJ[CIIIIZF)I
.end method

.method private static native nGetRunAdvance(JJ[CIIIIZI)F
.end method

.method private static native nGetStrikeThruPosition(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrikeThruThickness(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native nGetStrokeCap(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeJoin(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeMiter(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F
.end method

.method private static native nGetTextAdvances(JJ[CIIIII[FI)F
.end method

.method private static native nGetTextAlign(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextPath(JJILjava/lang/String;IIFFJ)V
.end method

.method private static native nGetTextPath(JJI[CIIFFJ)V
.end method

.method private native nGetTextRunCursor(JJLjava/lang/String;IIIII)I
.end method

.method private native nGetTextRunCursor(JJ[CIIIII)I
.end method

.method private static native nGetTextScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSize(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTextSkewX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetUnderlinePosition(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetUnderlineThickness(JJ)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWordSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nHasGlyph(JJILjava/lang/String;)Z
.end method

.method private static native nHasShadowLayer(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit()J
.end method

.method private static native nInitWithPaint(J)J
.end method

.method private static native nIsElegantTextHeight(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetColorFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetDither(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetElegantTextHeight(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFakeBoldText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFilterBitmap(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetFontFeatureSettings(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetHinting(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLetterSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLinearText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetMaskFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetPathEffect(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShader(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetShadowLayer(JFFFI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrikeThruText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeCap(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeJoin(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeMiter(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStyle(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetSubpixelText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextAlign(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextLocales(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetTextLocalesByMinikinLangListId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSize(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTextSkewX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTypeface(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetUnderlineText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetWordSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetXfermode(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .registers 4

    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeTypeface:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v0, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerColor:I

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    return-void
.end method

.method private syncTextLocalesWithMinikin()V
    .registers 9

    iget-object v3, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    sget-object v3, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_24

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v6, v7, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/Paint;->sMinikinLangListIdCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_2f

    monitor-exit v4

    return-void

    :cond_24
    monitor-exit v4

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v5, v3}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLangListId(JI)V

    return-void

    :catchall_2f
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public ascent()F
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nAscent(JJ)F

    move-result v0

    return v0
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .registers 14

    const/4 v2, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    or-int v0, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v0, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v0, v3

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_27

    if-ne p2, p3, :cond_28

    :cond_27
    return v2

    :cond_28
    if-nez p2, :cond_3b

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_3b

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    return v0

    :cond_3b
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz p4, :cond_53

    sub-int v3, p3, p2

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    :goto_4f
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v6

    :cond_53
    sub-int v0, p3, p2

    neg-int v3, v0

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    goto :goto_4f
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .registers 16

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_26

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    move-result v0

    return v0

    :cond_26
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v9

    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v9

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p3, v4

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nBreakText(JJLjava/lang/String;ZFI[F)I

    move-result v10

    invoke-virtual {p0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p4, :cond_4e

    const/4 v0, 0x0

    aget v1, p4, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p4, v0

    :cond_4e
    return v10
.end method

.method public breakText([CIIF[F)I
    .registers 18

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-ltz p2, :cond_15

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_1b

    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1b
    array-length v0, p1

    if-eqz v0, :cond_20

    if-nez p3, :cond_22

    :cond_20
    const/4 v0, 0x0

    return v0

    :cond_22
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_38

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    move-result v0

    return v0

    :cond_38
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v10

    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v10

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p4, v4

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v9, p5

    invoke-static/range {v0 .. v9}, Landroid/graphics/Paint;->nBreakText(JJ[CIIFI[F)I

    move-result v11

    invoke-virtual {p0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p5, :cond_62

    const/4 v0, 0x0

    aget v1, p5, v0

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p5, v0

    :cond_62
    return v11
.end method

.method public clearShadowLayer()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public descent()F
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nDescent(JJ)F

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetAlpha(J)I

    move-result v0

    return v0
.end method

.method public getBidiFlags()I
    .registers 2

    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public getColor()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetColor(J)I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .registers 9

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public getFlags()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .registers 6

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->nGetFontMetrics(JJLandroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .registers 2

    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    return-object v0
.end method

.method public getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->nGetFontMetricsInt(JJLandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .registers 2

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    return-object v0
.end method

.method public getFontSpacing()F
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getHinting()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public getHyphenEdit()I
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public getLetterSpacing()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .registers 2

    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getNativeInstance()J
    .registers 9

    iget-object v4, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-nez v4, :cond_2d

    const-wide/16 v2, 0x0

    :goto_6
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_15

    iput-wide v2, p0, Landroid/graphics/Paint;->mNativeShader:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Paint;->nSetShader(JJ)J

    :cond_15
    iget-object v4, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v4, :cond_34

    const-wide/16 v0, 0x0

    :goto_1b
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2a

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    :cond_2a
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    return-wide v4

    :cond_2d
    iget-object v4, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v4}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    goto :goto_6

    :cond_34
    iget-object v4, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v4}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v0

    goto :goto_1b
.end method

.method public getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .registers 17

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v2, p2, p4

    or-int/2addr v0, v2

    sub-int v2, p3, p2

    or-int/2addr v0, v2

    sub-int v2, p5, p3

    or-int/2addr v0, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p5

    or-int/2addr v0, v2

    if-gez v0, :cond_26

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_26
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, p2, p4

    sub-int v3, p3, p4

    sub-int v5, p5, p4

    const/4 v4, 0x0

    move-object v0, p0

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v0

    add-int v8, v0, p4

    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v8
.end method

.method public getOffsetForAdvance([CIIIIZF)I
    .registers 19

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_25

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_25
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->nGetOffsetForAdvance(JJ[CIIIIZF)I

    move-result v0

    return v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .registers 2

    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .registers 17

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int/2addr v0, p5

    sub-int v2, p2, p4

    or-int/2addr v0, v2

    sub-int v2, p7, p2

    or-int/2addr v0, v2

    sub-int v2, p3, p7

    or-int/2addr v0, v2

    sub-int v2, p5, p3

    or-int/2addr v0, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p5

    or-int/2addr v0, v2

    if-gez v0, :cond_2b

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2b
    if-ne p3, p2, :cond_2f

    const/4 v0, 0x0

    return v0

    :cond_2f
    sub-int v0, p5, p4

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p1, p4, p5, v1, v0}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, p2, p4

    sub-int v3, p3, p4

    sub-int v5, p5, p4

    sub-int v7, p7, p4

    const/4 v4, 0x0

    move-object v0, p0

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v8

    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v8
.end method

.method public getRunAdvance([CIIIIZI)F
    .registers 19

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    or-int v0, p4, p2

    or-int v0, v0, p7

    or-int/2addr v0, p3

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p7, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p7

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_2a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2a
    if-ne p3, p2, :cond_2e

    const/4 v0, 0x0

    return v0

    :cond_2e
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Landroid/graphics/Paint;->nGetRunAdvance(JJ[CIIIIZI)F

    move-result v0

    return v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .registers 2

    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrikeThruPosition()F
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nGetStrikeThruPosition(JJ)F

    move-result v0

    return v0
.end method

.method public getStrikeThruThickness()F
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nGetStrikeThruThickness(JJ)F

    move-result v0

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .registers 5

    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .registers 5

    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeMiter()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .registers 5

    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .registers 5

    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .registers 9

    const/4 v3, 0x0

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-gez v1, :cond_14

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_14
    if-nez p4, :cond_1f

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "need bounds Rect"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    sub-int v1, p3, p2

    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    invoke-static {p1, p2, p3, v0, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v1, p3, p2

    invoke-virtual {p0, v0, v3, v1, p4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return-void
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .registers 14

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_13

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_13
    if-nez p4, :cond_1e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetStringBounds(JJLjava/lang/String;IIILandroid/graphics/Rect;)V

    return-void
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .registers 14

    or-int v0, p2, p3

    if-ltz v0, :cond_9

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_f

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_f
    if-nez p4, :cond_1a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(JJ[CIIILandroid/graphics/Rect;)V

    return-void
.end method

.method public getTextLocale()Ljava/util/Locale;
    .registers 3

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getTextLocales()Landroid/os/LocaleList;
    .registers 2

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .registers 19

    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_13

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_13
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextPath(JJILjava/lang/String;IIFFJ)V

    return-void
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .registers 19

    or-int v0, p2, p3

    if-ltz v0, :cond_9

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_f

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextPath(JJI[CIIFFJ)V

    return-void
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIIZ[FI)F
    .registers 20

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    or-int v1, p2, p3

    or-int/2addr v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v3, p3, p2

    or-int/2addr v1, v3

    sub-int v3, p2, p4

    or-int/2addr v1, v3

    sub-int v3, p5, p3

    or-int/2addr v1, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v1

    if-nez p7, :cond_2e

    const/4 v1, 0x0

    :goto_25
    or-int/2addr v1, v3

    if-gez v1, :cond_37

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2e
    move-object/from16 v0, p7

    array-length v1, v0

    sub-int v1, v1, p8

    sub-int v5, p3, p2

    sub-int/2addr v1, v5

    goto :goto_25

    :cond_37
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4f

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v1

    return v1

    :cond_4f
    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_57

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_6c

    :cond_57
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F

    move-result v1

    return v1

    :cond_6c
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_84

    move-object v1, p1

    check-cast v1, Landroid/text/GraphicsOperations;

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p0

    invoke-interface/range {v1 .. v9}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F

    move-result v1

    return v1

    :cond_84
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_8c

    if-ne p3, p2, :cond_8e

    :cond_8c
    const/4 v1, 0x0

    return v1

    :cond_8e
    sub-int v6, p5, p4

    sub-int v4, p3, p2

    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v3, p2, p4

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v10

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v10
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIIZ[FI)F
    .registers 27

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v2

    if-nez p7, :cond_2f

    const/4 v2, 0x0

    :goto_26
    or-int/2addr v2, v3

    if-gez v2, :cond_38

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2f
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v4, p3, p2

    sub-int/2addr v2, v4

    goto :goto_26

    :cond_38
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_44

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_46

    :cond_44
    const/4 v2, 0x0

    return v2

    :cond_46
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6c

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_6a

    const/4 v11, 0x5

    :goto_57
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v2

    return v2

    :cond_6a
    const/4 v11, 0x4

    goto :goto_57

    :cond_6c
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_b5

    const/4 v11, 0x5

    :goto_86
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p7, :cond_b7

    move/from16 v15, p8

    sub-int v2, p3, p2

    add-int v14, p8, v2

    :goto_a7
    if-ge v15, v14, :cond_b7

    aget v2, p7, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_a7

    :cond_b5
    const/4 v11, 0x4

    goto :goto_86

    :cond_b7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float v2, v2, v17

    return v2
.end method

.method public getTextRunAdvances([CIIIIZ[FI)F
    .registers 27

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    add-int v3, p4, p5

    add-int v4, p2, p3

    sub-int/2addr v3, v4

    or-int/2addr v2, v3

    move-object/from16 v0, p1

    array-length v3, v0

    add-int v4, p4, p5

    sub-int/2addr v3, v4

    or-int/2addr v3, v2

    if-nez p7, :cond_32

    const/4 v2, 0x0

    :goto_29
    or-int/2addr v2, v3

    if-gez v2, :cond_39

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_32
    move-object/from16 v0, p7

    array-length v2, v0

    add-int v4, p8, p3

    sub-int/2addr v2, v4

    goto :goto_29

    :cond_39
    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_40

    if-nez p3, :cond_42

    :cond_40
    const/4 v2, 0x0

    return v2

    :cond_42
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_68

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_66

    const/4 v11, 0x5

    :goto_53
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v2

    return v2

    :cond_66
    const/4 v11, 0x4

    goto :goto_53

    :cond_68
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    if-eqz p6, :cond_af

    const/4 v11, 0x5

    :goto_82
    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    if-eqz p7, :cond_b1

    move/from16 v15, p8

    add-int v14, p8, p3

    :goto_a1
    if-ge v15, v14, :cond_b1

    aget v2, p7, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_a1

    :cond_af
    const/4 v11, 0x4

    goto :goto_82

    :cond_b1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float v2, v2, v17

    return v2
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .registers 16

    const/4 v2, 0x0

    const/4 v8, -0x1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_e

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_e

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1d

    :cond_e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result v0

    return v0

    :cond_1d
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result v0

    return v0

    :cond_2f
    sub-int v3, p3, p2

    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v5, p5, p2

    move-object v0, p0

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    if-ne v7, v8, :cond_48

    move v0, v8

    :goto_47
    return v0

    :cond_48
    add-int v0, v7, p2

    goto :goto_47
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .registers 21

    or-int v2, p2, p3

    or-int v2, v2, p5

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p5, p2

    or-int/2addr v2, v3

    sub-int v3, p3, p5

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    or-int v2, v2, p6

    if-ltz v2, :cond_1d

    const/4 v2, 0x4

    move/from16 v0, p6

    if-le v0, v2, :cond_23

    :cond_1d
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_23
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v3, p0

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Landroid/graphics/Paint;->nGetTextRunCursor(JJLjava/lang/String;IIIII)I

    move-result v2

    return v2
.end method

.method public getTextRunCursor([CIIIII)I
    .registers 21

    add-int v2, p2, p3

    or-int v3, p2, v2

    or-int v3, v3, p5

    sub-int v4, v2, p2

    or-int/2addr v3, v4

    sub-int v4, p5, p2

    or-int/2addr v3, v4

    sub-int v4, v2, p5

    or-int/2addr v3, v4

    array-length v4, p1

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    or-int v3, v3, p6

    if-ltz v3, :cond_1b

    const/4 v3, 0x4

    move/from16 v0, p6

    if-le v0, v3, :cond_21

    :cond_1b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_21
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object v3, p0

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Landroid/graphics/Paint;->nGetTextRunCursor(JJ[CIIIII)I

    move-result v3

    return v3
.end method

.method public getTextScaleX()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public getTextSkewX()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .registers 10

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1f

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1f
    sub-int v2, p3, p2

    array-length v3, p4

    if-le v2, v3, :cond_2a

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_32

    if-ne p2, p3, :cond_33

    :cond_32
    return v4

    :cond_33
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3e

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v2

    return v2

    :cond_3e
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_46

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_4f

    :cond_46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v2

    return v2

    :cond_4f
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_5a

    check-cast p1, Landroid/text/GraphicsOperations;

    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v2

    return v2

    :cond_5a
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v1
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .registers 21

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1f

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1f
    sub-int v2, p3, p2

    move-object/from16 v0, p4

    array-length v3, v0

    if-le v2, v3, :cond_2c

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_38

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_3a

    :cond_38
    const/4 v2, 0x0

    return v2

    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5f

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    sub-int v2, p3, p2

    return v2

    :cond_5f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v14, 0x0

    :goto_8f
    sub-int v2, p3, p2

    if-ge v14, v2, :cond_9f

    aget v2, p4, v14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_8f

    :cond_9f
    sub-int v2, p3, p2

    return v2
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .registers 21

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    or-int v2, p2, p3

    if-ltz v2, :cond_16

    add-int v2, p2, p3

    move-object/from16 v0, p1

    array-length v3, v0

    if-le v2, v3, :cond_1c

    :cond_16
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1c
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, p3

    if-gt v0, v2, :cond_16

    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_2a

    if-nez p3, :cond_2c

    :cond_2a
    const/4 v2, 0x0

    return v2

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_4f

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    return p3

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v14, 0x0

    :goto_7f
    move/from16 v0, p3

    if-ge v14, v0, :cond_8f

    aget v2, p4, v14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7f

    :cond_8f
    return p3
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getUnderlinePosition()F
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nGetUnderlinePosition(JJ)F

    move-result v0

    return v0
.end method

.method public getUnderlineThickness()F
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nGetUnderlineThickness(JJ)F

    move-result v0

    return v0
.end method

.method public getWordSpacing()F
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetWordSpacing(J)F

    move-result v0

    return v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .registers 2

    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public hasEqualAttributes(Landroid/graphics/Paint;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iget-object v2, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-ne v1, v2, :cond_12c

    iget-object v1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iget-object v2, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    if-ne v1, v2, :cond_12c

    iget-object v1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iget-object v2, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    if-ne v1, v2, :cond_12c

    iget-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iget-object v2, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-ne v1, v2, :cond_12c

    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-object v2, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-ne v1, v2, :cond_12c

    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iget-object v2, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-ne v1, v2, :cond_12c

    iget-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iget-boolean v2, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-ne v1, v2, :cond_12c

    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    iget v2, p1, Landroid/graphics/Paint;->mCompatScaling:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iget v2, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    iget v2, p1, Landroid/graphics/Paint;->mBidiFlags:I

    if-ne v1, v2, :cond_12c

    iget-object v1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12c

    iget-object v1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iget-object v2, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12c

    iget-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iget-object v2, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12c

    iget v1, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iget v2, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    iget v1, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    iget v2, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    iget v1, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    iget v2, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    iget v1, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    iget v2, p1, Landroid/graphics/Paint;->mShadowLayerColor:I

    if-ne v1, v2, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFlags()I

    move-result v2

    if-ne v1, v2, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getHinting()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getHinting()I

    move-result v2

    if-ne v1, v2, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    if-ne v1, v2, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-ne v1, v2, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v2

    if-ne v1, v2, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v2

    if-ne v1, v2, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v2

    if-ne v1, v2, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    move-result v2

    if-ne v1, v2, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getLetterSpacing()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getWordSpacing()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getWordSpacing()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_12c

    invoke-virtual {p0}, Landroid/graphics/Paint;->getHyphenEdit()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getHyphenEdit()I

    move-result v2

    if-ne v1, v2, :cond_12c

    const/4 v0, 0x1

    :cond_12c
    return v0
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .registers 8

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nHasGlyph(JJILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasShadowLayer()Z
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final isAntiAlias()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public final isDither()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isElegantTextHeight()Z
    .registers 3

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nIsElegantTextHeight(J)Z

    move-result v0

    return v0
.end method

.method public final isFakeBoldText()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public final isFilterBitmap()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public final isLinearText()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public final isStrikeThruText()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public final isSubpixelText()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public final isUnderlineText()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .registers 9

    const/4 v4, 0x0

    if-nez p1, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1f

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_27

    if-ne p2, p3, :cond_29

    :cond_27
    const/4 v2, 0x0

    return v2

    :cond_29
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_34

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    return v2

    :cond_34
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_3c

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_45

    :cond_3c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    return v2

    :cond_45
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_50

    check-cast p1, Landroid/text/GraphicsOperations;

    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v2

    return v2

    :cond_50
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    return v1
.end method

.method public measureText(Ljava/lang/String;)F
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0
.end method

.method public measureText(Ljava/lang/String;II)F
    .registers 20

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1f

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2b

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_2d

    :cond_2b
    const/4 v2, 0x0

    return v2

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_56

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2

    :cond_56
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/Paint;->mNativeTypeface:J

    move-object/from16 v0, p0

    iget v11, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-static/range {v2 .. v13}, Landroid/graphics/Paint;->nGetTextAdvances(JJLjava/lang/String;IIIII[FI)F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v15

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public measureText([CII)F
    .registers 18

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    or-int v0, p2, p3

    if-ltz v0, :cond_14

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1a

    :cond_14
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1a
    array-length v0, p1

    if-eqz v0, :cond_1f

    if-nez p3, :cond_21

    :cond_1f
    const/4 v0, 0x0

    return v0

    :cond_21
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_41

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_41
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v12

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-static/range {v0 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JJ[CIIIII[FI)F

    move-result v13

    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v13

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public reset()V
    .registers 9

    const-wide/16 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    iput-object v2, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v2, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v2, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v2, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    iput-object v2, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-wide v6, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    iput-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-boolean v4, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput v5, p0, Landroid/graphics/Paint;->mCompatScaling:F

    iput v5, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    iput-object v2, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v2, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iput v3, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iput v3, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    iput v3, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    iput v4, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .registers 6

    if-eq p0, p1, :cond_c

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    :cond_c
    return-void
.end method

.method public setARGB(IIII)V
    .registers 7

    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    return-void
.end method

.method public setAntiAlias(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    return-void
.end method

.method public setBidiFlags(I)V
    .registers 5

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x5

    if-le p1, v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return-void
.end method

.method public setColor(I)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .registers 4

    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_8

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    :cond_8
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .registers 7

    const/high16 v4, 0x3f800000    # 1.0f

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    div-float v0, v4, p1

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    goto :goto_10
.end method

.method public setDither(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    return-void
.end method

.method public setElegantTextHeight(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetElegantTextHeight(JZ)V

    return-void
.end method

.method public setFakeBoldText(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    return-void
.end method

.method public setFlags(I)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    return-void
.end method

.method public setFontFeatureSettings(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_c

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    :cond_c
    if-nez p1, :cond_13

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-nez v0, :cond_13

    :cond_12
    return-void

    :cond_13
    if-eqz p1, :cond_1d

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_1d
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    return-void
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    if-eq v3, v5, :cond_15

    if-eqz v3, :cond_16

    iget-object v5, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    return v9

    :cond_16
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2e

    :cond_1e
    iput-object v7, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iget-object v5, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return v9

    :cond_2e
    iget-object v5, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v5, :cond_53

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_34
    invoke-static {v3}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v0

    move v5, v6

    :goto_3f
    if-ge v5, v7, :cond_56

    aget-object v1, v0, v5

    invoke-virtual {v1}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result v8

    if-eqz v8, :cond_50

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_53
    iget-object v4, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_34

    :cond_56
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5d

    return v6

    :cond_5d
    iput-object v3, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return v9
.end method

.method public setHinting(I)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    return-void
.end method

.method public setHyphenEdit(I)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHyphenEdit(JI)V

    return-void
.end method

.method public setLetterSpacing(F)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    return-void
.end method

.method public setLinearText(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    return-void
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .registers 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_6

    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    :cond_6
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .registers 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_6

    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    :cond_6
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .registers 6

    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_f

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetShader(JJ)J

    :cond_f
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .registers 11

    iput p1, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iput p2, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    iput p3, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    iput p4, p0, Landroid/graphics/Paint;->mShadowLayerColor:I

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFI)V

    return-void
.end method

.method public setStrikeThruText(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    return-void
.end method

.method public setStrokeMiter(F)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStyle(JI)V

    return-void
.end method

.method public setSubpixelText(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .registers 5

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    :cond_26
    new-instance v0, Landroid/os/LocaleList;

    new-array v1, v1, [Ljava/util/Locale;

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    return-void
.end method

.method public setTextLocales(Landroid/os/LocaleList;)V
    .registers 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "locales cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    return-void
.end method

.method public setTextScaleX(F)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    return-void
.end method

.method public setTextSize(F)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    return-void
.end method

.method public setTextSkewX(F)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_6

    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    :cond_6
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)J

    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeTypeface:J

    return-object p1
.end method

.method public setUnderlineText(Z)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    return-void
.end method

.method public setWordSpacing(F)V
    .registers 4

    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetWordSpacing(JF)V

    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .registers 6

    if-eqz p1, :cond_16

    iget v1, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    :goto_4
    iget-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iget v0, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    :goto_c
    if-eq v1, v0, :cond_13

    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v1}, Landroid/graphics/Paint;->nSetXfermode(JI)V

    :cond_13
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object p1

    :cond_16
    sget v1, Landroid/graphics/Xfermode;->DEFAULT:I

    goto :goto_4

    :cond_19
    sget v0, Landroid/graphics/Xfermode;->DEFAULT:I

    goto :goto_c
.end method
