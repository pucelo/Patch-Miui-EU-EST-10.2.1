.class final Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 20

    const/4 v14, 0x0

    aget-object v5, p1, v14

    check-cast v5, Ljava/util/List;

    const/4 v14, 0x1

    aget-object v6, p1, v14

    check-cast v6, Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v14}, Landroid/widget/ActivityChooserModel;->-get1(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v6, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_17} :catch_86

    move-result-object v4

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v13

    const/4 v14, 0x0

    :try_start_1d
    invoke-interface {v13, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v14, "historical-records"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v12, :cond_a4

    const/4 v14, 0x0

    invoke-interface {v5, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    const-string/jumbo v14, "historical-record"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "activity"

    iget-object v15, v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "time"

    iget-wide v0, v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "weight"

    iget v15, v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "historical-record"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_83} :catch_12b
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_83} :catch_f5
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_83} :catch_bf
    .catchall {:try_start_1d .. :try_end_83} :catchall_163

    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    :catch_86
    move-exception v3

    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get0()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v14, 0x0

    return-object v14

    :cond_a4
    :try_start_a4
    const-string/jumbo v14, "historical-records"

    const/4 v15, 0x0

    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_ae
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a4 .. :try_end_ae} :catch_12b
    .catch Ljava/lang/IllegalStateException; {:try_start_a4 .. :try_end_ae} :catch_f5
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ae} :catch_bf
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_163

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    if-eqz v4, :cond_bb

    :try_start_b8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bd

    :cond_bb
    :goto_bb
    const/4 v14, 0x0

    return-object v14

    :catch_bd
    move-exception v2

    goto :goto_bb

    :catch_bf
    move-exception v9

    :try_start_c0
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get0()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/ActivityChooserModel;->-get2(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e5
    .catchall {:try_start_c0 .. :try_end_e5} :catchall_163

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    if-eqz v4, :cond_bb

    :try_start_ef
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3

    goto :goto_bb

    :catch_f3
    move-exception v2

    goto :goto_bb

    :catch_f5
    move-exception v10

    :try_start_f6
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get0()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/ActivityChooserModel;->-get2(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11b
    .catchall {:try_start_f6 .. :try_end_11b} :catchall_163

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    if-eqz v4, :cond_bb

    :try_start_125
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_129

    goto :goto_bb

    :catch_129
    move-exception v2

    goto :goto_bb

    :catch_12b
    move-exception v8

    :try_start_12c
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get0()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error writing historical recrod file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/ActivityChooserModel;->-get2(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_151
    .catchall {:try_start_12c .. :try_end_151} :catchall_163

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    if-eqz v4, :cond_bb

    :try_start_15b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_160

    goto/16 :goto_bb

    :catch_160
    move-exception v2

    goto/16 :goto_bb

    :catchall_163
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    if-eqz v4, :cond_172

    :try_start_16f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_173

    :cond_172
    :goto_172
    throw v14

    :catch_173
    move-exception v2

    goto :goto_172
.end method
