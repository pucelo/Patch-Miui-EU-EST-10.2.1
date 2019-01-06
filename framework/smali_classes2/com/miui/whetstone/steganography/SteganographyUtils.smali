.class public Lcom/miui/whetstone/steganography/SteganographyUtils;
.super Ljava/lang/Object;
.source "SteganographyUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "Whet_SteganographyUtils"

    sput-object v0, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeWatermark(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/whetstone/steganography/Steg;->decode()Lcom/miui/whetstone/steganography/DecodedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/whetstone/steganography/DecodedObject;->intoString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_11

    move-result-object v1

    :goto_10
    return-object v1

    :catch_11
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public static decodeWatermark(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/whetstone/steganography/Steg;->decode()Lcom/miui/whetstone/steganography/DecodedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/whetstone/steganography/DecodedObject;->intoString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_11

    move-result-object v1

    :goto_10
    return-object v1

    :catch_11
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public static decodeWatermark(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/whetstone/steganography/Steg;->decode()Lcom/miui/whetstone/steganography/DecodedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/whetstone/steganography/DecodedObject;->intoString()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_15

    move-result-object v1

    :goto_14
    return-object v1

    :catch_15
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public static encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    return-object v1

    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/whetstone/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_17

    move-result-object v1

    :goto_16
    return-object v1

    :catch_17
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public static encodeWatermark(Ljava/io/File;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    return-object v1

    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/whetstone/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_17

    move-result-object v1

    :goto_16
    return-object v1

    :catch_17
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public static encodeWatermark(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    return-object v1

    :cond_e
    :try_start_e
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/whetstone/steganography/EncodedObject;->intoBitmap()Landroid/graphics/Bitmap;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1b

    move-result-object v1

    :goto_1a
    return-object v1

    :catch_1b
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static encodeWatermark(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 8

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-object v1

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_c
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/io/File;)Ljava/io/File;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_19

    move-result-object v1

    :goto_18
    return-object v1

    :catch_19
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public static encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-object v1

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_c
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Landroid/graphics/Bitmap;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_19

    move-result-object v1

    :goto_18
    return-object v1

    :catch_19
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public static encodeWatermark(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 8

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-object v1

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_c
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/io/File;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/io/File;)Ljava/io/File;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_19

    move-result-object v1

    :goto_18
    return-object v1

    :catch_19
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public static encodeWatermark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return-object v1

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_c
    invoke-static {p0}, Lcom/miui/whetstone/steganography/Steg;->withInput(Ljava/lang/String;)Lcom/miui/whetstone/steganography/Steg;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/whetstone/steganography/Steg;->encode(Ljava/lang/String;)Lcom/miui/whetstone/steganography/EncodedObject;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/whetstone/steganography/EncodedObject;->intoFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_19

    move-result-object v1

    :goto_18
    return-object v1

    :catch_19
    move-exception v0

    sget-object v2, Lcom/miui/whetstone/steganography/SteganographyUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeWatermark Exception e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method
