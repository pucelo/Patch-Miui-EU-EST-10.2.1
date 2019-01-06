.class public Lcom/android/server/DisplayFeatureControl;
.super Landroid/os/IDisplayFeatureControl$Stub;
.source "DisplayFeatureControl.java"


# static fields
.field private static final COLOR_INVERT_MODE:I = 0xf

.field private static final ENHANCE_SCREEN_MODE:I = 0x1

.field private static final EYESHIELD_MODE:I = 0x3

.field private static final FRONT_CAMERA_MODE:I = 0xe

.field private static LENGTH:I = 0x0

.field private static LEVEL:I = 0x0

.field private static OFFSET:I = 0x0

.field private static final SMART_ENVIRONMENT_MODE:I = 0x0

.field private static final STANDARD_MODE:I = 0x2

.field public static TAG:Ljava/lang/String;

.field private static color:I

.field private static mDeviceName:Ljava/lang/String;

.field private static old_mode:I

.field private static old_value:I

.field private static temp_count:I


# instance fields
.field private COLOR:Ljava/lang/String;

.field private final COLOR_AD_PROP:Ljava/lang/String;

.field private final COLOR_CABC_PROP:Ljava/lang/String;

.field private final COLOR_CE_PROP:Ljava/lang/String;

.field private final COLOR_GAMMA_PROP:Ljava/lang/String;

.field private final COLOR_SRGB_PROP:Ljava/lang/String;

.field private final COLOR_TEMPRATURE_PROP:Ljava/lang/String;

.field private final COLOR_WHITEPOINT_X_PROP:Ljava/lang/String;

.field private final COLOR_WHITEPOINT_Y_PROP:Ljava/lang/String;

.field private final DF_EXTCOLOR_PROC:Ljava/lang/String;

.field private UNKNOWN:Ljava/lang/String;

.field private boe_ft8719_length:Ljava/lang/String;

.field private boe_ft8719_offset:Ljava/lang/String;

.field private cabc_exist:Ljava/lang/String;

.field private ce_exist:Ljava/lang/String;

.field private df_extcolor_flag:Ljava/lang/String;

.field private huaxing_nt36672_length:Ljava/lang/String;

.field private huaxing_nt36672_offset:Ljava/lang/String;

.field private jdi_nt36672_length:Ljava/lang/String;

.field private jdi_nt36672_offset:Ljava/lang/String;

.field private mIsCABL:Z

.field private mIsSVI:Z

.field private papermode_level:Ljava/lang/String;

.field private pcc_exit:Ljava/lang/String;

.field private sc_td4310_length:Ljava/lang/String;

.field private sc_td4310_offset:Ljava/lang/String;

.field private shenchao_nt36672a_length:Ljava/lang/String;

.field private shenchao_nt36672a_offset:Ljava/lang/String;

.field private tm_nt36672_length:Ljava/lang/String;

.field private tm_nt36672_offset:Ljava/lang/String;

.field private tm_nt36672a_length:Ljava/lang/String;

.field private tm_nt36672a_offset:Ljava/lang/String;

.field private tm_td4310_length:Ljava/lang/String;

