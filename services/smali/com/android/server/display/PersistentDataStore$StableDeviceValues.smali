.class final Lcom/android/server/display/PersistentDataStore$StableDeviceValues;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StableDeviceValues"
.end annotation


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/PersistentDataStore$StableDeviceValues;)Landroid/graphics/Point;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/PersistentDataStore$StableDeviceValues;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;-><init>()V

    return-void
.end method

.method private getDisplaySize()Landroid/graphics/Point;
    .registers 4

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    iget v2, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static loadIntValue(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "StableDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "StableDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stable-display-width"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->loadIntValue(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    goto :goto_4

    :cond_1e
    const-string/jumbo v2, "stable-display-height"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->loadIntValue(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    goto :goto_4

    :cond_2e
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    if-lez v0, :cond_33

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    if-lez v0, :cond_33

    const-string/jumbo v0, "stable-display-width"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "stable-display-width"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "stable-display-height"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "stable-display-height"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_33
    return-void
.end method

.method public setDisplaySize(Landroid/graphics/Point;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_16

    :cond_c
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method
