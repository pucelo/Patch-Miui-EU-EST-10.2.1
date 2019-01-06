.class public Lcom/android/server/usage/UsageStatsXml;
.super Ljava/lang/Object;
.source "UsageStatsXml.java"


# static fields
.field static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final CURRENT_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsageStatsXml"

.field private static final USAGESTATS_TAG:Ljava/lang/String; = "usagestats"

.field private static final VERSION_ATTR:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBeginTime(Landroid/util/AtomicFile;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseBeginTime(Ljava/io/File;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string/jumbo v2, "-c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "-c"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_1f
    :try_start_1f
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_22} :catch_24

    move-result-wide v2

    return-wide v2

    :catch_24
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3} :catch_1e

    move-result-object v2

    :try_start_4
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v2, p1, p2}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_19

    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_16} :catch_1e

    :goto_16
    return-void

    :catch_17
    move-exception v1

    goto :goto_16

    :catchall_19
    move-exception v3

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1d} :catch_1e

    :goto_1d
    :try_start_1d
    throw v3
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string/jumbo v3, "UsageStatsXml"

    const-string/jumbo v4, "UsageStats Xml"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    :catch_29
    move-exception v1

    goto :goto_1d
.end method

.method static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    :try_start_4
    const-string/jumbo v4, "utf-8"

    invoke-interface {v2, p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo v4, "usagestats"

    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_17} :catch_63

    move-result-object v3

    :try_start_18
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_78

    const-string/jumbo v4, "UsageStatsXml"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_53} :catch_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_53} :catch_63

    :catch_53
    move-exception v0

    :try_start_54
    const-string/jumbo v4, "UsageStatsXml"

    const-string/jumbo v5, "Bad version"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_63} :catch_63

    :catch_63
    move-exception v1

    const-string/jumbo v4, "UsageStatsXml"

    const-string/jumbo v5, "Failed to parse Xml"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :pswitch_73
    :try_start_73
    invoke-static {v2, p1, p2}, Lcom/android/server/usage/UsageStatsXmlV1;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_76} :catch_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_76} :catch_63

    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_73
    .end packed-switch
.end method

.method public static write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    :try_start_4
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXml;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_f
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw v1
.end method

.method static write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v1, "utf-8"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v1, "usagestats"

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "version"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V

    const-string/jumbo v1, "usagestats"

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    return-void
.end method