.field private tm_td4310_offset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, -0x1

    const-string/jumbo v0, "DisplayFeatureControl"

    sput-object v0, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    sput v1, Lcom/android/server/DisplayFeatureControl;->old_mode:I

    sput v1, Lcom/android/server/DisplayFeatureControl;->old_value:I

    const-string/jumbo v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DisplayFeatureControl;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v5, 0x1

    invoke-direct {p0}, Landroid/os/IDisplayFeatureControl$Stub;-><init>()V

    iput-boolean v5, p0, Lcom/android/server/DisplayFeatureControl;->mIsCABL:Z

    iput-boolean v5, p0, Lcom/android/server/DisplayFeatureControl;->mIsSVI:Z

    const-string/jumbo v5, "sys.ad.enable"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->COLOR_AD_PROP:Ljava/lang/String;

    const-string/jumbo v5, "persist.sys.display_cabc"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->COLOR_CABC_PROP:Ljava/lang/String;

    const-string/jumbo v5, "persist.sys.display_ce"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->COLOR_CE_PROP:Ljava/lang/String;

    const-string/jumbo v5, "persist.sys.display_gamma"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->COLOR_GAMMA_PROP:Ljava/lang/String;

    const-string/jumbo v5, "persist.sys.display_prefer"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->COLOR_TEMPRATURE_PROP:Ljava/lang/String;

    const-string/jumbo v5, "persist.sys.display_srgb"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->COLOR_SRGB_PROP:Ljava/lang/String;

    const-string/jumbo v5, "persist.sys.df.extcolor.proc"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->DF_EXTCOLOR_PROC:Ljava/lang/String;

    const-string/jumbo v5, "sys.white.x.value"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->COLOR_WHITEPOINT_X_PROP:Ljava/lang/String;

    const-string/jumbo v5, "sys.white.y.value"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->COLOR_WHITEPOINT_Y_PROP:Ljava/lang/String;

    const-string/jumbo v5, "1"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    const-string/jumbo v5, "0"

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->COLOR:Ljava/lang/String;

    sget-object v5, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "DisplayFeatureControl initial..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DisplayFeatureControl;->nativeInitDisplayMode()I

    :try_start_4a
    const-string/jumbo v1, ""

    const/16 v5, 0x400

    new-array v4, v5, [B

    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "sys/android_lcd/lcd_name"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "sys.paper_mode_max_level"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->papermode_level:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->papermode_level:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->LEVEL:I

    if-eqz v1, :cond_16d

    const-string/jumbo v5, "nt36672"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d5

    const-string/jumbo v5, "tianma"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16e

    const-string/jumbo v5, "sys.tianma_nt36672_offset"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_nt36672_offset:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_nt36672_offset:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    const-string/jumbo v5, "sys.tianma_nt36672_length"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_nt36672_length:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_nt36672_length:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I

    :cond_c9
    :goto_c9
    const-string/jumbo v5, "tulip"

    sget-object v6, Lcom/android/server/DisplayFeatureControl;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_df

    const-string/jumbo v5, "lilium"

    sget-object v6, Lcom/android/server/DisplayFeatureControl;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16d

    :cond_df
    const-string/jumbo v5, "nt36672a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_240

    const-string/jumbo v5, "tianma"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_129

    const-string/jumbo v5, "sys.panel.display"

    const-string/jumbo v6, "TIANMA"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "sys.tianma_nt36672a_offset"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_nt36672a_offset:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_nt36672a_offset:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    const-string/jumbo v5, "sys.tianma_nt36672a_length"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_nt36672a_length:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_nt36672a_length:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I

    const v5, 0xffeded

    const v6, 0xfbefff

    invoke-direct {p0, v5, v6}, Lcom/android/server/DisplayFeatureControl;->nativeSetParams(II)I

    :cond_129
    const-string/jumbo v5, "shenchao"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16a

    const-string/jumbo v5, "sys.panel.display"

    const-string/jumbo v6, "EBBG"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "sys.shenchao_nt36672a_offset"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->shenchao_nt36672a_offset:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->shenchao_nt36672a_offset:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    const-string/jumbo v5, "sys.shenchao_nt36672a_length"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->shenchao_nt36672a_length:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->shenchao_nt36672a_length:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I

    const v5, 0xfff9f0

    const v6, 0xf4f9ff

    invoke-direct {p0, v5, v6}, Lcom/android/server/DisplayFeatureControl;->nativeSetParams(II)I

    :cond_16a
    :goto_16a
    invoke-direct {p0}, Lcom/android/server/DisplayFeatureControl;->getWhitePointXYParam()[I

    :cond_16d
    :goto_16d
    return-void

    :cond_16e
    const-string/jumbo v5, "jdi"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1a4

    const-string/jumbo v5, "sys.jdi_nt36672_offset"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->jdi_nt36672_offset:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->jdi_nt36672_offset:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    const-string/jumbo v5, "sys.jdi_nt36672_length"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->jdi_nt36672_length:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->jdi_nt36672_length:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_19d} :catch_19f

    goto/16 :goto_c9

    :catch_19f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16d

    :cond_1a4
    :try_start_1a4
    const-string/jumbo v5, "huaxing"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c9

    const-string/jumbo v5, "sys.huaxing_nt36672_offset"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->huaxing_nt36672_offset:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->huaxing_nt36672_offset:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    const-string/jumbo v5, "sys.huaxing_nt36672_length"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->huaxing_nt36672_length:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->huaxing_nt36672_length:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I

    goto/16 :goto_c9

    :cond_1d5
    const-string/jumbo v5, "td4310"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c9

    const-string/jumbo v5, "tianma"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_20f

    const-string/jumbo v5, "sys.tianma_td4310_offset"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_td4310_offset:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_td4310_offset:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    const-string/jumbo v5, "sys.tianma_td4310_length"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_td4310_length:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->tm_td4310_length:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I

    goto/16 :goto_c9

    :cond_20f
    const-string/jumbo v5, "shenchao"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c9

    const-string/jumbo v5, "sys.shenchao_td4310_offset"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->sc_td4310_offset:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->sc_td4310_offset:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    const-string/jumbo v5, "sys.shenchao_td4310_length"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->sc_td4310_length:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->sc_td4310_length:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I

    goto/16 :goto_c9

    :cond_240
    const-string/jumbo v5, "boe"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16a

    const-string/jumbo v5, "sys.panel.display"

    const-string/jumbo v6, "BOE"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "sys.boe_ft8719_offset"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->boe_ft8719_offset:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->boe_ft8719_offset:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    const-string/jumbo v5, "sys.boe_ft8719_length"

    iget-object v6, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DisplayFeatureControl;->boe_ft8719_length:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DisplayFeatureControl;->boe_ft8719_length:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I

    const v5, 0xffeaec

    const v6, 0xfcefff

    invoke-direct {p0, v5, v6}, Lcom/android/server/DisplayFeatureControl;->nativeSetParams(II)I
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_281} :catch_19f

    goto/16 :goto_16a
