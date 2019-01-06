.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$1;,
        Landroid/service/notification/ZenModeConfig$Diff;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;,
        Landroid/service/notification/ZenModeConfig$ZenRule;
    }
.end annotation


# static fields
.field private static final ALLOW_ATT_ALARM:Ljava/lang/String; = "alarm"

.field private static final ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final ALLOW_ATT_LIGHT:Ljava/lang/String; = "light"

.field private static final ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final ALLOW_ATT_MUSIC:Ljava/lang/String; = "music"

.field private static final ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final ALLOW_ATT_SCREEN_OFF:Ljava/lang/String; = "visualScreenOff"

.field private static final ALLOW_ATT_SCREEN_ON:Ljava/lang/String; = "visualScreenOn"

.field private static final ALLOW_ATT_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final ALL_DAYS:[I

.field private static final AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final CONDITION_TAG:Ljava/lang/String; = "condition"

.field public static final COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_MINUTES:I = 0x5a0

.field private static final DEFAULT_ALLOW_CALLS:Z = true

.field private static final DEFAULT_ALLOW_EVENTS:Z = false

.field private static final DEFAULT_ALLOW_MESSAGES:Z = false

.field private static final DEFAULT_ALLOW_REMINDERS:Z = true

.field private static final DEFAULT_ALLOW_REPEAT_CALLERS:Z = false

.field private static final DEFAULT_ALLOW_SCREEN_OFF:Z = true

.field private static final DEFAULT_ALLOW_SCREEN_ON:Z = true

.field private static final DEFAULT_SOURCE:I = 0x1

.field public static final EVENT_PATH:Ljava/lang/String; = "event"

.field public static final IS_ALARM_PATH:Ljava/lang/String; = "alarm"

.field private static final MANUAL_TAG:Ljava/lang/String; = "manual"

.field public static final MAX_SOURCE:I

.field private static final MINUTES_MS:I = 0xea60

.field public static final MINUTE_BUCKETS:[I

.field private static final RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final RULE_ATT_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field private static final RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final RULE_ATT_ENABLER:Ljava/lang/String; = "enabler"

.field private static final RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final RULE_ATT_SNOOZING:Ljava/lang/String; = "snoozing"

.field private static final RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final SECONDS_MS:I = 0x3e8

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SOURCE_VIP:I = 0x3

.field public static final SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static TAG:Ljava/lang/String; = null

.field public static final WEEKEND_DAYS:[I

.field public static final WEEKNIGHT_DAYS:[I

.field private static final XML_VERSION:I = 0x2

.field private static final ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field public static final ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public allowAlarm:Z

.field public allowCalls:Z

.field public allowCallsFrom:I

.field public allowEvents:Z

.field public allowLight:Z

.field public allowMessages:Z

.field public allowMessagesFrom:I

.field public allowMusic:Z

.field public allowReminders:Z

.field public allowRepeatCallers:Z

.field public allowVibrate:Z

.field public allowWhenScreenOff:Z

.field public allowWhenScreenOn:Z

.field public automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public user:I


# direct methods
.method static synthetic -wrap0([I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x7

    const/4 v2, 0x3

    const/4 v1, 0x2

    const-string/jumbo v0, "ZenModeConfig"

    sput-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_34

    move v0, v1

    :goto_d
    sput v0, Landroid/service/notification/ZenModeConfig;->MAX_SOURCE:I

    new-array v0, v5, [I

    fill-array-data v0, :array_36

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    const/4 v0, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x5

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    const/4 v0, 0x6

    filled-new-array {v0, v5}, [I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKEND_DAYS:[I

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_34
    move v0, v2

    goto :goto_d

    :array_36
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 11

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iput-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iput v6, p0, Landroid/service/notification/ZenModeConfig;->user:I

    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_ad

    move v4, v5

    :goto_27
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_b0

    move v4, v5

    :goto_30
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_b3

    move v4, v5

    :goto_39
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_b5

    move v4, v5

    :goto_42
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_b7

    move v4, v5

    :goto_4b
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_b9

    move v4, v5

    :goto_54
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_bb

    move v4, v5

    :goto_5d
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_bd

    move v4, v5

    :goto_66
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_bf

    move v4, v5

    :goto_6f
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_c1

    new-array v1, v2, [Ljava/lang/String;

    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    sget-object v4, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    const/4 v0, 0x0

    :goto_9f
    if-ge v0, v2, :cond_c1

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    aget-object v7, v1, v0

    aget-object v8, v3, v0

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    :cond_ad
    move v4, v6

    goto/16 :goto_27

    :cond_b0
    move v4, v6

    goto/16 :goto_30

    :cond_b3
    move v4, v6

    goto :goto_39

    :cond_b5
    move v4, v6

    goto :goto_42

    :cond_b7
    move v4, v6

    goto :goto_4b

    :cond_b9
    move v4, v6

    goto :goto_54

    :cond_bb
    move v4, v6

    goto :goto_5d

    :cond_bd
    move v4, v6

    goto :goto_66

    :cond_bf
    move v4, v6

    goto :goto_6f

    :cond_c1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_d3

    move v4, v5

    :goto_c8
    iput-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_d5

    :goto_d0
    iput-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    return-void

    :cond_d3
    move v4, v6

    goto :goto_c8

    :cond_d5
    move v5, v6

    goto :goto_d0
.end method

.method private static addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;",
            "Landroid/util/ArrayMap",
            "<TT;*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    return-void
.end method

.method private diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .registers 12

    new-instance v2, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    if-nez p1, :cond_12

    const-string/jumbo v7, "config"

    const-string/jumbo v8, "delete"

    invoke-static {v2, v7, v8}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v7

    return-object v7

    :cond_12
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->user:I

    iget v8, p1, Landroid/service/notification/ZenModeConfig;->user:I

    if-eq v7, v8, :cond_2a

    const-string/jumbo v7, "user"

    iget v8, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_2a
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eq v7, v8, :cond_42

    const-string/jumbo v7, "allowCalls"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_42
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eq v7, v8, :cond_5a

    const-string/jumbo v7, "allowRepeatCallers"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_5a
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eq v7, v8, :cond_72

    const-string/jumbo v7, "allowMessages"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_72
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v8, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eq v7, v8, :cond_8a

    const-string/jumbo v7, "allowCallsFrom"

    iget v8, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_8a
    iget v7, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v8, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-eq v7, v8, :cond_a2

    const-string/jumbo v7, "allowMessagesFrom"

    iget v8, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_a2
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eq v7, v8, :cond_ba

    const-string/jumbo v7, "allowReminders"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_ba
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eq v7, v8, :cond_d2

    const-string/jumbo v7, "allowEvents"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_d2
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    if-eq v7, v8, :cond_ea

    const-string/jumbo v7, "allowWhenScreenOff"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_ea
    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    iget-boolean v8, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    if-eq v7, v8, :cond_102

    const-string/jumbo v7, "allowWhenScreenOn"

    iget-boolean v8, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p1, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_102
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v7}, Landroid/service/notification/ZenModeConfig;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_116
    if-ge v4, v0, :cond_15b

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_157

    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    :goto_12a
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_159

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    :goto_136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "automaticRule["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v3, v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_116

    :cond_157
    const/4 v3, 0x0

    goto :goto_12a

    :cond_159
    const/4 v6, 0x0

    goto :goto_136

    :cond_15b
    const-string/jumbo v7, "manualRule"

    iget-object v8, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$ZenRule;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-object v2
.end method

.method public static diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .registers 5

    if-nez p0, :cond_13

    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    if-eqz p1, :cond_12

    const-string/jumbo v1, "config"

    const-string/jumbo v2, "insert"

    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->-wrap0(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    :cond_12
    return-object v0

    :cond_13
    invoke-direct {p0, p1}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v1

    return-object v1
.end method

.method private static generateMinuteBuckets()[I
    .registers 6

    const/16 v4, 0xf

    const/4 v5, 0x2

    const/16 v2, 0xc

    new-array v0, v4, [I

    const/4 v3, 0x0

    aput v4, v0, v3

    const/16 v3, 0x1e

    const/4 v4, 0x1

    aput v3, v0, v4

    const/16 v3, 0x2d

    aput v3, v0, v5

    const/4 v1, 0x1

    :goto_14
    const/16 v3, 0xc

    if-gt v1, v3, :cond_21

    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x3c

    aput v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_21
    return-object v0
.end method

.method private static getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;
    .registers 23

    if-nez p1, :cond_6

    const-string/jumbo v3, ""

    return-object v3

    :cond_6
    const-string/jumbo v15, ""

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_29

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v3, :cond_50

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_29
    :goto_29
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_35
    :goto_35
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a0

    iget-object v15, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_35

    :cond_50
    if-nez v11, :cond_5c

    const v3, 0x10406ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_29

    :cond_5c
    invoke-static {v11}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v4

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_87

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v16, v4, v12

    move-wide/from16 v0, v16

    long-to-float v3, v0

    const v6, 0x476a6000    # 60000.0f

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p4

    invoke-static/range {v3 .. v8}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v10

    :cond_87
    if-nez v10, :cond_96

    const-string/jumbo v14, ""

    :goto_8c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9e

    const-string/jumbo v15, ""

    goto :goto_29

    :cond_96
    if-eqz p3, :cond_9b

    iget-object v14, v10, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_8c

    :cond_9b
    iget-object v14, v10, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto :goto_8c

    :cond_9e
    move-object v15, v14

    goto :goto_29

    :cond_a0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    iget-object v7, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x10406ec

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_35

    :cond_b8
    return-object v15
.end method

.method public static getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEventConditionProvider()Landroid/content/ComponentName;
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-string/jumbo v2, "EventConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;
    .registers 10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_2c

    const-string/jumbo v2, "EEE "

    :goto_a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, p4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "Hm"

    :goto_17
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :cond_2c
    const-string/jumbo v2, ""

    goto :goto_a

    :cond_30
    const-string/jumbo v2, "hma"

    goto :goto_17
.end method

.method private static getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1c} :catch_20

    move-result v5

    if-lez v5, :cond_29

    return-object v4

    :catch_20
    move-exception v0

    sget-object v5, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error loading owner caption"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    const-string/jumbo v5, ""

    return-object v5
.end method

.method public static getScheduleConditionProvider()Landroid/content/ComponentName;
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-string/jumbo v2, "ScheduleConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isToday(J)Z
    .registers 10

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2f

    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2f

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2f

    return v4

    :cond_2f
    const/4 v2, 0x0

    return v2
.end method

.method private static isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 2

    if-eqz p0, :cond_1d

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_1d

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static isValidCountdownConditionId(Landroid/net/Uri;)Z
    .registers 5

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z
    .registers 8

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2a

    const-string/jumbo v1, "alarm"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2b

    :cond_2a
    return v6

    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_39} :catch_3b

    move-result v1

    return v1

    :catch_3b
    move-exception v0

    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error parsing countdown alarm condition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6

    :cond_56
    return v6
.end method

.method public static isValidEventConditionId(Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isValidHour(I)Z
    .registers 3

    const/4 v0, 0x0

    if-ltz p0, :cond_8

    const/16 v1, 0x18

    if-ge p0, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 2

    if-eqz p0, :cond_f

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isValidMinute(I)Z
    .registers 3

    const/4 v0, 0x0

    if-ltz p0, :cond_8

    const/16 v1, 0x3c

    if-ge p0, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static isValidScheduleConditionId(Landroid/net/Uri;)Z
    .registers 2

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isValidSource(I)Z
    .registers 3

    const/4 v0, 0x0

    if-ltz p0, :cond_8

    sget v1, Landroid/service/notification/ZenModeConfig;->MAX_SOURCE:I

    if-gt p0, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static miuiChangeZenModeConfigDefault(Landroid/service/notification/ZenModeConfig;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    const/4 v2, 0x1

    const-string/jumbo v0, "calls"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const-string/jumbo v0, "music"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    const-string/jumbo v0, "alarm"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    const-string/jumbo v0, "vibrate"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    const-string/jumbo v0, "light"

    invoke-static {p1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    return-void
.end method

.method public static newRuleId()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static prioritySendersToSource(II)I
    .registers 3

    packed-switch p0, :pswitch_data_c

    return p1

    :pswitch_4
    const/4 v0, 0x1

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_a
    const/4 v0, 0x3

    return v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method public static readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;
    .registers 12

    const/4 v9, -0x1

    const/4 v10, 0x0

    const-string/jumbo v0, "id"

    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v10

    :cond_c
    const-string/jumbo v0, "summary"

    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "line1"

    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "line2"

    invoke-interface {p0, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "icon"

    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v0, "state"

    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v0, "flags"

    invoke-static {p0, v0, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    :try_start_36
    new-instance v0, Landroid/service/notification/Condition;

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3b} :catch_3c

    return-object v0

    :catch_3c
    move-exception v8

    sget-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unable to read condition xml"

    invoke-static {v0, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10
.end method

.method public static readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 8

    const/4 v4, -0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const-string/jumbo v2, "enabled"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const-string/jumbo v2, "snoozing"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    const-string/jumbo v2, "name"

    invoke-interface {p0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const-string/jumbo v2, "zen"

    invoke-interface {p0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v2, v4, :cond_4f

    sget-object v2, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bad zen mode in rule xml:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_4f
    const-string/jumbo v2, "conditionId"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string/jumbo v2, "component"

    invoke-static {p0, v2}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-string/jumbo v2, "creationTime"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v4, v5}, Landroid/service/notification/ZenModeConfig;->safeLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    const-string/jumbo v2, "enabler"

    invoke-interface {p0, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    return-object v0
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    const/4 v8, 0x0

    return-object v8

    :cond_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "zen"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    const/4 v8, 0x0

    return-object v8

    :cond_18
    new-instance v5, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig;-><init>()V

    const-string/jumbo v8, "user"

    iget v9, v5, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v5, Landroid/service/notification/ZenModeConfig;->user:I

    :cond_28
    :goto_28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_121

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_40

    const-string/jumbo v8, "zen"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    return-object v5

    :cond_40
    const/4 v8, 0x2

    if-ne v7, v8, :cond_28

    const-string/jumbo v8, "allow"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ee

    const-string/jumbo v8, "calls"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const-string/jumbo v8, "repeatCallers"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    const-string/jumbo v8, "messages"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    const-string/jumbo v8, "reminders"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    const-string/jumbo v8, "events"

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const-string/jumbo v8, "from"

    const/4 v9, -0x1

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v8, "callsFrom"

    const/4 v9, -0x1

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v8, "messagesFrom"

    const/4 v9, -0x1

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v8

    if-eqz v8, :cond_bf

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v8

    if-eqz v8, :cond_bf

    iput v1, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v4, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    :goto_a6
    const-string/jumbo v8, "visualScreenOff"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    const-string/jumbo v8, "visualScreenOn"

    const/4 v9, 0x1

    invoke-static {p0, v8, v9}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v5, p0}, Landroid/service/notification/ZenModeConfig;->miuiChangeZenModeConfigDefault(Landroid/service/notification/ZenModeConfig;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_28

    :cond_bf
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v8

    if-eqz v8, :cond_e7

    sget-object v8, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Migrating existing shared \'from\': "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v2, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_a6

    :cond_e7
    const/4 v8, 0x1

    iput v8, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v8, 0x1

    iput v8, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_a6

    :cond_ee
    const-string/jumbo v8, "manual"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ff

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v8

    iput-object v8, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto/16 :goto_28

    :cond_ff
    const-string/jumbo v8, "automatic"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    const-string/jumbo v8, "ruleId"

    const/4 v9, 0x0

    invoke-interface {p0, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    if-eqz v3, :cond_28

    if-eqz v0, :cond_28

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v8, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_28

    :cond_121
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Failed to reach END_DOCUMENT"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static safeBoolean(Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 5

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 5

    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v2

    :cond_c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static safeLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    const/4 v2, 0x0

    invoke-interface {p0, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v2

    :cond_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v2, :cond_10

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v2, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d

    :cond_10
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_1e

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v1, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_1e
    return v0
.end method

.method private static sourceToPrioritySenders(II)I
    .registers 3

    packed-switch p0, :pswitch_data_a

    return p1

    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_6
    const/4 v0, 0x1

    return v0

    :pswitch_8
    const/4 v0, 0x2

    return v0

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public static sourceToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "anyone"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "contacts"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "stars"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public static toCountdownConditionId(JZ)Landroid/net/Uri;
    .registers 5

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static toDayList([I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_9

    :cond_5
    const-string/jumbo v2, ""

    return-object v2

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_f
    array-length v2, p0

    if-ge v0, v2, :cond_21

    if-lez v0, :cond_19

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .registers 5

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "userId"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "calendar"

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    :goto_31
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "reply"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_47
    const-string/jumbo v0, ""

    goto :goto_31
.end method

.method public static toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;
    .registers 15

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v9

    invoke-static {p0, p1, p2, v9, p3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v8, v0, v5

    const v2, 0x10406ed

    invoke-virtual {v10, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v6}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/service/notification/Condition;

    const-string/jumbo v2, ""

    const-string/jumbo v4, ""

    move v7, v6

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public static toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .registers 5

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "days"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "end"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "exitAtAlarm"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-nez p1, :cond_14

    const/16 v0, 0x2710

    :goto_8
    int-to-long v8, v0

    add-long v2, v10, v8

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0

    :cond_14
    const v0, 0xea60

    mul-int/2addr v0, p1

    goto :goto_8
.end method

.method public static toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .registers 23

    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v4, v3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v4, 0x3c

    move/from16 v0, p3

    if-ge v0, v4, :cond_71

    move/from16 v14, p3

    if-eqz p5, :cond_69

    const v16, 0x1150024

    :goto_1f
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz p5, :cond_6d

    const v13, 0x1150022

    :goto_39
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, p3

    invoke-virtual {v15, v13, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v4, v9

    const v9, 0x10406ed

    invoke-virtual {v15, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_59
    const/4 v4, 0x0

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v4}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v5

    new-instance v4, Landroid/service/notification/Condition;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v11}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v4

    :cond_69
    const v16, 0x1150023

    goto :goto_1f

    :cond_6d
    const v13, 0x1150021

    goto :goto_39

    :cond_71
    const/16 v4, 0x5a0

    move/from16 v0, p3

    if-ge v0, v4, :cond_c5

    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    if-eqz p5, :cond_bd

    const v16, 0x1150020

    :goto_86
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz p5, :cond_c1

    const v13, 0x115001e

    :goto_9e
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const/4 v9, 0x1

    aput-object v12, v4, v9

    invoke-virtual {v15, v13, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v4, v9

    const v9, 0x10406ed

    invoke-virtual {v15, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_59

    :cond_bd
    const v16, 0x115001f

    goto :goto_86

    :cond_c1
    const v13, 0x115001d

    goto :goto_9e

    :cond_c5
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v4, v9

    const v9, 0x10406ed

    invoke-virtual {v15, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v6, v8

    goto :goto_59
.end method

.method public static tryParseCountdownConditionId(Landroid/net/Uri;)J
    .registers 7

    const-wide/16 v4, 0x0

    const-string/jumbo v1, "android"

    invoke-static {p0, v1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    return-wide v4

    :cond_c
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2b

    const-string/jumbo v1, "countdown"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    :cond_2b
    return-wide v4

    :cond_2c
    :try_start_2c
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_3a} :catch_3c

    move-result-wide v2

    return-wide v2

    :catch_3c
    move-exception v0

    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error parsing countdown condition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v4
.end method

.method private static tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 9

    const/4 v6, -0x1

    const/4 v5, 0x0

    if-nez p0, :cond_5

    return-object v5

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_d

    return-object v5

    :cond_d
    array-length v4, v3

    new-array v2, v4, [I

    const/4 v1, 0x0

    :goto_11
    array-length v4, v3

    if-ge v1, v4, :cond_22

    aget-object v4, v3, v1

    invoke-static {v4, v6}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_1d

    return-object v5

    :cond_1d
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_22
    return-object v2
.end method

.method public static tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .registers 9

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "condition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3c
    if-nez v0, :cond_41

    return-object v4

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3c

    :cond_41
    new-instance v1, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x2710

    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    const-string/jumbo v2, "calendar"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_70

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v2, v6, v7}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_72

    :cond_70
    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    :cond_72
    const-string/jumbo v2, "reply"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    return-object v1
.end method

.method private static tryParseHourAndMinute(Ljava/lang/String;)[I
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    return-object v3

    :cond_b
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lt v1, v7, :cond_1b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_1c

    :cond_1b
    return-object v3

    :cond_1c
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v6

    aput v2, v3, v7

    :cond_41
    return-object v3
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return p1

    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result v1

    return v1

    :catch_c
    move-exception v0

    return p1
.end method

.method private static tryParseLong(Ljava/lang/String;J)J
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-wide p1

    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-wide v2

    return-wide v2

    :catch_c
    move-exception v0

    return-wide p1
.end method

.method public static tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "condition"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v8, :cond_3d

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "schedule"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_3a
    if-nez v1, :cond_3f

    return-object v6

    :cond_3d
    const/4 v1, 0x0

    goto :goto_3a

    :cond_3f
    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v3

    const-string/jumbo v4, "end"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v3, :cond_59

    if-nez v0, :cond_5a

    :cond_59
    return-object v6

    :cond_5a
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    const-string/jumbo v4, "days"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\."

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    aget v4, v3, v7

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    aget v4, v3, v8

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    aget v4, v0, v7

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    aget v4, v0, v8

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    const-string/jumbo v4, "exitAtAlarm"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    return-object v2
.end method

.method private static tryParseZenMode(Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, p1

    goto :goto_a
.end method

.method public static writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "id"

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "summary"

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "line1"

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "line2"

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "icon"

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "flags"

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "snoozing"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_25

    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_25
    const-string/jumbo v0, "zen"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_41

    const-string/jumbo v0, "component"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_41
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_51

    const-string/jumbo v0, "conditionId"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_51
    const-string/jumbo v0, "creationTime"

    iget-wide v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_69

    const-string/jumbo v0, "enabler"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_69
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_72

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V

    :cond_72
    return-void
.end method


# virtual methods
.method public applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5d

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5f

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_61

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_63

    move v0, v1

    :goto_27
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_65

    move v0, v1

    :goto_30
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, v3}, Landroid/service/notification/ZenModeConfig;->prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5c

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_67

    move v0, v1

    :goto_52
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_69

    :goto_5a
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    :cond_5c
    return-void

    :cond_5d
    move v0, v2

    goto :goto_c

    :cond_5f
    move v0, v2

    goto :goto_15

    :cond_61
    move v0, v2

    goto :goto_1e

    :cond_63
    move v0, v2

    goto :goto_27

    :cond_65
    move v0, v2

    goto :goto_30

    :cond_67
    move v0, v2

    goto :goto_52

    :cond_69
    move v1, v2

    goto :goto_5a
.end method

.method public copy()Landroid/service/notification/ZenModeConfig;
    .registers 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/service/notification/ZenModeConfig;

    if-nez v2, :cond_6

    return v1

    :cond_6
    if-ne p1, p0, :cond_a

    const/4 v1, 0x1

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v2, v3, :cond_73

    iget v2, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v2, v3, :cond_73

    iget v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    if-ne v2, v3, :cond_73

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    if-ne v2, v3, :cond_73

    iget v2, v0, Landroid/service/notification/ZenModeConfig;->user:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->user:I

    if-ne v2, v3, :cond_73

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_73
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-nez v2, :cond_a

    return v3

    :cond_a
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_25

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-nez v2, :cond_22

    return v3

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    const/4 v2, 0x1

    return v2
.end method

.method public toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x1

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_9

    const/16 v1, 0x8

    :cond_9
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_f

    or-int/lit8 v1, v1, 0x4

    :cond_f
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v4, :cond_15

    or-int/lit8 v1, v1, 0x2

    :cond_15
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v4, :cond_1b

    or-int/lit8 v1, v1, 0x1

    :cond_1b
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v4, :cond_21

    or-int/lit8 v1, v1, 0x10

    :cond_21
    const/4 v3, 0x0

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    if-nez v4, :cond_27

    const/4 v3, 0x1

    :cond_27
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    if-nez v4, :cond_2d

    or-int/lit8 v3, v3, 0x2

    :cond_2d
    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v4, v0}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v0

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v4, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v2

    new-instance v4, Landroid/app/NotificationManager$Policy;

    invoke-direct {v4, v1, v0, v2, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowRepeatCallers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowCallsFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowMessagesFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowReminders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowWhenScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowWhenScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",automaticRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",manualRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowMusic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowAlarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowVibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",allowLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v4, :cond_8a

    move v4, v5

    :goto_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v4, :cond_8d

    move v4, v5

    :goto_f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v4, :cond_8f

    move v4, v5

    :goto_17
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eqz v4, :cond_91

    move v4, v5

    :goto_1f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v4, :cond_93

    move v4, v5

    :goto_27
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    if-eqz v4, :cond_95

    move v4, v5

    :goto_2f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    if-eqz v4, :cond_97

    move v4, v5

    :goto_37
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    if-eqz v4, :cond_99

    move v4, v5

    :goto_3f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    if-eqz v4, :cond_9b

    move v4, v5

    :goto_47
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b6

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v0, 0x0

    :goto_71
    if-ge v0, v2, :cond_9d

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v0

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_8a
    move v4, v6

    goto/16 :goto_7

    :cond_8d
    move v4, v6

    goto :goto_f

    :cond_8f
    move v4, v6

    goto :goto_17

    :cond_91
    move v4, v6

    goto :goto_1f

    :cond_93
    move v4, v6

    goto :goto_27

    :cond_95
    move v4, v6

    goto :goto_2f

    :cond_97
    move v4, v6

    goto :goto_37

    :cond_99
    move v4, v6

    goto :goto_3f

    :cond_9b
    move v4, v6

    goto :goto_47

    :cond_9d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    :goto_a6
    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    if-eqz v4, :cond_ba

    move v4, v5

    :goto_ab
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    if-eqz v4, :cond_bc

    :goto_b2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_b6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a6

    :cond_ba
    move v4, v6

    goto :goto_ab

    :cond_bc
    move v5, v6

    goto :goto_b2
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const-string/jumbo v4, "zen"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "user"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "allow"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "calls"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "repeatCallers"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "messages"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "reminders"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "events"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "music"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowMusic:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "alarm"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowAlarm:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "vibrate"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowVibrate:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "light"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowLight:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "callsFrom"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "messagesFrom"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "visualScreenOff"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOff:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "visualScreenOn"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowWhenScreenOn:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "allow"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_db

    const-string/jumbo v4, "manual"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v4, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "manual"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_db
    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_e2
    if-ge v2, v0, :cond_10c

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string/jumbo v4, "automatic"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "ruleId"

    invoke-interface {p1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v1, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "automatic"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_e2

    :cond_10c
    const-string/jumbo v4, "zen"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
