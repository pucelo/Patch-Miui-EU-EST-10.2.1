.class Lmiui/security/WakePathChecker$WakePathRuleData;
.super Ljava/lang/Object;
.source "WakePathChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/WakePathChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakePathRuleData"
.end annotation


# instance fields
.field mAllowedStartActivityRulesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakePathRuleInfosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakePathWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/security/WakePathChecker;


# direct methods
.method constructor <init>(Lmiui/security/WakePathChecker;)V
    .registers 6

    const/4 v3, 0x4

    iput-object p1, p0, Lmiui/security/WakePathChecker$WakePathRuleData;->this$0:Lmiui/security/WakePathChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_19

    iget-object v1, p0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_19
    return-void
.end method
