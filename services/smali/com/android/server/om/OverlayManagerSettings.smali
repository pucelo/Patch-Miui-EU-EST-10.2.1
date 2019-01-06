.class final Lcom/android/server/om/OverlayManagerSettings;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerSettings$BadKeyException;,
        Lcom/android/server/om/OverlayManagerSettings$Serializer;,
        Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_om_OverlayManagerSettings-mthref-0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .registers 2

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_om_OverlayManagerSettings-mthref-1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .registers 2

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_om_OverlayManagerSettings-mthref-2()Landroid/util/ArrayMap;
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method static synthetic -com_android_server_om_OverlayManagerSettings-mthref-3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .registers 2

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    return v0
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic lambda$-com_android_server_om_OverlayManagerSettings_19551(ILcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic lambda$-com_android_server_om_OverlayManagerSettings_19778(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_om_OverlayManagerSettings_6314(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private select(Ljava/lang/String;I)I
    .registers 7

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_25

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p2, :cond_22

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    return v1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    const/4 v3, -0x1

    return v3
.end method

.method private selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/stream/Stream",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$3;

    invoke-direct {v1, p1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$3;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private selectWhereUser(I)Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/stream/Stream",
            "<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$4;

    invoke-direct {v1, p1}, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 8

    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v4, "  "

    invoke-direct {v3, p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo v4, "Settings"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    const-string/jumbo v4, "<none>"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_ca

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v4, "mPackageName.......: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "mUserId............: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v4, "mTargetPackageName.: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "mBaseCodePath......: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap8(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "mState.............: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v4

    invoke-static {v4}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "mIsEnabled.........: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v4, "mIsStatic..........: "

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_27

    :cond_ca
    return-void
.end method

.method getEnabled(Ljava/lang/String;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_c

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap1(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v1

    return v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_c

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap0(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;

    move-result-object v1

    return-object v1
.end method

.method getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereTarget(Ljava/lang/String;I)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$INST$0:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getOverlaysForUser(I)Landroid/util/ArrayMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->selectWhereUser(I)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$INST$1:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;->$INST$2:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk;

    sget-object v2, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$1;->$INST$0:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$1;

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    return-object v0
.end method

.method getState(Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_c

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap6(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v1

    return v1
.end method

.method getUsers()[I
    .registers 3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$2;->$INST$0:Lcom/android/server/om/-$Lambda$VuwDBWerAG9B6xB4Rr4-FeDL3jk$2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V
    .registers 18

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    if-eqz p5, :cond_4b

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    :goto_1a
    if-ltz v8, :cond_32

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v9}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get2(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {v9}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-get4(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    move/from16 v0, p6

    if-gt v2, v0, :cond_42

    :cond_32
    add-int/lit8 v10, v8, 0x1

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v10, v2, :cond_45

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_41
    return-void

    :cond_42
    add-int/lit8 v8, v8, -0x1

    goto :goto_1a

    :cond_45
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_41

    :cond_4b
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41
.end method

.method persist(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V

    return-void
.end method

.method remove(Ljava/lang/String;I)Z
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_8

    return v1

    :cond_8
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method removeUser(I)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap7(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v3

    if-ne v3, p1, :cond_20

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_23
    return v2
.end method

.method restore(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    return-void
.end method

.method setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_c

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap3(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method setEnabled(Ljava/lang/String;IZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_c

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap4(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z

    move-result v1

    return v1
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_12

    :cond_11
    return v3

    :cond_12
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    return v2
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_8

    return v3

    :cond_8
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    return v2
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    const/4 v5, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    return v5

    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_f

    return v5

    :cond_f
    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_16

    return v5

    :cond_16
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap9(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    return v5

    :cond_35
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eq v1, v2, :cond_47

    const/4 v4, 0x1

    :goto_46
    return v4

    :cond_47
    move v4, v5

    goto :goto_46
.end method

.method setState(Ljava/lang/String;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->select(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_c

    new-instance v1, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;

    invoke-direct {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings$BadKeyException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v1, p3}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->-wrap5(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z

    move-result v1

    return v1
.end method
