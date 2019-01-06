.class public Landroid/content/ClipData$Item;
.super Ljava/lang/Object;
.source "ClipData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final mHtmlText:Ljava/lang/String;

.field final mIntent:Landroid/content/Intent;

.field final mText:Ljava/lang/CharSequence;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ClipData$Item;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iget-object v0, p1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object p1, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_10

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Plain text must be supplied if HTML text is supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p1, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    iput-object p4, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .registers 28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18c

    const/16 v20, 0x0

    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    const-string/jumbo v23, "text/*"

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_1a} :catch_1c4

    move-result-object v20

    :goto_1b
    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v20, :cond_4e

    const/16 v21, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    :goto_26
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4e

    aget-object v19, v20, v21

    const-string/jumbo v23, "text/html"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3f

    const/4 v11, 0x1

    :cond_3c
    :goto_3c
    add-int/lit8 v21, v21, 0x1

    goto :goto_26

    :cond_3f
    const-string/jumbo v23, "text/"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3c

    const/4 v12, 0x1

    goto :goto_3c

    :cond_4e
    if-nez v11, :cond_52

    if-eqz v12, :cond_b1

    :cond_52
    const/16 v17, 0x0

    :try_start_54
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    if-eqz v11, :cond_e6

    const-string/jumbo v21, "text/html"

    :goto_63
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v17

    new-instance v15, Ljava/io/InputStreamReader;

    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v15, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v21, 0x80

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v21, 0x2000

    move/from16 v0, v21

    new-array v4, v0, [C

    :goto_90
    invoke-virtual {v15, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v13

    if-lez v13, :cond_eb

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v4, v0, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_9d
    .catch Ljava/lang/SecurityException; {:try_start_54 .. :try_end_9d} :catch_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_9d} :catch_14d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_9d} :catch_12f
    .catchall {:try_start_54 .. :try_end_9d} :catchall_15b

    goto :goto_90

    :catch_9e
    move-exception v10

    :try_start_9f
    const-string/jumbo v21, "ClipData"

    const-string/jumbo v22, "Failure opening stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_9f .. :try_end_ac} :catchall_15b

    if-eqz v17, :cond_b1

    :try_start_ae
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_158

    :cond_b1
    :goto_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v21, "content"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e2

    const-string/jumbo v21, "android.resource"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e2

    const-string/jumbo v21, "file"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_164

    :cond_e2
    const-string/jumbo v21, ""

    return-object v21

    :cond_e6
    :try_start_e6
    const-string/jumbo v21, "text/plain"

    goto/16 :goto_63

    :cond_eb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ee
    .catch Ljava/lang/SecurityException; {:try_start_e6 .. :try_end_ee} :catch_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_e6 .. :try_end_ee} :catch_14d
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ee} :catch_12f
    .catchall {:try_start_e6 .. :try_end_ee} :catchall_15b

    move-result-object v18

    if-eqz v11, :cond_119

    if-eqz p2, :cond_10d

    :try_start_f3
    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_f6
    .catch Ljava/lang/RuntimeException; {:try_start_f3 .. :try_end_f6} :catch_104
    .catch Ljava/lang/SecurityException; {:try_start_f3 .. :try_end_f6} :catch_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_f3 .. :try_end_f6} :catch_14d
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_12f
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_15b

    move-result-object v14

    if-eqz v14, :cond_ff

    :goto_f9
    if-eqz v17, :cond_fe

    :try_start_fb
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_fe} :catch_102

    :cond_fe
    :goto_fe
    return-object v14

    :cond_ff
    move-object/from16 v14, v18

    goto :goto_f9

    :catch_102
    move-exception v8

    goto :goto_fe

    :catch_104
    move-exception v9

    if-eqz v17, :cond_10a

    :try_start_107
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10b

    :cond_10a
    :goto_10a
    return-object v18

    :catch_10b
    move-exception v8

    goto :goto_10a

    :cond_10d
    :try_start_10d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_110
    .catch Ljava/lang/SecurityException; {:try_start_10d .. :try_end_110} :catch_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_10d .. :try_end_110} :catch_14d
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_12f
    .catchall {:try_start_10d .. :try_end_110} :catchall_15b

    move-result-object v21

    if-eqz v17, :cond_116

    :try_start_113
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_117

    :cond_116
    :goto_116
    return-object v21

    :catch_117
    move-exception v8

    goto :goto_116

    :cond_119
    if-eqz p2, :cond_123

    if-eqz v17, :cond_120

    :try_start_11d
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_121

    :cond_120
    :goto_120
    return-object v18

    :catch_121
    move-exception v8

    goto :goto_120

    :cond_123
    :try_start_123
    invoke-static/range {v18 .. v18}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_126
    .catch Ljava/lang/SecurityException; {:try_start_123 .. :try_end_126} :catch_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_123 .. :try_end_126} :catch_14d
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_12f
    .catchall {:try_start_123 .. :try_end_126} :catchall_15b

    move-result-object v21

    if-eqz v17, :cond_12c

    :try_start_129
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    :cond_12c
    :goto_12c
    return-object v21

    :catch_12d
    move-exception v8

    goto :goto_12c

    :catch_12f
    move-exception v8

    :try_start_130
    const-string/jumbo v21, "ClipData"

    const-string/jumbo v22, "Failure loading text"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_144
    .catchall {:try_start_130 .. :try_end_144} :catchall_15b

    move-result-object v21

    if-eqz v17, :cond_14a

    :try_start_147
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14a} :catch_14b

    :cond_14a
    :goto_14a
    return-object v21

    :catch_14b
    move-exception v8

    goto :goto_14a

    :catch_14d
    move-exception v7

    if-eqz v17, :cond_b1

    :try_start_150
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_155

    goto/16 :goto_b1

    :catch_155
    move-exception v8

    goto/16 :goto_b1

    :catch_158
    move-exception v8

    goto/16 :goto_b1

    :catchall_15b
    move-exception v21

    if-eqz v17, :cond_161

    :try_start_15e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_162

    :cond_161
    :goto_161
    throw v21

    :catch_162
    move-exception v8

    goto :goto_161

    :cond_164
    if-eqz p2, :cond_179

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    return-object v21

    :cond_179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    return-object v21

    :cond_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c0

    if-eqz p2, :cond_1ab

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    return-object v21

    :cond_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;->uriToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    return-object v21

    :cond_1c0
    const-string/jumbo v21, ""

    return-object v21

    :catch_1c4
    move-exception v10

    goto/16 :goto_1b
