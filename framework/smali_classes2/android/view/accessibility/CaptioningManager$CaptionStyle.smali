.class public final Landroid/view/accessibility/CaptioningManager$CaptionStyle;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptionStyle"
.end annotation


# static fields
.field private static final BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final COLOR_NONE_OPAQUE:I = 0xff

.field public static final COLOR_UNSPECIFIED:I = 0xffffff

.field public static final DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final PRESET_CUSTOM:I = -0x1

.field private static final UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field private final mHasBackgroundColor:Z

.field private final mHasEdgeColor:Z

.field private final mHasEdgeType:Z

.field private final mHasForegroundColor:Z

.field private final mHasWindowColor:Z

.field private mParsedTypeface:Landroid/graphics/Typeface;

.field public final mRawTypeface:Ljava/lang/String;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const v14, 0xffffff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x1000000

    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v1, -0x1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v9, -0x1

    move v8, v2

    move v10, v3

    move v11, v2

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v1, -0x100

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v8, -0x100

    const v9, -0xffff01

    move v10, v3

    move v11, v2

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v10, -0x1

    move v8, v14

    move v9, v14

    move v11, v14

    move v12, v14

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method private constructor <init>(IIIIILjava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    if-eq p3, v2, :cond_45

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    invoke-static {p4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    invoke-static {p5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    if-eqz v0, :cond_47

    :goto_28
    iput p1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    if-eqz v0, :cond_49

    :goto_2e
    iput p2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    if-eqz v0, :cond_4b

    :goto_34
    iput p3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    if-eqz v0, :cond_4d

    :goto_3a
    iput p4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    if-eqz v0, :cond_4f

    :goto_40
    iput p5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    iput-object p6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    return-void

    :cond_45
    move v0, v1

    goto :goto_16

    :cond_47
    move p1, v2

    goto :goto_28

    :cond_49
    move p2, v3

    goto :goto_2e

    :cond_4b
    move p3, v1

    goto :goto_34

    :cond_4d
    move p4, v3

    goto :goto_3a

    :cond_4f
    const/16 p5, 0xff

    goto :goto_40
.end method

.method public static getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 10

    sget-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const-string/jumbo v0, "accessibility_captioning_foreground_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v0, "accessibility_captioning_background_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v0, "accessibility_captioning_edge_type"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v0, "accessibility_captioning_edge_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "accessibility_captioning_window_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v0, "accessibility_captioning_typeface"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3a

    iget-object v6, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    :cond_3a
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method public static hasColor(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    if-nez v2, :cond_c

    const v2, 0xffff00

    and-int/2addr v2, p0

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method


# virtual methods
.method public applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 9

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_34

    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_8
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_37

    iget v2, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_10
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget v3, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_18
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget v4, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_20
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_40

    iget v5, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :goto_28
    iget-object v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v6, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    :goto_2e
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v0

    :cond_34
    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_8

    :cond_37
    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_10

    :cond_3a
    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_18

    :cond_3d
    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_20

    :cond_40
    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_28

    :cond_43
    iget-object v6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    goto :goto_2e
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    :cond_17
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    return v0
.end method

.method public hasEdgeColor()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    return v0
.end method

.method public hasEdgeType()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    return v0
.end method

.method public hasForegroundColor()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    return v0
.end method

.method public hasWindowColor()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    return v0
.end method
