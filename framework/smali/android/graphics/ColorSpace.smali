.class public abstract Landroid/graphics/ColorSpace;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Adaptation;,
        Landroid/graphics/ColorSpace$Connector;,
        Landroid/graphics/ColorSpace$Lab;,
        Landroid/graphics/ColorSpace$Model;,
        Landroid/graphics/ColorSpace$Named;,
        Landroid/graphics/ColorSpace$RenderIntent;,
        Landroid/graphics/ColorSpace$Renderer;,
        Landroid/graphics/ColorSpace$Rgb;,
        Landroid/graphics/ColorSpace$Xyz;
    }
.end annotation


# static fields
.field public static final ILLUMINANT_A:[F

.field public static final ILLUMINANT_B:[F

.field public static final ILLUMINANT_C:[F

.field public static final ILLUMINANT_D50:[F

.field private static final ILLUMINANT_D50_XYZ:[F

.field public static final ILLUMINANT_D55:[F

.field public static final ILLUMINANT_D60:[F

.field public static final ILLUMINANT_D65:[F

.field public static final ILLUMINANT_D75:[F

.field public static final ILLUMINANT_E:[F

.field public static final MAX_ID:I = 0x3f

.field public static final MIN_ID:I = -0x1

.field private static final NTSC_1953_PRIMARIES:[F

.field private static final SRGB_PRIMARIES:[F

.field private static final sNamedColorSpaces:[Landroid/graphics/ColorSpace;


# instance fields
.field private final mId:I

.field private final mModel:Landroid/graphics/ColorSpace$Model;

.field private final mName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[F
    .registers 1

    sget-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    return-object v0
.end method

.method static synthetic -get1()[F
    .registers 1

    sget-object v0, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    return-object v0
.end method

.method static synthetic -get2()[F
    .registers 1

    sget-object v0, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    return-object v0
.end method

.method static synthetic -wrap0([F[F)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(DDDDDDDD)D
    .registers 18

    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap10([F)[F
    .registers 2

    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11([F)V
    .registers 1

    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToUv([F)V

    return-void
.end method

.method static synthetic -wrap2(DDDDDD)D
    .registers 14

    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(DDDDDDDD)D
    .registers 18

    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->response(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(DDDDDD)D
    .registers 14

    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5([F[F[F)[F
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6([F)[F
    .registers 2

    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7([F[F)[F
    .registers 3

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8([F[F)[F
    .registers 3

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9([F[F)[F
    .registers 3

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 17

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_384

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_A:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_38c

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_B:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_394

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_C:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_39c

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3a4

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D55:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3ac

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3b4

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3bc

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D75:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3c4

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_E:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_3cc

    sput-object v0, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_3dc

    sput-object v0, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_3ec

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/ColorSpace;

    sput-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v14, "sRGB IEC61966-2.1"

    sget-object v15, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v1, "sRGB IEC61966-2.1 (Linear)"

    sget-object v2, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v4, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v1, "scRGB-nl IEC 61966-2-2:2003"

    sget-object v2, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v4, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$INST$0:Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;

    sget-object v5, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$INST$1:Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;

    sget-object v6, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v6}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const v6, -0x40b374bc    # -0.799f

    const v7, 0x40198937    # 2.399f

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v1, "scRGB IEC 61966-2-2:2003"

    sget-object v2, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v4, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v6, -0x41000000    # -0.5f

    const v7, 0x40eff7cf    # 7.499f

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v14, "Rec. ITU-R BT.709-5"

    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_3f6

    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v4, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v6, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v8, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v10, 0x4001c71c71c71c72L    # 2.2222222222222223

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v14, "Rec. ITU-R BT.2020-1"

    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_406

    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    const-wide v4, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    const-wide v6, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v8, 0x3fb4d9e83e425aeeL    # 0.08145

    const-wide v10, 0x4001c71c71c71c72L    # 2.2222222222222223

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v1, "SMPTE RP 431-2-2007 DCI (P3)"

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_416

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_426

    sget-object v4, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const-wide v4, 0x4004cccccccccccdL    # 2.6

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v14, "Display P3"

    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_42e

    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa3f7ced916872bL    # 0.039

    const-wide v10, 0x4003333333333333L    # 2.4

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v14, "NTSC (1953)"

    sget-object v15, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_C:[F

    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v4, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v6, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v8, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v10, 0x4001c71c71c71c72L    # 2.2222222222222223

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v2, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v14, "SMPTE-C RGB"

    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_43e

    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v4, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v6, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v8, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v10, 0x4001c71c71c71c72L    # 2.2222222222222223

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v2, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v1, "Adobe RGB (1998)"

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_44e

    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v4, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const-wide v4, 0x400199999999999aL    # 2.2

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v14, "ROMM RGB ISO 22028-2:2013"

    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_45e

    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3fb0000000000000L    # 0.0625

    const-wide v8, 0x3f9fff79c842fa51L    # 0.031248

    const-wide v10, 0x3ffccccccccccccdL    # 1.8

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    sget-object v2, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v1, "SMPTE ST 2065-1:2012 ACES"

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_46e

    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    sget-object v4, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const v6, -0x38802000    # -65504.0f

    const v7, 0x477fe000    # 65504.0f

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    const-string/jumbo v1, "Academy S-2014-004 ACEScg"

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_47e

    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    sget-object v4, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const v6, -0x38802000    # -65504.0f

    const v7, 0x477fe000    # 65504.0f

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    new-instance v2, Landroid/graphics/ColorSpace$Xyz;

    const-string/jumbo v3, "Generic XYZ"

    sget-object v4, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Xyz;)V

    aput-object v2, v0, v1

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    new-instance v2, Landroid/graphics/ColorSpace$Lab;

    const-string/jumbo v3, "Generic L*a*b*"

    sget-object v4, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Lab;)V

    aput-object v2, v0, v1

    return-void

    nop

    :array_384
    .array-data 4
        0x3ee527e5    # 0.44757f
        0x3ed09d49    # 0.40745f
    .end array-data

    :array_38c
    .array-data 4
        0x3eb2641b    # 0.34842f
        0x3eb4063a    # 0.35161f
    .end array-data

    :array_394
    .array-data 4
        0x3e9ec02f    # 0.31006f
        0x3ea1dfb9    # 0.31616f
    .end array-data

    :array_39c
    .array-data 4
        0x3eb0fba9
        0x3eb78d50    # 0.3585f
    .end array-data

    :array_3a4
    .array-data 4
        0x3eaa32f4    # 0.33242f
        0x3eb1e258    # 0.34743f
    .end array-data

    :array_3ac
    .array-data 4
        0x3ea4b33e    # 0.32168f
        0x3eace315    # 0.33767f
    .end array-data

    :array_3b4
    .array-data 4
        0x3ea01b86
        0x3ea8754f    # 0.32902f
    .end array-data

    :array_3bc
    .array-data 4
        0x3e991926    # 0.29902f
        0x3ea13405    # 0.31485f
    .end array-data

    :array_3c4
    .array-data 4
        0x3eaaaa3b    # 0.33333f
        0x3eaaaa3b    # 0.33333f
    .end array-data

    :array_3cc
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_3dc
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
    .end array-data

    :array_3ec
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data

    :array_3f6
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_406
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    :array_416
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_426
    .array-data 4
        0x3ea0c49c    # 0.314f
        0x3eb3b646    # 0.351f
    .end array-data

    :array_42e
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_43e
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3eae147b    # 0.34f
        0x3e9eb852    # 0.31f
        0x3f1851ec    # 0.595f
        0x3e1eb852    # 0.155f
        0x3d8f5c29    # 0.07f
    .end array-data

    :array_44e
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_45e
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x3e236e2f    # 0.1596f
        0x3f572474    # 0.8404f
        0x3d15e9e2    # 0.0366f
        0x38d1b717    # 1.0E-4f
    .end array-data

    :array_46e
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x0
        0x3f800000    # 1.0f
        0x38d1b717    # 1.0E-4f
        -0x42624dd3    # -0.077f
    .end array-data

    :array_47e
    .array-data 4
        0x3f36872b    # 0.713f
        0x3e960419    # 0.293f
        0x3e28f5c3    # 0.165f
        0x3f547ae1    # 0.83f
        0x3e03126f    # 0.128f
        0x3d343958    # 0.044f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_15

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The name of a color space cannot be null and must contain at least 1 character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-nez p2, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A color space must have a model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, -0x1

    if-lt p3, v0, :cond_27

    const/16 v0, 0x3f

    if-le p3, v0, :cond_30

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The id must be between -1 and 63"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iput-object p1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    iput p3, p0, Landroid/graphics/ColorSpace;->mId:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    return-void
.end method

.method private static absRcpResponse(DDDDDD)D
    .registers 24

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_19

    neg-double v0, p0

    :goto_7
    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0

    :cond_19
    move-wide v0, p0

    goto :goto_7
.end method

.method private static absResponse(DDDDDD)D
    .registers 24

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_19

    neg-double v0, p0

    :goto_7
    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0

    :cond_19
    move-wide v0, p0

    goto :goto_7
.end method

.method public static adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;
    .registers 3

    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public static adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;
    .registers 10

    const/4 v6, 0x3

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v4

    sget-object v5, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v4, v5, :cond_40

    move-object v1, p0

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v4

    invoke-static {v4, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v4

    if-eqz v4, :cond_17

    return-object p0

    :cond_17
    array-length v4, p1

    if-ne v4, v6, :cond_3b

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    :goto_1e
    iget-object v4, p2, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Rgb;->getWhitePoint()[F

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-get4(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v4

    invoke-static {v0, v4}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v2

    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, p1, v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$Rgb;)V

    return-object v4

    :cond_3b
    invoke-static {p1}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v3

    goto :goto_1e

    :cond_40
    return-object p0
.end method

.method private static chromaticAdaptation([F[F[F)[F
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v2

    invoke-static {p0, p2}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v1

    const/4 v3, 0x3

    new-array v0, v3, [F

    aget v3, v1, v5

    aget v4, v2, v5

    div-float/2addr v3, v4

    aput v3, v0, v5

    aget v3, v1, v6

    aget v4, v2, v6

    div-float/2addr v3, v4

    aput v3, v0, v6

    aget v3, v1, v7

    aget v4, v2, v7

    div-float/2addr v3, v4

    aput v3, v0, v7

    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    move-result-object v3

    invoke-static {v0, p0}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v3

    return-object v3
.end method

.method private static compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    if-nez p0, :cond_c

    if-nez p1, :cond_c

    return v0

    :cond_c
    if-eqz p0, :cond_73

    if-eqz p1, :cond_73

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_73

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_73

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_73

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v2, v2, v4

    if-gez v2, :cond_73

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_73

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_73

    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_71

    :goto_70
    return v0

    :cond_71
    move v0, v1

    goto :goto_70

    :cond_73
    move v0, v1

    goto :goto_70
.end method

.method private static compare([F[F)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    const/4 v0, 0x0

    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_27

    aget v1, p0, v0

    aget v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_24

    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_24

    return v3

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_27
    return v4
.end method

.method public static connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .registers 2

    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_23

    new-instance v1, Landroid/graphics/ColorSpace$Connector$Rgb;

    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v1, p0, v0, p1}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v1

    :cond_23
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .registers 3

    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_25

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_25

    new-instance v0, Landroid/graphics/ColorSpace$Connector$Rgb;

    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    check-cast p1, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0

    :cond_25
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method public static createRenderer()Landroid/graphics/ColorSpace$Renderer;
    .registers 2

    new-instance v0, Landroid/graphics/ColorSpace$Renderer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/ColorSpace$Renderer;-><init>(Landroid/graphics/ColorSpace$Renderer;)V

    return-object v0
.end method

.method static get(I)Landroid/graphics/ColorSpace;
    .registers 4

    if-ltz p0, :cond_9

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    array-length v0, v0

    if-le p0, v0, :cond_2f

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid ID, must be in the range [0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;
    .registers 3

    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    invoke-virtual {p0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static inverse3x3([F)[F
    .registers 18

    const/4 v15, 0x0

    aget v4, p0, v15

    const/4 v15, 0x3

    aget v5, p0, v15

    const/4 v15, 0x6

    aget v6, p0, v15

    const/4 v15, 0x1

    aget v7, p0, v15

    const/4 v15, 0x4

    aget v9, p0, v15

    const/4 v15, 0x7

    aget v10, p0, v15

    const/4 v15, 0x2

    aget v11, p0, v15

    const/4 v15, 0x5

    aget v12, p0, v15

    const/16 v15, 0x8

    aget v13, p0, v15

    mul-float v15, v9, v13

    mul-float v16, v10, v12

    sub-float v1, v15, v16

    mul-float v15, v10, v11

    mul-float v16, v7, v13

    sub-float v2, v15, v16

    mul-float v15, v7, v12

    mul-float v16, v9, v11

    sub-float v3, v15, v16

    mul-float v15, v4, v1

    mul-float v16, v5, v2

    add-float v15, v15, v16

    mul-float v16, v6, v3

    add-float v8, v15, v16

    move-object/from16 v0, p0

    array-length v15, v0

    new-array v14, v15, [F

    div-float v15, v1, v8

    const/16 v16, 0x0

    aput v15, v14, v16

    div-float v15, v2, v8

    const/16 v16, 0x1

    aput v15, v14, v16

    div-float v15, v3, v8

    const/16 v16, 0x2

    aput v15, v14, v16

    mul-float v15, v6, v12

    mul-float v16, v5, v13

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x3

    aput v15, v14, v16

    mul-float v15, v4, v13

    mul-float v16, v6, v11

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x4

    aput v15, v14, v16

    mul-float v15, v5, v11

    mul-float v16, v4, v12

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x5

    aput v15, v14, v16

    mul-float v15, v5, v10

    mul-float v16, v6, v9

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x6

    aput v15, v14, v16

    mul-float v15, v6, v7

    mul-float v16, v4, v10

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x7

    aput v15, v14, v16

    mul-float v15, v4, v9

    mul-float v16, v5, v7

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x8

    aput v15, v14, v16

    return-object v14
.end method

.method static synthetic lambda$-android_graphics_ColorSpace_64008(D)D
    .registers 14

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    move-wide v0, p0

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absRcpResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace_64099(D)D
    .registers 14

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    move-wide v0, p0

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static match([FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace;
    .registers 9

    sget-object v3, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_30

    aget-object v0, v3, v2

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v5

    sget-object v6, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v5, v6, :cond_2d

    sget-object v5, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    invoke-static {v0, v5}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-get4(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v5

    invoke-static {p0, v5}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-get3(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/graphics/ColorSpace;->compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return-object v0

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_30
    const/4 v2, 0x0

    return-object v2
.end method

.method private static mul3x3([F[F)[F
    .registers 11

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x9

    new-array v0, v1, [F

    aget v1, p0, v4

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v7

    aget v3, p1, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    aget v1, p0, v5

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v8

    aget v3, p1, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    aget v1, p0, v6

    aget v2, p1, v4

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    aget v3, p1, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    aget v1, p0, v4

    aget v2, p1, v7

    mul-float/2addr v1, v2

    aget v2, p0, v7

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    aget v1, p0, v5

    aget v2, p1, v7

    mul-float/2addr v1, v2

    aget v2, p0, v8

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    aget v1, p0, v6

    aget v2, p1, v7

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    aget v1, p0, v4

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, p0, v7

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    aget v1, p0, v5

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, p0, v8

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    aget v1, p0, v6

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    return-object v0
.end method

.method private static mul3x3Diag([F[F)[F
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [F

    aget v1, p0, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    aput v1, v0, v3

    aget v1, p0, v4

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aput v1, v0, v4

    aget v1, p0, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    aput v1, v0, v5

    aget v1, p0, v3

    aget v2, p1, v6

    mul-float/2addr v1, v2

    aput v1, v0, v6

    aget v1, p0, v4

    aget v2, p1, v7

    mul-float/2addr v1, v2

    aput v1, v0, v7

    aget v1, p0, v5

    const/4 v2, 0x5

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    aget v1, p0, v3

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    aget v1, p0, v4

    const/4 v2, 0x7

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    aget v1, p0, v5

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    return-object v0
.end method

.method private static mul3x3Float3([F[F)[F
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    aget v0, p1, v5

    aget v1, p1, v6

    aget v2, p1, v7

    aget v3, p0, v5

    mul-float/2addr v3, v0

    const/4 v4, 0x3

    aget v4, p0, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/4 v4, 0x6

    aget v4, p0, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, p1, v5

    aget v3, p0, v6

    mul-float/2addr v3, v0

    const/4 v4, 0x4

    aget v4, p0, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p0, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, p1, v6

    aget v3, p0, v7

    mul-float/2addr v3, v0

    const/4 v4, 0x5

    aget v4, p0, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, p0, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, p1, v7

    return-object p1
.end method

.method private static rcpResponse(DDDDDD)D
    .registers 14

    mul-double v0, p8, p6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p10

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    div-double/2addr v0, p2

    :goto_f
    return-wide v0

    :cond_10
    div-double v0, p0, p6

    goto :goto_f
.end method

.method private static rcpResponse(DDDDDDDD)D
    .registers 20

    mul-double v0, p8, p6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_13

    sub-double v0, p0, p10

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, p14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    div-double/2addr v0, p2

    :goto_12
    return-wide v0

    :cond_13
    sub-double v0, p0, p12

    div-double/2addr v0, p6

    goto :goto_12
.end method

.method private static response(DDDDDD)D
    .registers 14

    cmpl-double v0, p0, p8

    if-ltz v0, :cond_c

    mul-double v0, p2, p0

    add-double/2addr v0, p4

    invoke-static {v0, v1, p10, p11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_b
    return-wide v0

    :cond_c
    mul-double v0, p6, p0

    goto :goto_b
.end method

.method private static response(DDDDDDDD)D
    .registers 20

    cmpl-double v2, p0, p8

    if-ltz v2, :cond_f

    mul-double v2, p2, p0

    add-double/2addr v2, p4

    move-wide/from16 v0, p14

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, p10

    :goto_e
    return-wide v2

    :cond_f
    mul-double v2, p6, p0

    add-double v2, v2, p12

    goto :goto_e
.end method

.method private static xyYToUv([F)V
    .registers 9

    const/4 v1, 0x0

    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_28

    aget v4, p0, v1

    add-int/lit8 v6, v1, 0x1

    aget v5, p0, v6

    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v4

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    add-float v0, v6, v7

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v4

    div-float v2, v6, v0

    const/high16 v6, 0x41100000    # 9.0f

    mul-float/2addr v6, v5

    div-float v3, v6, v0

    aput v2, p0, v1

    add-int/lit8 v6, v1, 0x1

    aput v3, p0, v6

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_28
    return-void
.end method

.method private static xyYToXyz([F)[F
    .registers 7

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [F

    aget v1, p0, v4

    aget v2, p0, v3

    div-float/2addr v1, v2

    aput v1, v0, v4

    aput v5, v0, v3

    aget v1, p0, v4

    sub-float v1, v5, v1

    aget v2, p0, v3

    sub-float/2addr v1, v2

    aget v2, p0, v3

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/graphics/ColorSpace;

    iget v3, p0, Landroid/graphics/ColorSpace;->mId:I

    iget v4, v0, Landroid/graphics/ColorSpace;->mId:I

    if-eq v3, v4, :cond_1c

    return v2

    :cond_1c
    iget-object v3, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    iget-object v4, v0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    return v2

    :cond_27
    iget-object v3, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    iget-object v4, v0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    if-ne v3, v4, :cond_2e

    :goto_2d
    return v1

    :cond_2e
    move v1, v2

    goto :goto_2d
.end method

.method public fromXyz(FFF)[F
    .registers 6

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v1

    new-array v0, v1, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object v1

    return-object v1
.end method

.method public abstract fromXyz([F)[F
.end method

.method public getComponentCount()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/graphics/ColorSpace;->mId:I

    return v0
.end method

.method public abstract getMaxValue(I)F
.end method

.method public abstract getMinValue(I)F
.end method

.method public getModel()Landroid/graphics/ColorSpace$Model;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Model;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/ColorSpace;->mId:I

    add-int v0, v1, v2

    return v0
.end method

.method public isSrgb()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isWideGamut()Z
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/ColorSpace;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXyz(FFF)[F
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object v0

    return-object v0
.end method

.method public abstract toXyz([F)[F
.end method
