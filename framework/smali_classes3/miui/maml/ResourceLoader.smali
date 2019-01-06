.class public abstract Lmiui/maml/ResourceLoader;
.super Ljava/lang/Object;
.source "ResourceLoader.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "config.xml"

.field private static final IMAGES_FOLDER_NAME:Ljava/lang/String; = "images"

.field private static final LOG_TAG:Ljava/lang/String; = "ResourceLoader"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "manifest.xml"


# instance fields
.field protected mConfigName:Ljava/lang/String;

.field protected mLanguageCountrySuffix:Ljava/lang/String;

.field protected mLanguageSuffix:Ljava/lang/String;

.field protected mLocale:Ljava/util/Locale;

.field protected mManifestName:Ljava/lang/String;

.field private mThemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "manifest.xml"

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    const-string/jumbo v0, "config.xml"

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    return-void
.end method

.method private getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    return-object v0

    :cond_35
    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    return-object v0

    :cond_69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    return-object v0

    :cond_8e
    invoke-virtual {p0, p1}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_95

    :goto_94
    return-object p1

    :cond_95
    const/4 p1, 0x0

    goto :goto_94
.end method

.method private getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 15

    const/4 v12, 0x0

    invoke-virtual {p0, p1}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    if-nez v8, :cond_c

    return-object v12

    :cond_c
    :try_start_c
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1b} :catch_70
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_1b} :catch_5d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_1b} :catch_4a
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_1b} :catch_37
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_24
    .catchall {:try_start_c .. :try_end_1b} :catchall_83

    move-result-object v10

    if-eqz v8, :cond_21

    :try_start_1e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-object v10

    :catch_22
    move-exception v3

    goto :goto_21

    :catch_24
    move-exception v4

    :try_start_25
    const-string/jumbo v10, "ResourceLoader"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_83

    if-eqz v8, :cond_34

    :try_start_31
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-object v12

    :catch_35
    move-exception v3

    goto :goto_34

    :catch_37
    move-exception v7

    :try_start_38
    const-string/jumbo v10, "ResourceLoader"

    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_83

    if-eqz v8, :cond_34

    :try_start_44
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_34

    :catch_48
    move-exception v3

    goto :goto_34

    :catch_4a
    move-exception v6

    :try_start_4b
    const-string/jumbo v10, "ResourceLoader"

    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_83

    if-eqz v8, :cond_34

    :try_start_57
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_34

    :catch_5b
    move-exception v3

    goto :goto_34

    :catch_5d
    move-exception v5

    :try_start_5e
    const-string/jumbo v10, "ResourceLoader"

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_83

    if-eqz v8, :cond_34

    :try_start_6a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_34

    :catch_6e
    move-exception v3

    goto :goto_34

    :catch_70
    move-exception v3

    :try_start_71
    const-string/jumbo v10, "ResourceLoader"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_71 .. :try_end_7b} :catchall_83

    if-eqz v8, :cond_34

    :try_start_7d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_34

    :catch_81
    move-exception v3

    goto :goto_34

    :catchall_83
    move-exception v10

    if-eqz v8, :cond_89

    :try_start_86
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    :cond_89
    :goto_89
    throw v10

    :catch_8a
    move-exception v3

    goto :goto_89
.end method


# virtual methods
.method public finish()V
    .registers 1

    return-void
.end method

