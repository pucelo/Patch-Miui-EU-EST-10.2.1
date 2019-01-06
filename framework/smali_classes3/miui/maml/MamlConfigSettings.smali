.class public Lmiui/maml/MamlConfigSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MamlConfigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/MamlConfigSettings$AppPickerItem;,
        Lmiui/maml/MamlConfigSettings$CheckboxItem;,
        Lmiui/maml/MamlConfigSettings$ConfigFileHelper;,
        Lmiui/maml/MamlConfigSettings$ImagePickerItem;,
        Lmiui/maml/MamlConfigSettings$Item;,
        Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;,
        Lmiui/maml/MamlConfigSettings$NumberChoiceItem;,
        Lmiui/maml/MamlConfigSettings$NumberInputItem;,
        Lmiui/maml/MamlConfigSettings$PickerItem;,
        Lmiui/maml/MamlConfigSettings$StringChoiceItem;,
        Lmiui/maml/MamlConfigSettings$StringInputItem;,
        Lmiui/maml/MamlConfigSettings$ValueChoiceItem;,
        Lmiui/maml/MamlConfigSettings$VariableItem;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "config.xml"

.field public static final EXTRA_MAML_CODE:Ljava/lang/String; = "maml_code"

.field public static final EXTRA_MAML_ID:Ljava/lang/String; = "maml_id"

.field public static final EXTRA_MAML_PATH:Ljava/lang/String; = "maml_path"

.field private static final LOG_TAG:Ljava/lang/String; = "MamlConfigSettings"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"


# instance fields
.field private mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

.field private mNextRequestCode:I

.field private mPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/MamlConfigSettings$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCodeObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/MamlConfigSettings;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/maml/MamlConfigSettings;)I
    .registers 2

    invoke-direct {p0}, Lmiui/maml/MamlConfigSettings;->getNextRequestCode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/maml/MamlConfigSettings;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings;->createItem(Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/MamlConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/maml/MamlConfigSettings;ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/MamlConfigSettings;->putRequestCodeObj(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    const/16 v0, 0x64

    iput v0, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    return-void
.end method

.method public static containsConfig(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/maml/MamlConfigSettings;->containsConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static containsConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return v4

    :cond_4
    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_32
    .catchall {:try_start_5 .. :try_end_a} :catchall_3e

    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_14

    const-string/jumbo p1, ""

    :cond_14
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "config.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_26} :catch_4a
    .catchall {:try_start_a .. :try_end_26} :catchall_47

    move-result-object v5

    if-eqz v5, :cond_2a

    const/4 v4, 0x1

    :cond_2a
    if-eqz v3, :cond_2f

    :try_start_2c
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return v4

    :catch_30
    move-exception v0

    goto :goto_2f

    :catch_32
    move-exception v0

    :goto_33
    :try_start_33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3e

    if-eqz v2, :cond_3b

    :try_start_38
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    :cond_3b
    :goto_3b
    return v4

    :catch_3c
    move-exception v0

    goto :goto_3b

    :catchall_3e
    move-exception v4

    :goto_3f
    if-eqz v2, :cond_44

    :try_start_41
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    throw v4

    :catch_45
    move-exception v0

    goto :goto_44

    :catchall_47
    move-exception v4

    move-object v2, v3

    goto :goto_3f

    :catch_4a
    move-exception v0

    move-object v2, v3

    goto :goto_33
.end method

.method public static containsLockstyleConfig()Z
    .registers 2

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const-string/jumbo v1, "config.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createConfigFileHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    .registers 6

    const-string/jumbo v0, "lockstyle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0, p1}, Lmiui/maml/MamlConfigSettings;->getComponentId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_13
    new-instance v0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0

    :cond_1d
    new-instance v0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .registers 6

    const/4 v2, 0x0

    if-nez p2, :cond_4

    return-void

    :cond_4
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const-string/jumbo v1, "text"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "summary"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lmiui/maml/MamlConfigSettings$2;

    invoke-direct {v1, p0, v0}, Lmiui/maml/MamlConfigSettings$2;-><init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceCategory;)V

    invoke-static {p2, v2, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method private createItem(Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;
    .registers 4

    const/4 v1, 0x0

    const-string/jumbo v0, "StringInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lmiui/maml/MamlConfigSettings$StringInputItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$StringInputItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$StringInputItem;)V

    return-object v0

    :cond_10
    const-string/jumbo v0, "CheckBox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lmiui/maml/MamlConfigSettings$CheckboxItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$CheckboxItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$CheckboxItem;)V

    return-object v0

    :cond_1f
    const-string/jumbo v0, "NumberInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lmiui/maml/MamlConfigSettings$NumberInputItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$NumberInputItem;)V

    return-object v0

    :cond_2e
    const-string/jumbo v0, "StringChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Lmiui/maml/MamlConfigSettings$StringChoiceItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$StringChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$StringChoiceItem;)V

    return-object v0

    :cond_3d
    const-string/jumbo v0, "NumberChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$NumberChoiceItem;)V

    return-object v0

    :cond_4c
    const-string/jumbo v0, "AppPicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Lmiui/maml/MamlConfigSettings$AppPickerItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$AppPickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$AppPickerItem;)V

    return-object v0

    :cond_5b
    const-string/jumbo v0, "ImagePicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Lmiui/maml/MamlConfigSettings$ImagePickerItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$ImagePickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$ImagePickerItem;)V

    return-object v0

    :cond_6a
    return-object v1
.end method

.method private createPreferenceScreen()V
    .registers 13

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0, v9}, Lmiui/maml/MamlConfigSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_11
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iget-object v10, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFileStream(Ljava/util/Locale;)Ljava/io/InputStream;
    :try_end_24
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_24} :catch_8d
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_24} :catch_81
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_24} :catch_75
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_69
    .catchall {:try_start_11 .. :try_end_24} :catchall_99

    move-result-object v7

    if-nez v7, :cond_2f

    if-eqz v7, :cond_2c

    :try_start_29
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception v3

    goto :goto_2c

    :cond_2f
    :try_start_2f
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_36
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2f .. :try_end_36} :catch_8d
    .catch Lorg/xml/sax/SAXException; {:try_start_2f .. :try_end_36} :catch_81
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_75
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_69
    .catchall {:try_start_2f .. :try_end_36} :catchall_99

    move-result-object v8

    if-nez v8, :cond_41

    if-eqz v7, :cond_3e

    :try_start_3b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v3

    goto :goto_3e

    :cond_41
    :try_start_41
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Config"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_41 .. :try_end_4b} :catch_8d
    .catch Lorg/xml/sax/SAXException; {:try_start_41 .. :try_end_4b} :catch_81
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4b} :catch_75
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4b} :catch_69
    .catchall {:try_start_41 .. :try_end_4b} :catchall_99

    move-result v10

    if-nez v10, :cond_56

    if-eqz v7, :cond_53

    :try_start_50
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    return-void

    :catch_54
    move-exception v3

    goto :goto_53

    :cond_56
    :try_start_56
    const-string/jumbo v10, "Group"

    new-instance v11, Lmiui/maml/MamlConfigSettings$1;

    invoke-direct {v11, p0, v9}, Lmiui/maml/MamlConfigSettings$1;-><init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;)V

    invoke-static {v8, v10, v11}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V
    :try_end_61
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_56 .. :try_end_61} :catch_8d
    .catch Lorg/xml/sax/SAXException; {:try_start_56 .. :try_end_61} :catch_81
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_61} :catch_75
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_61} :catch_69
    .catchall {:try_start_56 .. :try_end_61} :catchall_99

    if-eqz v7, :cond_66

    :try_start_63
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    :cond_66
    :goto_66
    return-void

    :catch_67
    move-exception v3

    goto :goto_66

    :catch_69
    move-exception v4

    :try_start_6a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_99

    if-eqz v7, :cond_66

    :try_start_6f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_66

    :catch_73
    move-exception v3

    goto :goto_66

    :catch_75
    move-exception v3

    :try_start_76
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_99

    if-eqz v7, :cond_66

    :try_start_7b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_66

    :catch_7f
    move-exception v3

    goto :goto_66

    :catch_81
    move-exception v6

    :try_start_82
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_99

    if-eqz v7, :cond_66

    :try_start_87
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_66

    :catch_8b
    move-exception v3

    goto :goto_66

    :catch_8d
    move-exception v5

    :try_start_8e
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_99

    if-eqz v7, :cond_66

    :try_start_93
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_66

    :catch_97
    move-exception v3

    goto :goto_66

    :catchall_99
    move-exception v10

    if-eqz v7, :cond_9f

    :try_start_9c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    :cond_9f
    :goto_9f
    throw v10

    :catch_a0
    move-exception v3

    goto :goto_9f
