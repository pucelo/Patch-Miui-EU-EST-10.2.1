.class public Landroid/app/AliasActivity;
.super Landroid/app/Activity;
.source "AliasActivity.java"


# instance fields
.field public final ALIAS_META_DATA:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, "android.app.alias"

    iput-object v0, p0, Landroid/app/AliasActivity;->ALIAS_META_DATA:Ljava/lang/String;

    return-void
.end method

.method private parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v2, 0x0

    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_10

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    :cond_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "alias"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Alias meta-data must start with <alias> tag; found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    :cond_4a
    :goto_4a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v7, :cond_7a

    if-ne v5, v8, :cond_58

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v4, :cond_7a

    :cond_58
    if-eq v5, v8, :cond_4a

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "intent"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-virtual {p0}, Landroid/app/AliasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1, v0}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v1

    if-nez v2, :cond_4a

    move-object v2, v1

    goto :goto_4a

    :cond_76
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4a

    :cond_7a
    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/AliasActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.app.alias"

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    if-nez v5, :cond_39

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Alias requires a meta-data field android.app.alias"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_28} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_28} :catch_48
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_28} :catch_5e
    .catchall {:try_start_4 .. :try_end_28} :catchall_32

    :catch_28
    move-exception v1

    :try_start_29
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Error parsing alias"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v6

    if-eqz v5, :cond_38

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_38
    throw v6

    :cond_39
    :try_start_39
    invoke-direct {p0, v5}, Landroid/app/AliasActivity;->parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_52

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "No <intent> tag found in alias description"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_48} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_48} :catch_48
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_48} :catch_5e
    .catchall {:try_start_39 .. :try_end_48} :catchall_32

    :catch_48
    move-exception v3

    :try_start_49
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Error parsing alias"

    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_32

    :cond_52
    :try_start_52
    invoke-virtual {p0, v4}, Landroid/app/AliasActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/AliasActivity;->finish()V
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_58} :catch_28
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_58} :catch_48
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_58} :catch_5e
    .catchall {:try_start_52 .. :try_end_58} :catchall_32

    if-eqz v5, :cond_5d

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5d
    return-void

    :catch_5e
    move-exception v2

    :try_start_5f
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Error parsing alias"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_32
.end method
