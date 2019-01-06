.class public Lcom/android/server/wifi/WifiServiceInjector;
.super Ljava/lang/Object;
.source "WifiServiceInjector.java"


# static fields
.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "WifiServiceInjector"

.field private static final WIFI_CONFIG_HEADER:Ljava/lang/String; = "network={"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIfBackgroundScanAllowed(Landroid/content/Context;Landroid/os/WorkSource;)Z
    .registers 7

    const/4 v4, 0x1

    if-eqz p1, :cond_f

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    :goto_8
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_14

    return v4

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    goto :goto_8

    :cond_14
    :try_start_14
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_1b} :catch_21

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/location/LocationPolicyManager;->isAllowedByLocationPolicy(Landroid/content/Context;II)Z

    move-result v2

    return v2

    :catch_21
    move-exception v0

    return v4
.end method

.method private static encodeGbkSSID(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v1, ""

    :try_start_3
    const-string/jumbo v2, "GBK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceInjector;->toHex([B)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_d} :catch_f

    move-result-object v1

    :goto_e
    return-object v1

    :catch_f
    move-exception v0

    const-string/jumbo v2, "WifiServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeGbk to hex failed when read wifi data from wpa_supplicant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private static encodeUtf8SSID(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v1, ""

    :try_start_3
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceInjector;->toHex([B)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_d} :catch_f

    move-result-object v1

    :goto_e
    return-object v1

    :catch_f
    move-exception v0

    const-string/jumbo v2, "WifiServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encodeUtf8 to hex failed when read wifi data from wpa_supplicant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private static fromHex(CZ)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_b
    const/16 v0, 0x61

    if-lt p0, v0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x61

    return v0

    :cond_18
    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x41

    return v0

    :cond_25
    if-eqz p1, :cond_29

    const/4 v0, -0x1

    return v0

    :cond_29
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad hex-character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static handleClientMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget v2, p0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_40

    :goto_7
    return-void

    :pswitch_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_13

    invoke-static {p0, v6, v5}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    :cond_13
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_39

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_1b
    if-eqz v0, :cond_3b

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiServiceInjector;->parseKeyMgmt(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiServiceInjector;->readWifiConfigFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    const-string/jumbo v2, "config"

    invoke-static {v2, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v3, v2}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_7

    :cond_39
    const/4 v0, 0x0

    goto :goto_1b

    :cond_3b
    invoke-static {p0, v6, v5}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_7

    nop

    :pswitch_data_40
    .packed-switch 0x25fa1
        :pswitch_8
    .end packed-switch
.end method

.method private static hexToBytes(Ljava/lang/String;)[B
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Odd length hex string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_59

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiServiceInjector;->fromHex(CZ)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiServiceInjector;->fromHex(CZ)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_32

    :cond_59
    return-object v0
.end method

.method private static isGBK(Ljava/lang/String;)Z
    .registers 10

    const/16 v8, 0xff

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceInjector;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_9
    array-length v5, v2

    if-ge v3, v5, :cond_37

    aget-byte v5, v2, v3

    and-int/lit16 v0, v5, 0xff

    const/16 v5, 0x81

    if-lt v0, v5, :cond_32

    if-ge v0, v8, :cond_32

    add-int/lit8 v5, v3, 0x1

    array-length v6, v2

    if-ge v5, v6, :cond_32

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v1, v5, 0xff

    const/16 v5, 0x40

    if-lt v1, v5, :cond_31

    if-ge v1, v8, :cond_31

    const/16 v5, 0x7f

    if-eq v1, v5, :cond_31

    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x1

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_31
    return v7

    :cond_32
    const/16 v5, 0x80

    if-lt v0, v5, :cond_2e

    return v7

    :cond_37
    if-eqz v4, :cond_3a

    return v7

    :cond_3a
    const/4 v5, 0x1

    return v5
.end method

.method private static isUTF8(Ljava/lang/String;)Z
    .registers 9

    const/16 v7, 0x80

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceInjector;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_a
    array-length v5, v0

    if-ge v2, v5, :cond_49

    aget-byte v5, v0, v2

    and-int/lit16 v1, v5, 0xff

    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_16

    const/4 v3, 0x0

    :cond_16
    if-nez v4, :cond_41

    if-lt v1, v7, :cond_25

    const/16 v5, 0xfc

    if-lt v1, v5, :cond_28

    const/16 v5, 0xfd

    if-gt v1, v5, :cond_28

    const/4 v4, 0x6

    :goto_23
    add-int/lit8 v4, v4, -0x1

    :cond_25
    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_28
    const/16 v5, 0xf8

    if-lt v1, v5, :cond_2e

    const/4 v4, 0x5

    goto :goto_23

    :cond_2e
    const/16 v5, 0xf0

    if-lt v1, v5, :cond_34

    const/4 v4, 0x4

    goto :goto_23

    :cond_34
    const/16 v5, 0xe0

    if-lt v1, v5, :cond_3a

    const/4 v4, 0x3

    goto :goto_23

    :cond_3a
    const/16 v5, 0xc0

    if-lt v1, v5, :cond_40

    const/4 v4, 0x2

    goto :goto_23

    :cond_40
    return v6

    :cond_41
    and-int/lit16 v5, v1, 0xc0

    if-eq v5, v7, :cond_46

    return v6

    :cond_46
    add-int/lit8 v4, v4, -0x1

    goto :goto_25

    :cond_49
    if-gtz v4, :cond_4d

    if-eqz v3, :cond_4e

    :cond_4d
    return v6

    :cond_4e
    const/4 v5, 0x1

    return v5
.end method

.method private static parseKeyMgmt(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    array-length v2, p1

    invoke-virtual {p0, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_21
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_30

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static readWifiConfigFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19

    const/4 v12, 0x0

    const/4 v6, 0x0

    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    const-string/jumbo v15, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_f} :catch_124
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_101
    .catchall {:try_start_2 .. :try_end_f} :catchall_149

    const/4 v3, 0x0

    :try_start_10
    invoke-static/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceInjector;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_32} :catch_15c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_32} :catch_163
    .catchall {:try_start_10 .. :try_end_32} :catchall_155

    move-result-object v4

    move-object v13, v12

    :goto_34
    if-eqz v4, :cond_16d

    :try_start_36
    const-string/jumbo v14, "[ \\t]*network=\\{"

    invoke-virtual {v4, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_40

    const/4 v3, 0x1

    :cond_40
    if-eqz v3, :cond_f7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const-string/jumbo v14, "ssid="

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e9

    const/4 v14, 0x5

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_c7

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_c7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-ne v14, v15, :cond_c7

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7a

    const/4 v5, 0x1

    :cond_7a
    :goto_7a
    if-eqz v5, :cond_16a

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "network={\n"

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_84} :catch_15f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_84} :catch_166
    .catchall {:try_start_36 .. :try_end_84} :catchall_158

    :try_start_84
    const-string/jumbo v14, "ssid="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_95
    const-string/jumbo v14, "key_mgmt="

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_af

    if-eqz v12, :cond_af

    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_af

    const/4 v12, 0x0

    :cond_af
    const-string/jumbo v14, "[ \\t]*\\}"

    invoke-virtual {v4, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_b5
    .catch Ljava/io/FileNotFoundException; {:try_start_84 .. :try_end_b5} :catch_15c
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_b5} :catch_163
    .catchall {:try_start_84 .. :try_end_b5} :catchall_155

    move-result v14

    if-eqz v14, :cond_f8

    if-eqz v12, :cond_f8

    :goto_ba
    if-eqz v7, :cond_bf

    :try_start_bc
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_ff

    :cond_bf
    :goto_bf
    move-object v6, v7

    :cond_c0
    :goto_c0
    if-eqz v12, :cond_152

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_c6
    return-object v14

    :cond_c7
    :try_start_c7
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceInjector;->isUTF8(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d7

    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceInjector;->encodeUtf8SSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e7

    :cond_d7
    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceInjector;->isGBK(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7a

    invoke-static {v9}, Lcom/android/server/wifi/WifiServiceInjector;->encodeGbkSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7a

    :cond_e7
    const/4 v5, 0x1

    goto :goto_7a

    :cond_e9
    if-eqz v13, :cond_16a

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f5
    .catch Ljava/io/FileNotFoundException; {:try_start_c7 .. :try_end_f5} :catch_15f
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_f5} :catch_166
    .catchall {:try_start_c7 .. :try_end_f5} :catchall_158

    move-object v12, v13

    goto :goto_95

    :cond_f7
    move-object v12, v13

    :cond_f8
    :try_start_f8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_fb
    .catch Ljava/io/FileNotFoundException; {:try_start_f8 .. :try_end_fb} :catch_15c
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_163
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_155

    move-result-object v4

    move-object v13, v12

    goto/16 :goto_34

    :catch_ff
    move-exception v2

    goto :goto_bf

    :catch_101
    move-exception v2

    :goto_102
    :try_start_102
    const-string/jumbo v14, "WifiServiceInjector"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_102 .. :try_end_11c} :catchall_149

    if-eqz v6, :cond_c0

    :try_start_11e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_122

    goto :goto_c0

    :catch_122
    move-exception v2

    goto :goto_c0

    :catch_124
    move-exception v1

    :goto_125
    :try_start_125
    const-string/jumbo v14, "WifiServiceInjector"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_125 .. :try_end_13f} :catchall_149

    if-eqz v6, :cond_c0

    :try_start_141
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_146

    goto/16 :goto_c0

    :catch_146
    move-exception v2

    goto/16 :goto_c0

    :catchall_149
    move-exception v14

    :goto_14a
    if-eqz v6, :cond_14f

    :try_start_14c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    :cond_14f
    :goto_14f
    throw v14

    :catch_150
    move-exception v2

    goto :goto_14f

    :cond_152
    const/4 v14, 0x0

    goto/16 :goto_c6

    :catchall_155
    move-exception v14

    move-object v6, v7

    goto :goto_14a

    :catchall_158
    move-exception v14

    move-object v6, v7

    move-object v12, v13

    goto :goto_14a

    :catch_15c
    move-exception v1

    move-object v6, v7

    goto :goto_125

    :catch_15f
    move-exception v1

    move-object v6, v7

    move-object v12, v13

    goto :goto_125

    :catch_163
    move-exception v2

    move-object v6, v7

    goto :goto_102

    :catch_166
    move-exception v2

    move-object v6, v7

    move-object v12, v13

    goto :goto_102

    :cond_16a
    move-object v12, v13

    goto/16 :goto_95

    :cond_16d
    move-object v12, v13

    goto/16 :goto_ba
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, ""

    return-object v1

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_29

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_29
    return-object p0
.end method

.method private static replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .registers 7

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string/jumbo v2, "WifiServiceInjector"

    const-string/jumbo v3, "replyToMessage Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v4, p0

    move v2, v3

    :goto_b
    if-ge v2, v4, :cond_27

    aget-byte v0, p0, v2

    const-string/jumbo v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