.end method

.method private uriToHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "<a href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private uriToStyledText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/URLSpan;

    invoke-direct {v1, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method public coerceToHtmlText(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1e

    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_19

    check-cast v1, Landroid/text/Spanned;

    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_19
    invoke-static {v1}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1e
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_29
    return-object v2
.end method

.method public coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 7

    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_9

    return-object v3

    :cond_9
    invoke-virtual {p0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    :try_start_f
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_12} :catch_16

    move-result-object v2

    if-eqz v2, :cond_17

    return-object v2

    :catch_16
    move-exception v0

    :cond_17
    if-eqz v3, :cond_1a

    return-object v3

    :cond_1a
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/content/ClipData$Item;->coerceToHtmlOrStyledText(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method public coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 22

    invoke-virtual/range {p0 .. p0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_7

    return-object v16

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_cc

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    :try_start_14
    const-string/jumbo v18, "text/*"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_22} :catch_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_22} :catch_e5
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_22} :catch_e5
    .catchall {:try_start_14 .. :try_end_22} :catchall_7c

    move-result-object v5

    :goto_23
    if-eqz v5, :cond_95

    :try_start_25
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v15

    new-instance v12, Ljava/io/InputStreamReader;

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v12, v15, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_33} :catch_e2
    .catchall {:try_start_25 .. :try_end_33} :catchall_7c

    :try_start_33
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v18, 0x80

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v3, v0, [C

    :goto_42
    invoke-virtual {v12, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v10

    if-lez v10, :cond_87

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v3, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4f} :catch_50
    .catchall {:try_start_33 .. :try_end_4f} :catchall_df

    goto :goto_42

    :catch_50
    move-exception v6

    move-object v11, v12

    :goto_52
    :try_start_52
    const-string/jumbo v18, "ClipData"

    const-string/jumbo v19, "Failure loading text"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_7c

    move-result-object v18

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v18

    :catch_6d
    move-exception v8

    :try_start_6e
    const-string/jumbo v18, "ClipData"

    const-string/jumbo v19, "Failure opening stream"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_7c

    goto :goto_23

    :catchall_7c
    move-exception v18

    :goto_7d
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v18

    :cond_87
    :try_start_87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_50
    .catchall {:try_start_87 .. :try_end_8a} :catchall_df

    move-result-object v18

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v18

    :cond_95
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v18, "content"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c3

    const-string/jumbo v18, "android.resource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c3

    const-string/jumbo v18, "file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c7

    :cond_c3
    const-string/jumbo v18, ""

    return-object v18

    :cond_c7
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    :cond_cc
    invoke-virtual/range {p0 .. p0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_db

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v18

    return-object v18

    :cond_db
    const-string/jumbo v18, ""

    return-object v18

    :catchall_df
    move-exception v18

    move-object v11, v12

    goto :goto_7d

    :catch_e2
    move-exception v6

    goto/16 :goto_52

    :catch_e5
    move-exception v7

    goto/16 :goto_23
.end method

.method public getHtmlText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_11

    const-string/jumbo v0, "H:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_21

    const-string/jumbo v0, "T:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_21
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_31

    const-string/jumbo v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_31
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_45

    const-string/jumbo v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_10

    :cond_45
    const-string/jumbo v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10
.end method

.method public toShortSummaryString(Ljava/lang/StringBuilder;)V
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "HTML"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    const-string/jumbo v0, "TEXT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_17
    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_27

    const-string/jumbo v0, "U:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_27
    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "I:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    goto :goto_b

    :cond_3b
    const-string/jumbo v0, "NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ClipData.Item { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
