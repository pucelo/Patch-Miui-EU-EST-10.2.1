.class public Lmiui/maml/LanguageHelper;
.super Ljava/lang/Object;
.source "LanguageHelper.java"


# static fields
.field private static final COMPATIBLE_STRING_ROOT_TAG:Ljava/lang/String; = "strings"

.field private static final DEFAULT_STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "LanguageHelper"

.field private static final STRING_FILE_PATH:Ljava/lang/String; = "strings/strings.xml"

.field private static final STRING_ROOT_TAG:Ljava/lang/String; = "resources"

.field private static final STRING_TAG:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z
    .registers 12

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_24

    const-string/jumbo v6, "strings/strings.xml"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v5

    if-nez v5, :cond_24

    const-string/jumbo v6, "strings/strings.xml"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v5

    :cond_24
    if-nez v5, :cond_39

    const-string/jumbo v6, "strings/strings.xml"

    invoke-virtual {p1, v6}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v5

    if-nez v5, :cond_39

    const-string/jumbo v6, "LanguageHelper"

    const-string/jumbo v7, "no available string resources to load."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_39
    const/4 v1, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    :try_start_3e
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/os/MemoryFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_52
    .catchall {:try_start_3e .. :try_end_49} :catchall_61

    move-result-object v1

    invoke-virtual {v5}, Landroid/os/MemoryFile;->close()V

    invoke-static {v1, p2}, Lmiui/maml/LanguageHelper;->setVariables(Lorg/w3c/dom/Document;Lmiui/maml/data/Variables;)Z

    move-result v6

    return v6

    :catch_52
    move-exception v2

    :try_start_53
    const-string/jumbo v6, "LanguageHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_61

    invoke-virtual {v5}, Landroid/os/MemoryFile;->close()V

    return v8

    :catchall_61
    move-exception v6

    invoke-virtual {v5}, Landroid/os/MemoryFile;->close()V

    throw v6
.end method

.method private static setVariables(Lorg/w3c/dom/Document;Lmiui/maml/data/Variables;)Z
    .registers 12

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-string/jumbo v8, "resources"

    invoke-interface {p0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-gtz v8, :cond_1e

    const-string/jumbo v8, "strings"

    invoke-interface {p0, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-gtz v8, :cond_1d

    return v9

    :cond_1d
    const/4 v4, 0x0

    :cond_1e
    invoke-interface {v3, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string/jumbo v8, "string"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v0, 0x0

    :goto_2c
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v0, v8, :cond_5d

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string/jumbo v8, "name"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_55

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v7

    :goto_45
    const-string/jumbo v8, "\\\\"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_55
    const-string/jumbo v8, "value"

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_45

    :cond_5d
    const/4 v8, 0x1

    return v8
.end method
