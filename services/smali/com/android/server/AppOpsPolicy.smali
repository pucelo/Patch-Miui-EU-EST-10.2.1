.class public Lcom/android/server/AppOpsPolicy;
.super Ljava/lang/Object;
.source "AppOpsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsPolicy$PolicyOp;,
        Lcom/android/server/AppOpsPolicy$PolicyPkg;
    }
.end annotation


# static fields
.field public static final CONTROL_NOSHOW:I = 0x1

.field public static final CONTROL_SHOW:I = 0x0

.field public static final CONTROL_UNKNOWN:I = 0x2

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AppOpsPolicy"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFile:Ljava/io/File;

.field mPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsPolicy$PolicyPkg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    iput-object p2, p0, Lcom/android/server/AppOpsPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getAppType(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_24

    :try_start_6
    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_10} :catch_1d

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_1c

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_20

    const-string/jumbo v1, "system-app"

    :cond_1c
    :goto_1c
    return-object v1

    :catch_1d
    move-exception v2

    const/4 v0, 0x0

    goto :goto_11

    :cond_20
    const-string/jumbo v1, "user-app"

    goto :goto_1c

    :cond_24
    const-string/jumbo v3, "AppOpsPolicy"

    const-string/jumbo v4, "Context is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4c

    if-ne v2, v6, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4c

    :cond_14
    if-eq v2, v6, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsPolicy;->readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    :cond_2a
    const-string/jumbo v3, "AppOpsPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown element under <application>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    :cond_4c
    return-void
.end method

