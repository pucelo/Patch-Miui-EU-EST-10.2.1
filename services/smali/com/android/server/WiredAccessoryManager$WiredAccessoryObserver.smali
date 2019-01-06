.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    }
.end annotation


# instance fields
.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    return-void
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    const/16 v8, 0x10

    const/4 v7, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->-get3(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v1

    if-nez v1, :cond_26

    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "h2w"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x20

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_26
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "usb_audio"

    const/4 v3, 0x4

    const/16 v4, 0x8

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3c
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "hdmi_audio"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_51
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "soc:qcom,msm-ext-disp"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_66
    return-object v6

    :cond_67
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "This kernel does not have wired headset support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_72
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "This kernel does not have usb audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_7d
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "hdmi"

    move-object v1, p0

    move v3, v8

    move v4, v7

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V

    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_93
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "This kernel does not have HDMI audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :cond_9e
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "This kernel does not have DP audio support"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_68

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uei.getDevPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uevent.getDevPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->-get1(Lcom/android/server/WiredAccessoryManager;)I

    move-result v3

    invoke-virtual {v1, v3, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->-wrap2(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    return-void

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_68
    return-void
.end method


# virtual methods
.method init()V
    .registers 13

    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v8}, Lcom/android/server/WiredAccessoryManager;->-get2(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_7
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "init()"

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x400

    new-array v0, v8, [C

    const/4 v5, 0x0

    :goto_16
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_87

    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_63

    :try_start_26
    new-instance v4, Ljava/io/FileReader;

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v10, 0x400

    invoke-virtual {v4, v0, v8, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_54

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_54} :catch_66
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_54} :catch_57
    .catchall {:try_start_26 .. :try_end_54} :catchall_63

    :cond_54
    :goto_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :catch_57
    move-exception v3

    :try_start_58
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, ""

    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_63

    goto :goto_54

    :catchall_63
    move-exception v8

    monitor-exit v9

    throw v8

    :catch_66
    move-exception v2

    :try_start_67
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " not found while attempting to determine initial switch state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_67 .. :try_end_86} :catchall_63

    goto :goto_54

    :cond_87
    monitor-exit v9

    const/4 v5, 0x0

    :goto_89
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_b7

    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DEVPATH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_89

    :cond_b7
    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 24

    const-string/jumbo v20, "DEVPATH"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v20, "NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    if-nez v15, :cond_25

    const-string/jumbo v20, "SWITCH_NAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_25
    :try_start_25
    const-string/jumbo v20, "soc:qcom,msm-ext-disp"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_91

    const-string/jumbo v20, "STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v14

    :goto_41
    move/from16 v0, v16

    if-ge v0, v14, :cond_7a

    const/16 v20, 0x3d

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    move/from16 v0, v16

    if-le v9, v0, :cond_8e

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v20, "DP"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8e

    add-int/lit8 v20, v9, 0x1

    add-int/lit8 v21, v9, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_79} :catch_a1

    move-result v17

    :cond_7a
    :goto_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/WiredAccessoryManager;->-get2(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    :try_start_85
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v15, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_139

    monitor-exit v20

    return-void

    :cond_8e
    add-int/lit8 v16, v9, 0x3

    goto :goto_41

    :cond_91
    :try_start_91
    const-string/jumbo v20, "SWITCH_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_9f} :catch_a1

    move-result v17

    goto :goto_7a

    :catch_a1
    move-exception v5

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "couldn\'t get state from event, checking node"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    :goto_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_135

    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v3, v0, [C

    const/4 v13, 0x0

    :try_start_dc
    new-instance v10, Ljava/io/FileReader;

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v3, v0, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v13

    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_dc .. :try_end_f6} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_f6} :catch_10b

    :goto_f6
    :try_start_f6
    new-instance v20, Ljava/lang/String;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v3, v1, v13}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_108
    .catch Ljava/lang/NumberFormatException; {:try_start_f6 .. :try_end_108} :catch_128

    move-result v17

    goto/16 :goto_7a

    :catch_10b
    move-exception v7

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f6

    :catch_11b
    move-exception v6

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "file not found"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    :catch_128
    move-exception v8

    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "could not convert to number"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    :cond_135
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_ad

    :catchall_139
    move-exception v21

    monitor-exit v20

    throw v21
.end method
