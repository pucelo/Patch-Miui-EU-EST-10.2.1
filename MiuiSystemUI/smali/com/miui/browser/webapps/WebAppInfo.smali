.class public Lcom/miui/browser/webapps/WebAppInfo;
.super Ljava/lang/Object;
.source "WebAppInfo.java"


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mIconPath:Ljava/lang/String;

.field public mLabel:Ljava/lang/String;

.field public mTaskAffinity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v3, "icon_path"

    invoke-direct {p0, v3, p1}, Lcom/miui/browser/webapps/WebAppInfo;->getCursorString(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/browser/webapps/WebAppInfo;->mIconPath:Ljava/lang/String;

    const-string/jumbo v3, "label"

    invoke-direct {p0, v3, p1}, Lcom/miui/browser/webapps/WebAppInfo;->getCursorString(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/browser/webapps/WebAppInfo;->mLabel:Ljava/lang/String;

    const-string/jumbo v3, "affinity"

    invoke-direct {p0, v3, p1}, Lcom/miui/browser/webapps/WebAppInfo;->getCursorString(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/browser/webapps/WebAppInfo;->mTaskAffinity:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/browser/webapps/WebAppInfo;->mIconPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "icon_data"

    invoke-direct {p0, v3, p1}, Lcom/miui/browser/webapps/WebAppInfo;->getCursorBlob(Ljava/lang/String;Landroid/database/Cursor;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/browser/webapps/WebAppInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private getCursorBlob(Ljava/lang/String;Landroid/database/Cursor;)[B
    .locals 3

    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getCursorString(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/miui/browser/webapps/WebAppInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/miui/browser/webapps/WebAppInfo;->mIconPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v4

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/browser/webapps/WebAppInfo;->mIconPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v4

    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/browser/webapps/WebAppInfo;->mIconPath:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v4

    :cond_3
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/browser/webapps/WebAppInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v2, p0, Lcom/miui/browser/webapps/WebAppInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v2
.end method
