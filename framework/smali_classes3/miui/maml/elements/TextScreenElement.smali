.class public Lmiui/maml/elements/TextScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "TextScreenElement.java"


# static fields
.field private static final synthetic -miui-maml-elements-ScreenElement$AlignSwitchesValues:[I = null

.field private static final CRLF:Ljava/lang/String; = "\n"

.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x2d

.field private static final PADDING:I = 0x32

.field private static final RAW_CRLF:Ljava/lang/String; = "\\n"

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mColorParser:Lmiui/maml/util/ColorParser;

.field private mFontScaleEnabled:Z

.field protected mFormatter:Lmiui/maml/util/TextFormatter;

.field private mLayoutWidth:F

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private mPaint:Landroid/text/TextPaint;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShadowColorParser:Lmiui/maml/util/ColorParser;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShouldMarquee:Z

.field private mSizeExpression:Lmiui/maml/data/Expression;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextHeight:F

.field private mTextHeightVar:Lmiui/maml/data/IndexedVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextSize:F

.field private mTextWidth:F

.field private mTextWidthVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-elements-ScreenElement$AlignSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/elements/TextScreenElement;->-miui-maml-elements-ScreenElement$AlignSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/elements/TextScreenElement;->-miui-maml-elements-ScreenElement$AlignSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/elements/ScreenElement$Align;->values()[Lmiui/maml/elements/ScreenElement$Align;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lmiui/maml/elements/TextScreenElement;->-miui-maml-elements-ScreenElement$AlignSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-direct {p0, p1}, Lmiui/maml/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .registers 4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-static {}, Lmiui/maml/elements/TextScreenElement;->-getmiui-maml-elements-ScreenElement$AlignSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    :goto_11
    return-object v0

    :pswitch_12
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_11

    :pswitch_15
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_11

    :pswitch_18
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_11

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    iget-boolean v7, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v7, :cond_55

    new-instance v7, Lmiui/maml/data/IndexedVariable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "text_width"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6, v11}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/data/IndexedVariable;

    new-instance v7, Lmiui/maml/data/IndexedVariable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "text_height"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6, v11}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/data/IndexedVariable;

    :cond_55
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {v6, p1, v7}, Lmiui/maml/util/TextFormatter;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/TextFormatter;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {v6, p1, v7}, Lmiui/maml/util/ColorParser;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    const-string/jumbo v7, "size"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v7, "marqueeSpeed"

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v8}, Lmiui/maml/elements/TextScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    const-string/jumbo v7, "spacingMult"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v7, v8}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    const-string/jumbo v7, "spacingAdd"

    invoke-virtual {p0, p1, v7, v10}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    const-string/jumbo v7, "marqueeGap"

    const/4 v8, 0x2

    invoke-virtual {p0, p1, v7, v8}, Lmiui/maml/elements/TextScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    const-string/jumbo v7, "multiLine"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    const-string/jumbo v7, "enableFontScale"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lmiui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    const-string/jumbo v7, "fontFamily"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "fontPath"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12b

    const-string/jumbo v7, "fontStyle"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/maml/elements/TextScreenElement;->parseFontStyle(Ljava/lang/String;)I

    move-result v4

    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_dc
    :goto_dc
    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const-wide/high16 v8, 0x4032000000000000L    # 18.0

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v11}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const-string/jumbo v7, "shadowRadius"

    invoke-virtual {p0, p1, v7, v10}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    const-string/jumbo v7, "shadowDx"

    invoke-virtual {p0, p1, v7, v10}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    const-string/jumbo v7, "shadowDy"

    invoke-virtual {p0, p1, v7, v10}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    const-string/jumbo v7, "shadowColor"

    iget-object v8, p0, Lmiui/maml/elements/TextScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {v6, p1, v7, v8}, Lmiui/maml/util/ColorParser;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mShadowColorParser:Lmiui/maml/util/ColorParser;

    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v8, p0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    iget v9, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    iget v10, p0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void

    :cond_12b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_164

    const/4 v5, 0x0

    :try_start_132
    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v7

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_13f} :catch_148

    move-result-object v5

    :goto_140
    if-eqz v5, :cond_dc

    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_dc

    :catch_148
    move-exception v1

    const-string/jumbo v7, "TextScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "create typeface from asset fail :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140

    :cond_164
    const-string/jumbo v7, "bold"

    invoke-virtual {p0, p1, v7}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v7, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-static {v8, v9}, Lmiui/util/TypefaceUtils;->replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_dc
.end method

.method private static parseFontStyle(Ljava/lang/String;)I
    .registers 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    return v1

    :cond_11
    const-string/jumbo v0, "bold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const-string/jumbo v0, "italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x2

    return v0

    :cond_27
    const-string/jumbo v0, "bold_italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x3

    return v0

    :cond_32
    return v1
.end method

.method private updateTextSize()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/TextScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getFontScale()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    :cond_1f
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_26
    return-void
.end method