.method public getBitmapInfo(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lmiui/maml/ResourceManager$BitmapInfo;
    .registers 13

    const/4 v9, 0x0

    const-string/jumbo v6, "images"

    invoke-direct {p0, p1, v6}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_48

    const-string/jumbo v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TRY AGAIN to get getPathForLanguage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "images"

    invoke-direct {p0, p1, v6}, Lmiui/maml/ResourceLoader;->getPathForLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_48

    const-string/jumbo v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fail to get getPathForLanguage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_48
    invoke-virtual {p0, v5}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_89

    const-string/jumbo v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TRY AGAIN to get InputStream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_89

    const-string/jumbo v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fail to get InputStream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_89
    :try_start_89
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v3, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_d6

    const-string/jumbo v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TRY AGAIN to decode bitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_e3

    const-string/jumbo v6, "ResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fail to decode bitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/lang/OutOfMemoryError; {:try_start_89 .. :try_end_ce} :catch_eb
    .catchall {:try_start_89 .. :try_end_ce} :catchall_fe

    if-eqz v3, :cond_d3

    :try_start_d0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    :cond_d3
    :goto_d3
    return-object v9

    :catch_d4
    move-exception v1

    goto :goto_d3

    :cond_d6
    :try_start_d6
    new-instance v6, Lmiui/maml/ResourceManager$BitmapInfo;

    invoke-direct {v6, v0, v4}, Lmiui/maml/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_db
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d6 .. :try_end_db} :catch_eb
    .catchall {:try_start_d6 .. :try_end_db} :catchall_fe

    if-eqz v3, :cond_e0

    :try_start_dd
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    :cond_e0
    :goto_e0
    return-object v6

    :catch_e1
    move-exception v1

    goto :goto_e0

    :cond_e3
    if-eqz v3, :cond_e8

    :try_start_e5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e9

    :cond_e8
    :goto_e8
    return-object v9

    :catch_e9
    move-exception v1

    goto :goto_e8

    :catch_eb
    move-exception v2

    :try_start_ec
    const-string/jumbo v6, "ResourceLoader"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_ec .. :try_end_f6} :catchall_fe

    if-eqz v3, :cond_e8

    :try_start_f8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_fc

    goto :goto_e8

    :catch_fc
    move-exception v1

    goto :goto_e8

    :catchall_fe
    move-exception v6

    if-eqz v3, :cond_104

    :try_start_101
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    :cond_104
    :goto_104
    throw v6

    :catch_105
    move-exception v1

    goto :goto_104
.end method

.method public getConfigRoot()Lorg/w3c/dom/Element;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mConfigName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .registers 15

    const/4 v12, 0x0

    const/4 v9, 0x1

    new-array v6, v9, [J

    invoke-virtual {p0, p1, v6}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_b

    return-object v12

    :cond_b
    const/high16 v0, 0x10000

    const/high16 v9, 0x10000

    :try_start_f
    new-array v1, v9, [B

    new-instance v5, Landroid/os/MemoryFile;

    const/4 v9, 0x0

    aget-wide v10, v6, v9

    long-to-int v9, v10

    const/4 v10, 0x0

    invoke-direct {v5, v10, v9}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_1d
    const/4 v9, 0x0

    const/high16 v10, 0x10000

    invoke-virtual {v4, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_2c

    const/4 v9, 0x0

    invoke-virtual {v5, v1, v9, v8, v7}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    add-int/2addr v8, v7

    goto :goto_1d

    :cond_2c
    invoke-virtual {v5}, Landroid/os/MemoryFile;->length()I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2f} :catch_55
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_2f} :catch_42
    .catchall {:try_start_f .. :try_end_2f} :catchall_68

    move-result v9

    if-lez v9, :cond_3a

    if-eqz v4, :cond_37

    :try_start_34
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return-object v5

    :catch_38
    move-exception v2

    goto :goto_37

    :cond_3a
    if-eqz v4, :cond_3f

    :try_start_3c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    return-object v12

    :catch_40
    move-exception v2

    goto :goto_3f

    :catch_42
    move-exception v3

    :try_start_43
    const-string/jumbo v9, "ResourceLoader"

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_68

    if-eqz v4, :cond_3f

    :try_start_4f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_3f

    :catch_53
    move-exception v2

    goto :goto_3f

    :catch_55
    move-exception v2

    :try_start_56
    const-string/jumbo v9, "ResourceLoader"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_68

    if-eqz v4, :cond_3f

    :try_start_62
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_3f

    :catch_66
    move-exception v2

    goto :goto_3f

    :catchall_68
    move-exception v9

    if-eqz v4, :cond_6e

    :try_start_6b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    :cond_6e
    :goto_6e
    throw v9

    :catch_6f
    move-exception v2

    goto :goto_6e
.end method

.method public final getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ResourceLoader;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .registers 2

    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mManifestName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmiui/maml/ResourceLoader;->getXmlRoot(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getPathForLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x0

    :cond_16
    if-nez v0, :cond_2f

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/ResourceLoader;->resourceExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v0, 0x0

    :cond_2f
    if-eqz v0, :cond_32

    :goto_31
    return-object v0

    :cond_32
    move-object v0, p1

    goto :goto_31
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public abstract resourceExists(Ljava/lang/String;)Z
.end method

.method public setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/ResourceLoader;->mLanguageCountrySuffix:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iput-object v2, p0, Lmiui/maml/ResourceLoader;->mLanguageSuffix:Ljava/lang/String;

    :cond_1b
    iput-object p1, p0, Lmiui/maml/ResourceLoader;->mLocale:Ljava/util/Locale;

    return-object p0
.end method