.end method

.method private getPropValue(Ljava/lang/String;)I
    .registers 7

    const-string/jumbo v2, "-1"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPropValue pcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   pccString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3d
    const/4 v2, -0x1

    return v2
.end method

.method private getWhitePointXYParam()[I
    .registers 15

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_5
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string/jumbo v10, "/sys/class/graphics/fb0/msm_fb_whitepoint"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_47
    .catchall {:try_start_5 .. :try_end_12} :catchall_5c

    :try_start_12
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_ac
    .catchall {:try_start_12 .. :try_end_15} :catchall_a9

    move-result-object v3

    if-eqz v5, :cond_1b

    :try_start_18
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_42

    :cond_1b
    :goto_1b
    move-object v4, v5

    :cond_1c
    :goto_1c
    new-array v6, v11, [I

    if-eqz v3, :cond_68

    const-string/jumbo v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v11, :cond_68

    aget-object v9, v8, v2

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v9, v7, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    :catch_47
    move-exception v1

    :goto_48
    :try_start_48
    sget-object v9, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_5c

    if-eqz v4, :cond_1c

    :try_start_53
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_1c

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    :catchall_5c
    move-exception v9

    :goto_5d
    if-eqz v4, :cond_62

    :try_start_5f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    :cond_62
    :goto_62
    throw v9

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    :cond_68
    const-string/jumbo v9, "sys.white.x.value"

    aget v10, v6, v13

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "sys.white.y.value"

    aget v10, v6, v12

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "x="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catchall_a9
    move-exception v9

    move-object v4, v5

    goto :goto_5d

    :catch_ac
    move-exception v1

    move-object v4, v5

    goto :goto_48
.end method

.method private native nativeInitDisplayMode()I
.end method

.method private native nativeSetActiveMode(I)I
.end method

.method private native nativeSetCameraMode(I)I
.end method

.method private native nativeSetColorBalance(I)I
.end method

.method private native nativeSetPCCConfig(IIII)I
.end method

.method private native nativeSetParams(II)I
.end method

.method private setCABL(Z)V
    .registers 9

    sget-object v4, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCABL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/server/DisplayFeatureControl;->mIsCABL:Z

    if-ne v4, p1, :cond_3e

    sget-object v4, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current CABL mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    if-eqz p1, :cond_6c

    const-string/jumbo v2, "cabl:on\n"

    :goto_43
    :try_start_43
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string/jumbo v5, "pps"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V

    iput-boolean p1, p0, Lcom/android/server/DisplayFeatureControl;->mIsCABL:Z
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_6b} :catch_70

    :goto_6b
    return-void

    :cond_6c
    const-string/jumbo v2, "cabl:off\n"

    goto :goto_43

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v4, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCABL IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/DisplayFeatureControl;->COLOR:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    sget-object v1, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPropValue pcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-void
.end method

.method private setSVI(Z)V
    .registers 9

    sget-object v4, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSVI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/server/DisplayFeatureControl;->mIsSVI:Z

    if-ne v4, p1, :cond_3e

    sget-object v4, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current SVI mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    if-eqz p1, :cond_6c

    const-string/jumbo v2, "svi:on\n"

    :goto_43
    :try_start_43
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    new-instance v4, Landroid/net/LocalSocketAddress;

    const-string/jumbo v5, "pps"

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v4, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v3, v4}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V

    iput-boolean p1, p0, Lcom/android/server/DisplayFeatureControl;->mIsSVI:Z
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_6b} :catch_70

    :goto_6b
    return-void

    :cond_6c
    const-string/jumbo v2, "svi:off\n"

    goto :goto_43

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v4, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setSVI IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b
.end method


