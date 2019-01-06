.class public Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/alsa/AlsaDevicesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaDeviceRecord"
.end annotation


# static fields
.field public static final kDeviceDir_Capture:I = 0x0

.field public static final kDeviceDir_Playback:I = 0x1

.field public static final kDeviceDir_Unknown:I = -0x1

.field public static final kDeviceType_Audio:I = 0x0

.field public static final kDeviceType_Control:I = 0x1

.field public static final kDeviceType_MIDI:I = 0x2

.field public static final kDeviceType_Unknown:I = -0x1


# instance fields
.field mCardNum:I

.field mDeviceDir:I

.field mDeviceNum:I

.field mDeviceType:I

.field final synthetic this$0:Lcom/android/internal/alsa/AlsaDevicesParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V
    .registers 3

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Z
    .registers 16

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_9
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v11

    invoke-virtual {v11, p1, v0}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_16

    const/4 v11, 0x1

    return v11

    :cond_16
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->-get0()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v11

    invoke-virtual {v11, p1, v10}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    const/4 v11, -0x1

    if-ne v0, v11, :cond_25

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_25
    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    packed-switch v9, :pswitch_data_e4

    :cond_2c
    :goto_2c
    :pswitch_2c
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :pswitch_2f
    :try_start_2f
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_2c

    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    :pswitch_40
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_46} :catch_47

    goto :goto_2c

    :catch_47
    move-exception v1

    const-string/jumbo v11, "AlsaDevicesParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to parse token "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/proc/asound/devices"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " token: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :pswitch_7d
    :try_start_7d
    const-string/jumbo v11, "digital"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2c

    const-string/jumbo v11, "control"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_93

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_2c

    :cond_93
    const-string/jumbo v11, "raw"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_2c

    :pswitch_9b
    const-string/jumbo v11, "audio"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a8

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_2c

    :cond_a8
    const-string/jumbo v11, "midi"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x2

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    iget-object v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->-set1(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    goto/16 :goto_2c

    :pswitch_bc
    const-string/jumbo v11, "capture"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d0

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    iget-object v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->-set0(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z

    goto/16 :goto_2c

    :cond_d0
    const-string/jumbo v11, "playback"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    const/4 v11, 0x1

    iput v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    iget-object v11, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/internal/alsa/AlsaDevicesParser;->-set2(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    :try_end_e2
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_e2} :catch_47

    goto/16 :goto_2c

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2f
        :pswitch_40
        :pswitch_7d
        :pswitch_9b
        :pswitch_bc
    .end packed-switch
.end method

.method public textFormat()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    packed-switch v1, :pswitch_data_64

    const-string/jumbo v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_30
    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    packed-switch v1, :pswitch_data_6e

    const-string/jumbo v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_40
    const-string/jumbo v1, " Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :pswitch_47
    const-string/jumbo v1, " Control"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :pswitch_4e
    const-string/jumbo v1, " MIDI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30

    :pswitch_55
    const-string/jumbo v1, " Capture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :pswitch_5c
    const-string/jumbo v1, " Playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_40
        :pswitch_47
        :pswitch_4e
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_55
        :pswitch_5c
    .end packed-switch
.end method
