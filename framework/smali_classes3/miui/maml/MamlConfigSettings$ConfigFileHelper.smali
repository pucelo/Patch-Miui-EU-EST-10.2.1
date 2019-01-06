.class Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
.super Ljava/lang/Object;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigFileHelper"
.end annotation


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field protected mConfigFile:Lmiui/maml/util/ConfigFile;

.field private mPath:Ljava/lang/String;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_14

    :try_start_b
    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_25

    :cond_14
    :goto_14
    new-instance v1, Lmiui/maml/util/ConfigFile;

    invoke-direct {v1}, Lmiui/maml/util/ConfigFile;-><init>()V

    iput-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/util/ConfigFile;->load(Ljava/lang/String;)Z

    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9
.end method

.method public containsFile(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public getConfigFile()Lmiui/maml/util/ConfigFile;
    .registers 2

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    return-object v0
.end method

.method public getConfigFileStream(Ljava/util/Locale;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    const-string/jumbo v1, "config.xml"

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    const-string/jumbo v1, "config.xml"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_27

    return-object v0

    :cond_27
    const-string/jumbo v1, "config.xml"

    invoke-virtual {p0, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getConfigPath()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    if-nez v1, :cond_6

    return-object v2

    :cond_6
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_f

    return-object v2

    :cond_f
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public save()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lmiui/maml/util/ConfigFile;->save(Landroid/content/Context;)Z

    return-void
.end method