# virtual methods
.method public setFeature(IIII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x0

    sget-object v3, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GUOQ setFeature value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    const/4 v0, -0x1

    const/16 v3, 0xf

    if-ne p2, v3, :cond_5c

    const/4 v3, 0x1

    if-ne p3, v3, :cond_9c

    sget v3, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    const-string/jumbo v3, "persist.sys.df.extcolor.proc"

    sget v4, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GUOQ setFeature ++  temp_count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    const-string/jumbo v3, "persist.sys.df.extcolor.proc"

    iget-object v4, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DisplayFeatureControl;->df_extcolor_flag:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/DisplayFeatureControl;->df_extcolor_flag:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GUOQ setFeature df_extcolor_flag_temp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p2, :sswitch_data_380

    sget-object v3, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unknown mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x32

    :cond_93
    :goto_93
    if-eqz p2, :cond_97

    if-ne p2, v7, :cond_9b

    :cond_97
    sput p2, Lcom/android/server/DisplayFeatureControl;->old_mode:I

    sput p3, Lcom/android/server/DisplayFeatureControl;->old_value:I

    :cond_9b
    return v2

    :cond_9c
    if-nez p3, :cond_5c

    sget v3, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    sget v3, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_ab

    sput v6, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    :cond_ab
    const-string/jumbo v3, "persist.sys.df.extcolor.proc"

    sget v4, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GUOQ setFeature --  temp_count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :sswitch_d3
    sget-object v3, Lcom/android/server/DisplayFeatureControl;->mDeviceName:Ljava/lang/String;

    const-string/jumbo v4, "tulip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_152

    if-lez v0, :cond_110

    sget-object v3, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GUOQ  mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "df_extcolor_flag_temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    :cond_110
    const-string/jumbo v3, "sys.white.x.value"

    invoke-direct {p0, v3}, Lcom/android/server/DisplayFeatureControl;->getPropValue(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "sys.white.y.value"

    invoke-direct {p0, v4}, Lcom/android/server/DisplayFeatureControl;->getPropValue(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, p3, v3, v4, v6}, Lcom/android/server/DisplayFeatureControl;->nativeSetPCCConfig(IIII)I

    move-result v2

    const-string/jumbo v3, "persist.sys.display_srgb"

    const-string/jumbo v4, "-1"

    invoke-direct {p0, v3, v4}, Lcom/android/server/DisplayFeatureControl;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.sys.display_prefer"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/DisplayFeatureControl;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.sys.display_ce"

    const-string/jumbo v4, "4"

    invoke-direct {p0, v3, v4}, Lcom/android/server/DisplayFeatureControl;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.sys.display_cabc"

    const-string/jumbo v4, "1"

    invoke-direct {p0, v3, v4}, Lcom/android/server/DisplayFeatureControl;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "sys.ad.enable"

    const-string/jumbo v4, "on"

    invoke-direct {p0, v3, v4}, Lcom/android/server/DisplayFeatureControl;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    :cond_152
    if-lez v0, :cond_185

    sget-object v3, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GUOQ  mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "df_extcolor_flag_temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93

    :cond_185
    invoke-direct {p0, p3}, Lcom/android/server/DisplayFeatureControl;->nativeSetActiveMode(I)I

    move-result v2

    const-string/jumbo v3, "sys.ad.enable"

    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    :sswitch_194
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/server/DisplayFeatureControl;->nativeSetActiveMode(I)I

    move-result v2

    const-string/jumbo v3, "sys.ad.enable"

    const-string/jumbo v4, "off"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    :sswitch_1a4
    invoke-direct {p0, v6}, Lcom/android/server/DisplayFeatureControl;->nativeSetActiveMode(I)I

    move-result v2

    const-string/jumbo v3, "sys.ad.enable"

    const-string/jumbo v4, "off"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    :sswitch_1b3
    if-lez v0, :cond_1e6

    sget-object v3, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GUOQ  mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "df_extcolor_flag_temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93

    :cond_1e6
    sget v3, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    sget v4, Lcom/android/server/DisplayFeatureControl;->LEVEL:I

    sub-int/2addr v4, p3

    sget v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I

    mul-int/2addr v4, v5

    sget v5, Lcom/android/server/DisplayFeatureControl;->LEVEL:I

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    sput v3, Lcom/android/server/DisplayFeatureControl;->color:I

    sget v3, Lcom/android/server/DisplayFeatureControl;->color:I

    invoke-direct {p0, v3}, Lcom/android/server/DisplayFeatureControl;->nativeSetColorBalance(I)I

    move-result v2

    const-string/jumbo v3, "sys.ad.enable"

    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.sys.display_ce"

    iget-object v4, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DisplayFeatureControl;->ce_exist:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/DisplayFeatureControl;->ce_exist:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_224

    const-string/jumbo v3, "persist.sys.display_ce"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_224
    const-string/jumbo v3, "persist.sys.display_cabc"

    iget-object v4, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DisplayFeatureControl;->cabc_exist:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/DisplayFeatureControl;->cabc_exist:Ljava/lang/String;

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_243

    const-string/jumbo v3, "persist.sys.display_cabc"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_243
    const-string/jumbo v3, "whyred"

    sget-object v4, Lcom/android/server/DisplayFeatureControl;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_264

    const-string/jumbo v3, "tulip"

    sget-object v4, Lcom/android/server/DisplayFeatureControl;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_264

    const-string/jumbo v3, "lilium"

    sget-object v4, Lcom/android/server/DisplayFeatureControl;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    :cond_264
    const-string/jumbo v3, "persist.sys.display_gamma"

    const-string/jumbo v4, "2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    :sswitch_26f
    invoke-direct {p0, p3}, Lcom/android/server/DisplayFeatureControl;->nativeSetCameraMode(I)I

    move-result v2

    goto/16 :goto_93

    :sswitch_275
    sget v3, Lcom/android/server/DisplayFeatureControl;->temp_count:I

    if-nez v3, :cond_93

    const-wide/16 v4, 0x50

    :try_start_27b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27e
    .catch Ljava/lang/InterruptedException; {:try_start_27b .. :try_end_27e} :catch_2fb

    :goto_27e
    sget-object v3, Lcom/android/server/DisplayFeatureControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GUOQ InvertCOlor old_mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/DisplayFeatureControl;->old_mode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " old_value  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/DisplayFeatureControl;->old_value:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/android/server/DisplayFeatureControl;->old_mode:I

    if-nez v3, :cond_311

    sget-object v3, Lcom/android/server/DisplayFeatureControl;->mDeviceName:Ljava/lang/String;

    const-string/jumbo v4, "tulip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_301

    sget v3, Lcom/android/server/DisplayFeatureControl;->old_value:I

    const-string/jumbo v4, "sys.white.x.value"

    invoke-direct {p0, v4}, Lcom/android/server/DisplayFeatureControl;->getPropValue(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "sys.white.y.value"

    invoke-direct {p0, v5}, Lcom/android/server/DisplayFeatureControl;->getPropValue(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/DisplayFeatureControl;->nativeSetPCCConfig(IIII)I

    move-result v2

    const-string/jumbo v3, "persist.sys.display_srgb"

    const-string/jumbo v4, "2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.sys.display_prefer"

    sget v4, Lcom/android/server/DisplayFeatureControl;->old_value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.sys.display_ce"

    const-string/jumbo v4, "4"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.sys.display_cabc"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "sys.ad.enable"

    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    :catch_2fb
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_27e

    :cond_301
    sget v3, Lcom/android/server/DisplayFeatureControl;->old_value:I

    invoke-direct {p0, v3}, Lcom/android/server/DisplayFeatureControl;->nativeSetActiveMode(I)I

    const-string/jumbo v3, "sys.ad.enable"

    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    :cond_311
    sget v3, Lcom/android/server/DisplayFeatureControl;->old_mode:I

    if-ne v3, v7, :cond_93

    const-string/jumbo v3, "persist.sys.display_srgb"

    const-string/jumbo v4, "2"

    invoke-direct {p0, v3, v4}, Lcom/android/server/DisplayFeatureControl;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcom/android/server/DisplayFeatureControl;->OFFSET:I

    sget v4, Lcom/android/server/DisplayFeatureControl;->LEVEL:I

    sget v5, Lcom/android/server/DisplayFeatureControl;->old_value:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/server/DisplayFeatureControl;->LENGTH:I

    mul-int/2addr v4, v5

    sget v5, Lcom/android/server/DisplayFeatureControl;->LEVEL:I

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    sput v3, Lcom/android/server/DisplayFeatureControl;->color:I

    sget v3, Lcom/android/server/DisplayFeatureControl;->color:I

    invoke-direct {p0, v3}, Lcom/android/server/DisplayFeatureControl;->nativeSetColorBalance(I)I

    move-result v2

    const-string/jumbo v3, "sys.ad.enable"

    const-string/jumbo v4, "on"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.sys.display_ce"

    iget-object v4, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DisplayFeatureControl;->ce_exist:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/DisplayFeatureControl;->ce_exist:Ljava/lang/String;

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35e

    const-string/jumbo v3, "persist.sys.display_ce"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35e
    const-string/jumbo v3, "persist.sys.display_cabc"

    iget-object v4, p0, Lcom/android/server/DisplayFeatureControl;->UNKNOWN:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DisplayFeatureControl;->cabc_exist:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/DisplayFeatureControl;->cabc_exist:Ljava/lang/String;

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    const-string/jumbo v3, "persist.sys.display_cabc"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    nop

    :sswitch_data_380
    .sparse-switch
        0x0 -> :sswitch_d3
        0x1 -> :sswitch_194
        0x2 -> :sswitch_1a4
        0x3 -> :sswitch_1b3
        0xe -> :sswitch_26f
        0xf -> :sswitch_275
    .end sparse-switch
.end method
