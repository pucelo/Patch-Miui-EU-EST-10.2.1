.class public abstract Lcom/miui/joyose/JoyoseManager;
.super Ljava/lang/Object;
.source "JoyoseManager.java"


# static fields
.field public static final EXTRA_CUR_PLACE:Ljava/lang/String; = "cur_place"

.field public static final EXTRA_CUR_STATE:Ljava/lang/String; = "cur_state"

.field public static final EXTRA_PRE_STATE:Ljava/lang/String; = "pre_state"

.field public static final SCENE_IN_CYCLE_MODE:J = 0x8L

.field public static final SCENE_IN_HOME_MODE:J = 0x2L

.field public static final SCENE_IN_UNIT_MODE:J = 0x4L

.field public static final SCENE_SLEEP_MODE:J = 0x1L

.field public static final SLEEP_MODE_CHANGE_ACTION:Ljava/lang/String; = "action_sleep_state_changed"

.field public static final SLEEP_MODE_STATE_DEEP_SLEEP:I = 0x3

.field public static final SLEEP_MODE_STATE_LIGHT_EXIT_SLEEP:I = 0x4

.field public static final SLEEP_MODE_STATE_LIGHT_SLEEP:I = 0x2

.field public static final SLEEP_MODE_STATE_NO_SLEEP:I = 0x1

.field public static final SLEEP_MODE_STATE_UNKNOW:I = 0x0

.field public static final USER_IN_HOME:I = 0x1

.field public static final USER_IN_UNIT:I = 0x2

.field public static final USER_PLACE_CHANGE_ACTION:Ljava/lang/String; = "action_user_place_changed"

.field public static final USER_UNCERTAIN_IN_HOME:I = 0x4

.field public static final USER_UNCERTAIN_IN_UNIT:I = 0x8

.field public static final USER_UNKNOW_PLACE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSceneWorkState(J)Z
    .registers 4

    invoke-static {p1, p2}, Lcom/miui/joyose/JoyoseProxy;->checkSceneWorkState(J)Z

    move-result v0

    return v0
.end method

.method public getJoyoseSupportSceneList(Landroid/content/Context;)J
    .registers 4

    invoke-static {p1}, Lcom/miui/joyose/JoyoseProxy;->getJoyoseSupportSceneList(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method