.method private updateTextWidth()V
    .registers 7

    const/4 v3, 0x0

    iput v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_39

    iget-boolean v3, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_19
    array-length v3, v1

    if-ge v0, v3, :cond_39

    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2c

    iput v2, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2f
    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_39
    iget-boolean v3, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v3, :cond_49

    iget-object v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/data/IndexedVariable;

    iget v4, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    float-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lmiui/maml/elements/TextScreenElement;->descale(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_49
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 26

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getAlpha()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getAlpha()I

    move-result v7

    invoke-static {v4, v7}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v9

    invoke-virtual {v3, v4, v7, v8, v9}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v21

    const/4 v3, 0x0

    cmpl-float v3, v21, v3

    if-ltz v3, :cond_174

    const/16 v19, 0x1

    :goto_4f
    const/4 v3, 0x0

    cmpg-float v3, v21, v3

    if-ltz v3, :cond_5c

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v3, v21, v3

    if-lez v3, :cond_62

    :cond_5c
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    move/from16 v21, v0

    :cond_62
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getHeight()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v17

    const/4 v3, 0x0

    cmpg-float v3, v15, v3

    if-gez v3, :cond_77

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    :cond_77
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lmiui/maml/elements/TextScreenElement;->getLeft(FF)F

    move-result v22

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lmiui/maml/elements/TextScreenElement;->getTop(FF)F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_cf

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    sub-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v13

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    sub-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v11

    :cond_cf
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v19, :cond_db

    const/4 v12, 0x0

    :cond_db
    if-eqz v19, :cond_de

    const/4 v13, 0x0

    :cond_de
    add-float v3, v21, v13

    add-float v4, v15, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_170

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    const/4 v3, 0x1

    if-ne v10, v3, :cond_178

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v3, :cond_178

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    add-float v7, v16, v3

    move/from16 v0, v20

    int-to-float v3, v0

    add-float v8, v17, v3

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_170

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    add-float v18, v3, v4

    cmpg-float v3, v18, v21

    if-gez v3, :cond_170

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float v4, v16, v18

    move/from16 v0, v20

    int-to-float v7, v0

    add-float v7, v7, v17

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_170
    :goto_170
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_174
    const/16 v19, 0x0

    goto/16 :goto_4f

    :cond_178
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_170
.end method

.method protected doTick(J)V
    .registers 22

    sget-object v18, Lmiui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v18

    :try_start_3
    invoke-super/range {p0 .. p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->isVisible()Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_166

    move-result v4

    if-nez v4, :cond_e

    monitor-exit v18

    return-void

    :cond_e
    const/4 v4, 0x0

    :try_start_f
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_166

    monitor-exit v18

    return-void

    :cond_33
    :try_start_33
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextSize()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v14, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    cmpl-float v4, v15, v4

    if-eqz v4, :cond_11c

    :cond_4c
    const/16 v16, 0x1

    :goto_4e
    if-eqz v16, :cond_53

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V

    :cond_53
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-nez v4, :cond_120

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    if-lez v4, :cond_120

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v4, v4, v17

    if-lez v4, :cond_120

    const/4 v13, 0x1

    :goto_6c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v4, :cond_7a

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v4, v17, v4

    if-lez v4, :cond_123

    :cond_7a
    move-object/from16 v0, p0

    iget v12, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    :goto_7e
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v4, :cond_8e

    if-nez v16, :cond_8e

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mLayoutWidth:F

    cmpl-float v4, v4, v12

    if-eqz v4, :cond_ee

    :cond_8e
    move-object/from16 v0, p0

    iput v12, v0, Lmiui/maml/elements/TextScreenElement;->mLayoutWidth:F

    new-instance v4, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mLayoutWidth:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v4, :cond_e7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    float-to-double v6, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lmiui/maml/elements/TextScreenElement;->descale(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_e7
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    :cond_ee
    if-eqz v13, :cond_10c

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v4, v5

    if-nez v4, :cond_127

    const/high16 v4, 0x42480000    # 50.0f

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    :cond_101
    :goto_101
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z
    :try_end_10c
    .catchall {:try_start_33 .. :try_end_10c} :catchall_166

    :cond_10c
    monitor-exit v18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v4, :cond_169

    const/16 v4, 0x2d

    :goto_115
    int-to-float v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/maml/elements/TextScreenElement;->requestFramerate(F)V

    return-void

    :cond_11c
    const/16 v16, 0x0

    goto/16 :goto_4e

    :cond_120
    const/4 v13, 0x0

    goto/16 :goto_6c

    :cond_123
    move/from16 v12, v17

    goto/16 :goto_7e

    :cond_127
    :try_start_127
    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    int-to-long v6, v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    sub-long v8, p1, v8

    mul-long/2addr v6, v8

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    neg-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_101

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v5, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    move-object/from16 v0, p0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F
    :try_end_165
    .catchall {:try_start_127 .. :try_end_165} :catchall_166

    goto :goto_101

    :catchall_166
    move-exception v4

    monitor-exit v18

    throw v4

    :cond_169
    const/4 v4, 0x0

    goto :goto_115
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    return-void
.end method

.method protected getColor()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_b

    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    :cond_b
    return v0
.end method

.method protected getShadowColor()I
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mShadowColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    return-object v1

    :cond_7
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v1}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string/jumbo v1, "\\n"

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-nez v1, :cond_27

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_27
    return-object v0
.end method

.method public getWidth()F
    .registers 3

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_b

    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_b
    return v0
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    return-void
.end method

.method protected onVisibilityChange(Z)V
    .registers 3

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    const/16 v0, 0x2d

    :goto_b
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/TextScreenElement;->requestFramerate(F)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0, p1}, Lmiui/maml/util/TextFormatter;->setParams([Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    return-void
.end method
