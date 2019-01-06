.class public Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.super Ljava/lang/Object;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;
    }
.end annotation


# static fields
.field private static final synthetic -android-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I = null

.field private static final synthetic -android-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I = null

.field public static final MAX_TEXTURE:I = 0x2


# instance fields
.field mNumTextures:I

.field mPointSpriteEnable:Z

.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

.field mVaryingColorEnable:Z


# direct methods
.method private static synthetic -getandroid-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->DECAL:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I

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

.method private static synthetic -getandroid-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->LUMINANCE_ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    return-void
.end method

.method private buildShaderString()V
    .registers 4

    const-string/jumbo v1, "//rs_shader_internal\n"

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "varying lowp vec4 varColor;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "varying vec2 varTex0;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "void main() {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    if-eqz v1, :cond_a4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  lowp vec4 col = varColor;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    :goto_69
    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    if-eqz v1, :cond_89

    iget-boolean v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    if-eqz v1, :cond_bd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  vec2 t0 = gl_PointCoord;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    :cond_89
    :goto_89
    const/4 v0, 0x0

    :goto_8a
    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    if-ge v0, v1, :cond_1e7

    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-getandroid-renderscript-ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->env:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    invoke-virtual {v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_218

    :goto_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_a4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  lowp vec4 col = UNI_Color;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_69

    :cond_bd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  vec2 t0 = varTex0.xy;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_89

    :pswitch_d6
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-getandroid-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_222

    goto :goto_a1

    :pswitch_ea
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.a = texture2D(UNI_Tex0, t0).a;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_a1

    :pswitch_103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto :goto_a1

    :pswitch_11c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgb = texture2D(UNI_Tex0, t0).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_a1

    :pswitch_136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_a1

    :pswitch_150
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-getandroid-renderscript-ProgramFragmentFixedFunction$Builder$FormatSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    invoke-virtual {v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22e

    goto/16 :goto_a1

    :pswitch_165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.a *= texture2D(UNI_Tex0, t0).a;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_a1

    :pswitch_17f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_a1

    :pswitch_199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgb *= texture2D(UNI_Tex0, t0).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_a1

    :pswitch_1b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_a1

    :pswitch_1cd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  col = texture2D(UNI_Tex0, t0);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    goto/16 :goto_a1

    :cond_1e7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  gl_FragColor = col;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    return-void

    :pswitch_data_218
    .packed-switch 0x1
        :pswitch_1cd
        :pswitch_150
        :pswitch_d6
    .end packed-switch

    :pswitch_data_222
    .packed-switch 0x1
        :pswitch_ea
        :pswitch_103
        :pswitch_11c
        :pswitch_136
    .end packed-switch

    :pswitch_data_22e
    .packed-switch 0x1
        :pswitch_165
        :pswitch_17f
        :pswitch_199
        :pswitch_1b3
    .end packed-switch
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragmentFixedFunction;
    .registers 15

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    new-instance v7, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v7, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    iput v12, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v13, :cond_1f

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    aget-object v9, v9, v5

    if-eqz v9, :cond_1c

    iget v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_1f
    invoke-direct {p0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->buildShaderString()V

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    const/4 v1, 0x0

    iget-boolean v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    if-nez v9, :cond_55

    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v9}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v9}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v9

    const-string/jumbo v10, "Color"

    invoke-virtual {v0, v9, v10}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    new-instance v8, Landroid/renderscript/Type$Builder;

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    :cond_55
    const/4 v5, 0x0

    :goto_56
    iget v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    if-ge v5, v9, :cond_62

    sget-object v9, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    invoke-virtual {v7, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_62
    invoke-virtual {v7}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    move-result-object v6

    iput v13, v6, Landroid/renderscript/ProgramFragmentFixedFunction;->mTextureCount:I

    iget-boolean v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    if-nez v9, :cond_87

    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v9, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    new-instance v4, Landroid/renderscript/FieldPacker;

    const/16 v9, 0x10

    invoke-direct {v4, v9}, Landroid/renderscript/FieldPacker;-><init>(I)V

    new-instance v3, Landroid/renderscript/Float4;

    invoke-direct {v3, v11, v11, v11, v11}, Landroid/renderscript/Float4;-><init>(FFFF)V

    invoke-virtual {v4, v3}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    invoke-virtual {v2, v12, v4}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    invoke-virtual {v6, v2, v12}, Landroid/renderscript/ProgramFragmentFixedFunction;->bindConstants(Landroid/renderscript/Allocation;I)V

    :cond_87
    return-object v6
.end method

.method public setPointSpriteTexCoordinateReplacement(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    return-object p0
.end method

.method public setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p3, :cond_5

    const/4 v0, 0x2

    if-lt p3, v0, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MAX_TEXTURE exceeded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    new-instance v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    invoke-direct {v1, p0, p1, p2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;-><init>(Landroid/renderscript/ProgramFragmentFixedFunction$Builder;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;)V

    aput-object v1, v0, p3

    return-object p0
.end method

.method public setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    return-object p0
.end method