.method private readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v3, "user-app"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "system-app"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_16

    return-void

    :cond_16
    const/4 v0, 0x0

    const-string/jumbo v3, "show"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/AppOpsPolicy;->stringToControl(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    if-nez v1, :cond_37

    new-instance v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    invoke-direct {v1, p2, v0, v2, p2}, Lcom/android/server/AppOpsPolicy$PolicyPkg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    return-void

    :cond_37
    const-string/jumbo v3, "AppOpsPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Duplicate policy found for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    iput v2, v1, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    goto :goto_36
.end method

.method private readOpPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/AppOpsPolicy$PolicyPkg;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_4

    return-void

    :cond_4
    const-string/jumbo v2, "name"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    const-string/jumbo v2, "AppOpsPolicy"

    const-string/jumbo v3, "Op name is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const/4 v0, -0x1

    const-string/jumbo v2, "AppOpsPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown Op: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readPkgPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v10, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    return-void

    :cond_c
    const-string/jumbo v9, "type"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    return-void

    :cond_16
    const/4 v2, 0x0

    const-string/jumbo v9, "show"

    invoke-interface {p1, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/AppOpsPolicy;->stringToControl(Ljava/lang/String;)I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    if-nez v5, :cond_77

    new-instance v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    invoke-direct {v5, v4, v2, v6, v0}, Lcom/android/server/AppOpsPolicy$PolicyPkg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_52
    :goto_52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c4

    if-ne v8, v12, :cond_61

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_c4

    :cond_61
    if-eq v8, v12, :cond_52

    const/4 v9, 0x4

    if-eq v8, v9, :cond_52

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "op"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a2

    invoke-direct {p0, p1, v5}, Lcom/android/server/AppOpsPolicy;->readOpPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/AppOpsPolicy$PolicyPkg;)V

    goto :goto_52

    :cond_77
    const-string/jumbo v9, "AppOpsPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Duplicate policy found for package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " of type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput v9, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    iput v6, v5, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    goto :goto_4e

    :cond_a2
    const-string/jumbo v9, "AppOpsPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <pkg>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_52

    :cond_c4
    return-void
.end method

.method public static stringToControl(Ljava/lang/String;)I
    .registers 2

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    const-string/jumbo v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method debugPoilcy()V
    .registers 7

    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    :goto_27
    invoke-virtual {v4}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    invoke-virtual {v4, v0}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyOp;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_36
    return-void
.end method

.method public getDefualtMode(ILjava/lang/String;)I
    .registers 11

    const/4 v7, 0x2

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    if-nez v5, :cond_7

    return v1

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsPolicy;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    move-object v0, v4

    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    if-eqz v3, :cond_1e

    iget v5, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    if-eq v5, v7, :cond_1e

    iget v1, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    :cond_1e
    move-object v0, p2

    if-eqz v4, :cond_39

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_39
    iget-object v5, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    if-eqz v3, :cond_57

    iget v5, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    if-eq v5, v7, :cond_49

    iget v1, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->mode:I

    :cond_49
    invoke-virtual {v3, p1}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsPolicy$PolicyOp;

    if-eqz v2, :cond_57

    iget v5, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    if-eq v5, v7, :cond_57

    iget v1, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->mode:I

    :cond_57
    return v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .registers 12

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x2

    iget-object v6, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    if-nez v6, :cond_8

    return v0

    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsPolicy;->getAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    move-object v1, v5

    iget-object v6, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    if-eqz v3, :cond_1f

    iget v6, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    if-eq v6, v8, :cond_1f

    iget v4, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    :cond_1f
    move-object v1, p2

    if-eqz v5, :cond_3a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3a
    iget-object v6, p0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;

    if-eqz v3, :cond_58

    iget v6, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    if-eq v6, v8, :cond_4a

    iget v4, v3, Lcom/android/server/AppOpsPolicy$PolicyPkg;->show:I

    :cond_4a
    invoke-virtual {v3, p1}, Lcom/android/server/AppOpsPolicy$PolicyPkg;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppOpsPolicy$PolicyOp;

    if-eqz v2, :cond_58

    iget v6, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    if-eq v6, v8, :cond_58

    iget v4, v2, Lcom/android/server/AppOpsPolicy$PolicyOp;->show:I

    :cond_58
    const/4 v6, 0x1

    if-ne v4, v6, :cond_5c

    const/4 v0, 0x0

    :cond_5c
    return v0
.end method

.method readPolicy()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    monitor-enter v15

    :try_start_5
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_5d
    .catchall {:try_start_5 .. :try_end_e} :catchall_20b

    const/4 v11, 0x0

    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const/4 v14, 0x0

    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v11, 0x1

    :cond_18
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_22

    const/4 v14, 0x1

    if-ne v13, v14, :cond_18

    :cond_22
    const/4 v14, 0x2

    if-eq v13, v14, :cond_8d

    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "no start tag found"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_30} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_30} :catch_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_30} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_30} :catch_157
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_30} :catch_1c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_30} :catch_198
    .catchall {:try_start_f .. :try_end_30} :catchall_1fb

    :catch_30
    move-exception v3

    :try_start_31
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_1fb

    if-nez v11, :cond_58

    :try_start_51
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_20b

    :cond_58
    :try_start_58
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_1f8
    .catchall {:try_start_58 .. :try_end_5b} :catchall_20b

    :goto_5b
    monitor-exit v15

    return-void

    :catch_5d
    move-exception v1

    :try_start_5e
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "App ops policy file ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsPolicy;->mFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ") not found; Skipping."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_5e .. :try_end_8b} :catchall_20b

    monitor-exit v15

    return-void

    :cond_8d
    :try_start_8d
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    :cond_91
    :goto_91
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_187

    const/4 v14, 0x3

    if-ne v13, v14, :cond_a1

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_187

    :cond_a1
    const/4 v14, 0x3

    if-eq v13, v14, :cond_91

    const/4 v14, 0x4

    if-eq v13, v14, :cond_91

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v14, "user-app"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_bd

    const-string/jumbo v14, "system-app"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f3

    :cond_bd
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/server/AppOpsPolicy;->readDefaultPolicy(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/IllegalStateException; {:try_start_8d .. :try_end_c2} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_8d .. :try_end_c2} :catch_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_c2} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_c2} :catch_157
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_c2} :catch_1c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8d .. :try_end_c2} :catch_198
    .catchall {:try_start_8d .. :try_end_c2} :catchall_1fb

    goto :goto_91

    :catch_c3
    move-exception v5

    :try_start_c4
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_c4 .. :try_end_e2} :catchall_1fb

    if-nez v11, :cond_eb

    :try_start_e4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_eb
    .catchall {:try_start_e4 .. :try_end_eb} :catchall_20b

    :cond_eb
    :try_start_eb
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_f0
    .catchall {:try_start_eb .. :try_end_ee} :catchall_20b

    goto/16 :goto_5b

    :catch_f0
    move-exception v2

    goto/16 :goto_5b

    :cond_f3
    :try_start_f3
    const-string/jumbo v14, "application"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_132

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/AppOpsPolicy;->readApplicationPolicy(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_101
    .catch Ljava/lang/IllegalStateException; {:try_start_f3 .. :try_end_101} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_f3 .. :try_end_101} :catch_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_101} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f3 .. :try_end_101} :catch_157
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_101} :catch_1c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f3 .. :try_end_101} :catch_198
    .catchall {:try_start_f3 .. :try_end_101} :catchall_1fb

    goto :goto_91

    :catch_102
    move-exception v6

    :try_start_103
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_103 .. :try_end_121} :catchall_1fb

    if-nez v11, :cond_12a

    :try_start_123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_12a
    .catchall {:try_start_123 .. :try_end_12a} :catchall_20b

    :cond_12a
    :try_start_12a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_12f
    .catchall {:try_start_12a .. :try_end_12d} :catchall_20b

    goto/16 :goto_5b

    :catch_12f
    move-exception v2

    goto/16 :goto_5b

    :cond_132
    :try_start_132
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown element under <appops-policy>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_155
    .catch Ljava/lang/IllegalStateException; {:try_start_132 .. :try_end_155} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_132 .. :try_end_155} :catch_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_132 .. :try_end_155} :catch_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_132 .. :try_end_155} :catch_157
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_155} :catch_1c8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_132 .. :try_end_155} :catch_198
    .catchall {:try_start_132 .. :try_end_155} :catchall_1fb

    goto/16 :goto_91

    :catch_157
    move-exception v7

    :try_start_158
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catchall {:try_start_158 .. :try_end_176} :catchall_1fb

    if-nez v11, :cond_17f

    :try_start_178
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_17f
    .catchall {:try_start_178 .. :try_end_17f} :catchall_20b

    :cond_17f
    :try_start_17f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_17f .. :try_end_182} :catch_184
    .catchall {:try_start_17f .. :try_end_182} :catchall_20b

    goto/16 :goto_5b

    :catch_184
    move-exception v2

    goto/16 :goto_5b

    :cond_187
    if-nez v11, :cond_190

    :try_start_189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_190
    .catchall {:try_start_189 .. :try_end_190} :catchall_20b

    :cond_190
    :try_start_190
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_195
    .catchall {:try_start_190 .. :try_end_193} :catchall_20b

    goto/16 :goto_5b

    :catch_195
    move-exception v2

    goto/16 :goto_5b

    :catch_198
    move-exception v4

    :try_start_199
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b7
    .catchall {:try_start_199 .. :try_end_1b7} :catchall_1fb

    if-nez v11, :cond_1c0

    :try_start_1b9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_1c0
    .catchall {:try_start_1b9 .. :try_end_1c0} :catchall_20b

    :cond_1c0
    :try_start_1c0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1c3
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1c3} :catch_1c5
    .catchall {:try_start_1c0 .. :try_end_1c3} :catchall_20b

    goto/16 :goto_5b

    :catch_1c5
    move-exception v2

    goto/16 :goto_5b

    :catch_1c8
    move-exception v2

    :try_start_1c9
    const-string/jumbo v14, "AppOpsPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e7
    .catchall {:try_start_1c9 .. :try_end_1e7} :catchall_1fb

    if-nez v11, :cond_1f0

    :try_start_1e9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V
    :try_end_1f0
    .catchall {:try_start_1e9 .. :try_end_1f0} :catchall_20b

    :cond_1f0
    :try_start_1f0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1f3} :catch_1f5
    .catchall {:try_start_1f0 .. :try_end_1f3} :catchall_20b

    goto/16 :goto_5b

    :catch_1f5
    move-exception v2

    goto/16 :goto_5b

    :catch_1f8
    move-exception v2

    goto/16 :goto_5b

    :catchall_1fb
    move-exception v14

    if-nez v11, :cond_207

    :try_start_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsPolicy;->mPolicy:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V
    :try_end_207
    .catchall {:try_start_1fe .. :try_end_207} :catchall_20b

    :cond_207
    :try_start_207
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_20a} :catch_20e
    .catchall {:try_start_207 .. :try_end_20a} :catchall_20b

    :goto_20a
    :try_start_20a
    throw v14
    :try_end_20b
    .catchall {:try_start_20a .. :try_end_20b} :catchall_20b

    :catchall_20b
    move-exception v14

    monitor-exit v15

    throw v14

    :catch_20e
    move-exception v2

    goto :goto_20a
.end method
