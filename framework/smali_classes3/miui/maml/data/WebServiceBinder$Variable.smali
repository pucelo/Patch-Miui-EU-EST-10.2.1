.class public Lmiui/maml/data/WebServiceBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field private mCache:Z

.field private mInnerPath:Ljava/lang/String;

.field public mPath:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    const-string/jumbo v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    :cond_1d
    const-string/jumbo v0, "innerPath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mInnerPath:Ljava/lang/String;

    const-string/jumbo v0, "cache"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    return-void
.end method

.method private final getCacheName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasCache(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    if-eqz v0, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public loadCache(Ljava/lang/String;)V
    .registers 9

    iget v5, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_d

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_e

    :cond_d
    return-void

    :cond_e
    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_10
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1e} :catch_39
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_1e} :catch_2a
    .catchall {:try_start_10 .. :try_end_1e} :catchall_48

    :try_start_1e
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_21} :catch_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_21} :catch_53
    .catchall {:try_start_1e .. :try_end_21} :catchall_4d

    move-result-object v0

    invoke-static {v4}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v3, v4

    :goto_26
    invoke-virtual {p0, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    return-void

    :catch_2a
    move-exception v2

    :goto_2b
    :try_start_2b
    const-string/jumbo v5, "WebServiceBinder"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_48

    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_26

    :catch_39
    move-exception v1

    :goto_3a
    :try_start_3a
    const-string/jumbo v5, "WebServiceBinder"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_48

    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_26

    :catchall_48
    move-exception v5

    :goto_49
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v5

    :catchall_4d
    move-exception v5

    move-object v3, v4

    goto :goto_49

    :catch_50
    move-exception v1

    move-object v3, v4

    goto :goto_3a

    :catch_53
    move-exception v2

    move-object v3, v4

    goto :goto_2b
.end method

.method public saveCache(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 14

    const/4 v10, -0x1

    invoke-direct {p0, p2}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_53

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_17

    const/16 v9, 0x1ed

    invoke-static {v2, v9, v10, v10}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    :cond_17
    :try_start_17
    new-instance v6, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    if-eqz p1, :cond_53

    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v7, v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_2b} :catch_45
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_58
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_2b} :catch_67

    const/high16 v0, 0x10000

    const/high16 v9, 0x10000

    :try_start_2f
    new-array v1, v9, [B

    const/4 v8, -0x1

    :goto_32
    const/4 v9, 0x0

    const/high16 v10, 0x10000

    invoke-virtual {p1, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_54

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_40

    goto :goto_32

    :catchall_40
    move-exception v9

    :try_start_41
    invoke-static {v7}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v9
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_45} :catch_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_58
    .catch Ljava/lang/OutOfMemoryError; {:try_start_41 .. :try_end_45} :catch_67

    :catch_45
    move-exception v3

    const-string/jumbo v9, "WebServiceBinder"

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_53
    :goto_53
    return-void

    :cond_54
    :try_start_54
    invoke-static {v7}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_57} :catch_45
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54 .. :try_end_57} :catch_67

    goto :goto_53

    :catch_58
    move-exception v4

    const-string/jumbo v9, "WebServiceBinder"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    :catch_67
    move-exception v5

    const-string/jumbo v9, "WebServiceBinder"

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_53
.end method

.method public set(Ljava/lang/Object;)V
    .registers 19

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/data/WebServiceBinder$Variable;->isArray()Z

    move-result v16

    if-eqz v16, :cond_b4

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v16, v0

    if-eqz v16, :cond_b4

    move-object/from16 v2, p1

    check-cast v2, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/data/IndexedVariable;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/data/IndexedVariable;->getIndex()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v3, 0x0

    const/4 v9, 0x0

    instance-of v0, v12, [D

    move/from16 v16, v0

    if-eqz v16, :cond_89

    check-cast v12, [D

    array-length v3, v12

    const/4 v9, 0x1

    :cond_36
    :goto_36
    const/4 v8, 0x0

    :goto_37
    if-ge v8, v3, :cond_b7

    const/4 v13, 0x0

    :try_start_3a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_46

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_45} :catch_b8

    move-result-object v13

    :cond_46
    :goto_46
    const-wide/16 v4, 0x0

    const/4 v14, 0x0

    if-eqz v13, :cond_79

    sget-object v16, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, v16

    if-eq v13, v0, :cond_95

    instance-of v0, v13, Lorg/json/JSONObject;

    move/from16 v16, v0

    if-eqz v16, :cond_95

    new-instance v10, Lmiui/maml/util/JSONPath;

    check-cast v13, Lorg/json/JSONObject;

    invoke-direct {v10, v13}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder$Variable;->mInnerPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v0, v11, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_79

    move-object v14, v11

    check-cast v14, Ljava/lang/String;

    if-eqz v9, :cond_79

    :try_start_75
    invoke-static {v14}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_78} :catch_93

    move-result-wide v4

    :cond_79
    :goto_79
    if-eqz v9, :cond_a8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v4, v5}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    :goto_86
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_89
    instance-of v0, v12, [Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_36

    check-cast v12, [Ljava/lang/String;

    array-length v3, v12

    goto :goto_36

    :catch_93
    move-exception v6

    goto :goto_79

    :cond_95
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_79

    move-object/from16 v14, p1

    check-cast v14, Ljava/lang/String;

    if-eqz v9, :cond_79

    :try_start_a1
    invoke-static {v14}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_a4} :catch_a6

    move-result-wide v4

    goto :goto_79

    :catch_a6
    move-exception v6

    goto :goto_79

    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v14}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_86

    :cond_b4
    invoke-super/range {p0 .. p1}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    :cond_b7
    return-void

    :catch_b8
    move-exception v7

    goto :goto_46
.end method