.end method

.method public static getComponentId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "local_id"

    aput-object v1, v2, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "content://com.android.thememanager.provider/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3c
    return-object v3
.end method

.method private getNextRequestCode()I
    .registers 3

    iget v0, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    return v0
.end method

.method private getRequestCodeObj(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private putRequestCodeObj(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings;->getRequestCodeObj(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    instance-of v2, v1, Lmiui/maml/MamlConfigSettings$PickerItem;

    if-eqz v2, :cond_18

    move-object v0, v1

    check-cast v0, Lmiui/maml/MamlConfigSettings$PickerItem;

    invoke-virtual {v0, p2, p3}, Lmiui/maml/MamlConfigSettings$PickerItem;->onActivityResult(ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    :cond_18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "maml_code"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "maml_path"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "maml_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v2, v1}, Lmiui/maml/MamlConfigSettings;->createConfigFileHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    const-string/jumbo v4, "config.xml"

    invoke-virtual {v3, v4}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->containsFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->finish()V

    return-void

    :cond_39
    const v3, 0x11030006

    invoke-virtual {p0, v3}, Lmiui/maml/MamlConfigSettings;->setContentView(I)V

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    const v4, 0x110900b4

    invoke-virtual {v3, v4}, Lmiui/app/ActionBar;->setTitle(I)V

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-direct {p0}, Lmiui/maml/MamlConfigSettings;->createPreferenceScreen()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->close()V

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings;->finish()V

    :cond_c
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/MamlConfigSettings$Item;

    if-nez v0, :cond_10

    const/4 v3, 0x0

    return v3

    :cond_10
    invoke-virtual {v0, p2}, Lmiui/maml/MamlConfigSettings$Item;->OnValueChange(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v3}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    :cond_1b
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/MamlConfigSettings$Item;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$Item;->onClick()Z

    move-result v2

    :goto_12
    return v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method
